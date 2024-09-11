// --------
// Class registration

find_base_name :: ($type: Type) -> name: string, type_name: string #compile_time {
    ti := cast(*Type_Info_Struct)type;
    for ti.members {
        if array_find(it.notes, "Base") {
            return it.name, (cast(*Type_Info_Struct)it.type).name;
        }
    }

    // TODO: Check there is only one
    assert(false, "The struct you want to register needs to have only one '#as' member");
    return "", "";
}

// Generates all base methods for a class
class_boilerplate :: ($type: Type) -> string #compile_time {
    b: String_Builder;
    ti : *Type_Info_Struct = xx type;
    type_name := ti.name;
    member_name, base_name := find_base_name(type);
    print_to_builder(*b, CREATE_FUNC, type_name, base_name, member_name);
    print_to_builder(*b, FREE_FUNC);
    print_to_builder(*b, GET_VIRTUAL_FUNC);
    return builder_to_string(*b);
}

CREATE_FUNC :: #string __END
_create :: (data: *void) -> *void #c_call {
    result : *%1 = xx mem_alloc(size_of(%1));
    base_name := new_string_name("%2");
    defer destroy(*base_name);
    result.%3.__private = classdb_construct_object(*base_name);
    name := new_string_name("%1");
    defer destroy(*name);
    object_set_instance(result.%3.__private, *name, result);
    object_set_instance_binding(result.%3.__private, _library, result, *dummy_callbacks);
    return result.%3.__private;
};
__END

FREE_FUNC :: #string __END
_free :: (data: *void, self: *void) #c_call {
    mem_free(self);
};
__END

GET_VIRTUAL_FUNC :: #string __END
_get_virtual :: (p_class_userdata: *void, p_name: ConstStringNamePtr) -> ClassCallVirtual #c_call {
    #if #exists(JaiClass__process_ptr_wrapper) {
        if StringName_casecmp_to(p_name, new_string("_process")) == 0 {
            return null;
        }
    }
    #if #exists(JaiClass__enter_tree_ptr_wrapper) {
        if StringName_casecmp_to(p_name, new_string("_enter_tree")) == 0 {
            return JaiClass__enter_tree_ptr_wrapper;
        }
    }

    return null;
};
__END

insert_method_wrappers :: ($type: Type) -> string {
    ti := cast(*Type_Info_Struct)type;
    builder: String_Builder;
    for ti.members {
        if it.type.type != .PROCEDURE then continue;
        proc : *Type_Info_Procedure = xx it.type;
    
        generate_ptr_wrapper_code(*builder, proc, it.name, ti.name);
    }
    return builder_to_string(*builder);
}

register_class :: ($type: Type) {

    // Has to be done in this order or boiler plate wont see our wrappers
    #insert #run insert_method_wrappers(type);
    #insert #run class_boilerplate(type);

    ti := cast(*Type_Info_Struct)type;
    name := new_string_name(ti.name);
    defer destroy(*name);
    member_name, base_name := #run find_base_name(type);
    parent_name := new_string_name(base_name);
    defer destroy(*parent_name);

    create_info := ClassCreationInfo3.{
        is_virtual = xx false,
        is_abstract = xx false,
        is_exposed = xx true,
        is_runtime = xx true,
        set_func = null,
        get_func = null,
        get_property_list_func = null,
        free_property_list_func = null,
        property_can_revert_func = null,
        property_get_revert_func = null,
        validate_property_func = null,
        notification_func = null,
        to_string_func = null, // GDExample_to_string,
        reference_func = null,
        unreference_func = null,
        create_instance_func = _create,
        free_instance_func = _free,
        recreate_instance_func = null,
        get_virtual_func = _get_virtual,
        get_virtual_call_data_func = null,
        call_virtual_with_data_func = null,
        get_rid_func = null,
        class_userdata = null,
    };

    classdb_register_extension_class3(_library, *name, *parent_name, *create_info);
}

dummy_callbacks :: InstanceBindingCallbacks.{
    create_callback = (p_token: *void, p_instance: *void) -> *void #c_call {
        return null;
    },
    free_callback = (p_token: *void, p_instance: *void, p_binding: *void) #c_call {

    },
    reference_callback = (p_token: *void, p_binding: *void, p_reference: Bool) -> Bool #c_call {
        return xx true;
    },
};

#import "Compiler";
generate_wrapper :: (call := #caller_code) -> string #expand {
    code := compiler_get_nodes(call);
    assert(code.kind == .IDENT, "Please pass a function name to the macro.");
    ti := code.type;
    assert(ti.type == .PROCEDURE, "Please pass a function name to the macro.");
    code_ident: *Code_Ident = xx code;

    return generate_ptr_wrapper_code(xx ti, code_ident.name);
}

generate_ptr_wrapper_code :: (builder : *String_Builder, proc: *Type_Info_Procedure, proc_name: string, class_name: string) #compile_time {
    if proc.return_types.count > 1 {
        assert(false, "Multiple return values aren't supported!");
    }

    is_const := false; // @TODO
    arg_count := ifx is_const then proc.argument_types.count else proc.argument_types.count - 1;

    print_to_builder(builder, "%_%_ptr_wrapper :: (p_instance: ClassInstancePtr, p_args: *ConstTypePtr, r_ret: TypePtr) -> void #c_call {\n", class_name, proc_name);
    if arg_count > 0 { 
        print_to_builder(builder, "\targs : []*void = ---;\n");
        print_to_builder(builder, "\targs.count = %;\n", arg_count);
        print_to_builder(builder, "\targs.data = p_args;\n");
    }
    print_to_builder(builder, "\tpush_context __context {\n");
    append(builder, "\t\t");
    if proc.return_types.count == 1 {
        print_to_builder(builder,"r_ret = ");
    }
    print_to_builder(builder, "%.%(p_instance", class_name, proc_name); // (cast(*float)args[0]).*);"
    if arg_count > 0 {
        start := ifx is_const then 0 else 1;
        for start..proc.argument_types.count - 1 {
            append(builder, ", (cast(*");
            print_type_to_builder(builder, proc.argument_types[it]);
            append(builder, ")");
            print_to_builder(builder, "args[%]).*", it);
            // print_type_to_builder(*builder, it);
        }
    }
    print_to_builder(builder, ");\n");
    print_to_builder(builder, "\t}\n");
    
    if proc.return_types.count == 0 {
        print_to_builder(builder, "\tr_ret = null;\n");
    } 

    print_to_builder(builder, "}\n");
}