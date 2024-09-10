#import "Basic";

// This file contains code written by hand to facilitate API usage

_library: ClassLibraryPtr;
__context : Context;

register_library :: (lib: ClassLibraryPtr) {
    _library = lib;
}

INITIALIZATION_CODE :: #string __END
_library: ClassLibraryPtr;
__context : Context;

#program_export
jai_entry :: (p_get_proc_address: InterfaceGetProcAddress, p_library: ClassLibraryPtr, r_initialization: *Initialization) -> Bool #c_call {
    r_initialization.userdata = *__context;
    r_initialization.initialize = initialize;
    r_initialization.deinitialize = deinitialize;
    _library = p_library;
    push_context __context {
        load_interface_functions(p_get_proc_address);
        load_all_methods();
        load_all_utility_functions();
        print_to_godot("Init!");
    }
    return 1;
}

initialize :: (data: *void, level: InitializationLevel) #c_call {
    #if INIT_FUNC != null {
        push_context cast(*Context)data {
            INIT_FUNC(level);
        }
    }
}

deinitialize :: (data: *void, level: InitializationLevel) #c_call {
    #if DEINIT_FUNC != null {
        push_context cast(*Context)data {
            DEINIT_FUNC(level);
        }
    }
}
__END

// --------
// fn ptr loading

load_all_procedures :: (p_get_proc_address: InterfaceGetProcAddress) {
    load_interface_functions(p_get_proc_address);
    load_all_methods();
    load_all_utility_functions();
}

load_all_methods :: () {
    load_all_destructors();
    load_variant_constructors();
}

load_single_utility_func :: (name: string, hash: int) -> PtrUtilityFunction {
    str_name: StringName;
    string_name_new_with_utf8_chars_and_len(*str_name, name.data, name.count);
    defer string_name_destroy(*str_name);

    return variant_get_ptr_utility_function(*str_name, hash);
}

// --------
// Conversion
Basic :: #import "Basic";

// @TODO: #modify to validate input
to_variant :: (val: $T) -> Variant #c_call {
    result : Variant = ---;
    #if T == {
        case *String; {
            variant_from_string(*result, val);
        }
        case *StringName; {
            variant_from_string_name(*result, val);
        }
        case ConstStringNamePtr; {
            variant_from_string_name(*result, val);
        }
        case; {
            #assert false;
        }
    }
    return result;
    // #insert #run -> string { 
    //     ti := cast(*Type_Info_Struct)type_info(T);
    //     Basic.log("%", ti.name);
    //     snake_case := to_snake_case(ti.name);
    //     builder: String_Builder;
        
    //     append(*builder, "result: Variant = ---;\n");
    //     print_to_builder(*builder, "variant_from_%(*result, val);\n", snake_case);
    //     append(*builder, "return result;\n");

    //     return builder_to_string(*builder);
    // };
}

new_string_name :: (str: string) -> StringName #no_context {
    result: StringName;
    string_name_new_with_utf8_chars_and_len(*result, str.data, str.count);
    return result;
}

new_string :: (str: string) -> String #no_context {
    result : String = ---; 
    string_new_with_utf8_chars_and_len(*result, str.data, str.count);
    return result;
}

// --------
// Utils

print_to_godot :: (str: string) #c_call {
    s : String;
    string_new_with_utf8_chars(*s, str.data);
    defer destroy(*s);

    arg := to_variant(*s);
    defer variant_destroy(*arg);

    args := ConstVariantPtr.[
        *arg
    ];
    gd_print(null, args.data, args.count);
}

_set :: (p_instance: ClassInstancePtr, p_name: ConstStringNamePtr, p_value: ConstVariantPtr) -> Bool #c_call {
    print_to_godot("set");
    return 0;
}

_get :: (p_instance: ClassInstancePtr, p_name: ConstStringNamePtr, r_ret: VariantPtr) -> Bool #c_call {
    print_to_godot("get");
    return 0;
}

_get_rid :: (p_instance: ClassInstancePtr) -> u64 #c_call {
    print_to_godot("get_rid");
    return 0;
}

prop_list :: PropertyInfo.[];

_get_property_list :: (p_instance: ClassInstancePtr, r_count: *u32) -> *PropertyInfo #c_call {
    print_to_godot("get_property_list");
    r_count.* = prop_list.count;
    return prop_list.data;
}

_free_property_list :: (p_instance: ClassInstancePtr, p_list: *PropertyInfo, p_count: u32) #c_call {
    print_to_godot("_free_property_list");
}


GDExample_to_string :: (instance: *void, r_is_valid: *Bool, p_out: StringPtr) -> void #c_call {
    print_to_godot("to_string");
    name := "GDExample";
    string_new_with_utf8_chars_and_len(p_out, name.data, name.count);
    r_is_valid.* = xx true;
}

get :: (object: *Object, member: string) -> float {

}