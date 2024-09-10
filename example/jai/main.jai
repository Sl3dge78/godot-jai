#import "Basic";

#import "godot-jai";
#load "helpers.jai";

// Initialization code (could be automated)

#program_export
jai_entry :: (p_get_proc_address: InterfaceGetProcAddress, p_library: ClassLibraryPtr, r_initialization: *Initialization) -> Bool #c_call {
    r_initialization.userdata = *__context;
    r_initialization.initialize = initialize;
    r_initialization.deinitialize = deinitialize;
    push_context __context {
        register_library(p_library);
        load_all_procedures(p_get_proc_address);
        print_to_godot("Init!");
    }
    return 1;
}

initialize :: (data: *void, level: InitializationLevel) #c_call {
    push_context cast(*Context)data {
        if level != .INITIALIZATION_SCENE return; 
        register_class(JaiClass); // Declare our type to Godot
    }
}

deinitialize :: (data: *void, level: InitializationLevel) #c_call {
    push_context cast(*Context)data {
    }
}

// #insert #run generate_wrapper(JaiClass__process); // Generate wrappers for our "methods"
#insert #run generate_wrapper(JaiClass__enter_tree);

JaiClass :: struct {
    base: Node2D; @Base // @Base to mark this member as its' base class

    __process :: (self: *JaiClass, delta: float) {
        print_to_godot("Process!");
    }

    __enter_tree :: (self: *JaiClass) {
        print_to_godot("Enter tree!");
    }
}


// JaiClass__process_wrapper :: (p_instance: ClassInstancePtr, p_args: *ConstTypePtr, r_ret: TypePtr) -> void #c_call {
//     args : []*void = ---;
//     args.count = 1; // @Hardcoded
//     args.data = p_args;
//     push_context __context {
//         JaiClass__process(p_instance, (cast(*float)args[0]).*);
//     }
//     r_ret = null;
// }

// JaiClass__enter_tree_ptr_wrapper :: (p_instance: ClassInstancePtr, p_args: *ConstTypePtr, r_ret: TypePtr) -> void #c_call {
//     args : []*void = ---;
//     args.count = 0; // @Hardcoded
//     args.data = p_args;
//     push_context __context {
//         JaiClass__enter_tree(p_instance);//  , (cast(*float)args[0]).*);
//     }
//     r_ret = null;
// }

// register_method :: () {

//     method_name := new_string_name("_process");
//     arg_name := new_string_name("delta");
//     arg_class_name := new_string_name("float");
//     hint_string := new_string("Hint!");

//     arg_info := PropertyInfo.[
//         .{
//             type = .FLOAT,
//             name = *arg_name,
//             class_name = *arg_class_name,
//             hint = 0, // xx .PROPERTY_HINT_NONE,
//             hint_string = *hint_string,
//             usage = 0, // .PROPERTY_USAGE_NONE,
//         },
//     ];
//     arg_metadata := ClassMethodArgumentMetadata.[
//         0
//     ];
//     call_func: ClassMethodCall = null; // xx GDExample__process_wrapper;
//     ptrcall_func: ClassMethodPtrCall = null // xx GDExample__process_wrapper_ptr;

//     method_info := ClassMethodInfo.{
//         name = *method_name,
//         method_userdata = null,
//         call_func = call_func,
//         ptrcall_func = ptrcall_func,
//         method_flags = xx ClassMethodFlags.FLAG_NORMAL,

//         has_return_value = 0,
//         return_value_info = null,
//         return_value_metadata = .NONE,

//         argument_count = arg_info.count,
//         arguments_info = arg_info.data,
//         arguments_metadata = arg_metadata.data,

//         default_argument_count = 0,
//         default_arguments = null,
//     };
//     class_name := new_string_name("GDExample");
//     classdb_register_extension_class_method(_library, *class_name, *method_info);
//     print_to_godot("Method registered");
// }

// Node2D_set_rotation :: (self: *Node2D, radians: float) {
//     class_name := new_string_name("Node2D");
//     defer destroy(*class_name);
//     method_name := new_string_name("set_rotation");
//     defer destroy(*method_name);
//     method_bind := classdb_get_method_bind(*class_name, *method_name, 373806689);
//     arg1 := to_variant(radians);
//     args := Variant.[
//         arg1
//     ];
//     // defer destroy(*arg1);

//     ret : Variant;
//     error : CallError;
//     object_method_bind_call(method_bind, self.__private, xx args.data, args.count, *ret, *error);
//     print_to_godot("Ok!");
// }

to_variant :: (val: float) -> Variant {
    result: Variant = ---;
    variant_from_float(*result, *val);
    return result;
}

// typedef GDExtensionMethodBindPtr (*GDExtensionInterfaceClassdbGetMethodBind)(GDExtensionConstStringNamePtr p_classname, GDExtensionConstStringNamePtr p_methodname, GDExtensionInt p_hash);

// typedef void (*GDExtensionInterfaceObjectMethodBindCall)(GDExtensionMethodBindPtr p_method_bind, GDExtensionObjectPtr p_instance, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_arg_count, GDExtensionUninitializedVariantPtr r_ret, GDExtensionCallError *r_error);

// typedef void (*GDExtensionInterfaceClassdbRegisterExtensionClassMethod)(GDExtensionClassLibraryPtr p_library, GDExtensionConstStringNamePtr p_class_name, const GDExtensionClassMethodInfo *p_method_info);