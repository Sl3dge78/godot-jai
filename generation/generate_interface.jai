
#load "../common.jai";

#run {
    set_build_options_dc(.{do_output=false});
    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
    }
}

generate_bindings :: () -> bool {
    output_filename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;
        output_filename  = "../generated/gdextension_interface.jai";
        strip_flags = 0;
        array_add(*source_files, "../headers/gdextension_interface.h");
        generate_compile_time_struct_checks = false;
        header = HEADER;
        array_add(*strip_prefixes, "GDExtension");
        // try_to_preserve_comments = false;
        mimic_spacing_flags = .GLOBAL;
    }
    opts.visitor = gd_visitor;

    file_delete(all_interface_functions);
    generated_result, success := generate_bindings(opts, true);
    if !success return false;

    t := read_entire_file(all_interface_functions);
    append_loaders(*generated_result, split(t, "\n"));
    file_delete(all_interface_functions);

    success = write_entire_file(output_filename, *generated_result);
    if !success {
        log_error("Could not write generated output to \"%\"\n", output_filename);
        return false;
    }
    log("\nOK! generated '%'\n", output_filename);
    return true;
}

all_interface_functions := "temp.txt";

gd_visitor :: (decl: *Declaration, parent_decl: *Declaration) -> Declaration_Visit_Result {
    if begins_with(decl.name, "GDExtensionInterface") {
        new_name := advance(decl.name, "GDExtension".count);
        if new_name.count != 0 {
            f := file_open(all_interface_functions, true, true);
            file_seek(f, 0, .END);
            defer file_close(*f);
            file_write(*f, new_name);
            file_write(*f, "\n");
        }
    }

    return .RECURSE;
}

append_loaders :: (builder: *String_Builder, procs: []string) {
    SKIP :: string.[
        "place_holder_script_instance_create",
        "place_holder_script_instance_update",
        "callable_custom_get_user_data",
    ];

    append(builder, "#scope_export\n");
    append(builder, "// Declarations\n");
    for procs {
        if it.count == 0 then continue;
        snake := advance(to_snake_case(it), "interface_".count);
        print_to_builder(builder, "% : %;\n", snake, it);
    }

    print_to_builder(builder, "\n");
    append(builder, "// Load\n");
    print_to_builder(builder, "load_interface_functions :: (get_proc_address: InterfaceGetProcAddress) {\n");

    for procs {
        if it.count == 0 then continue;
        snake := advance(to_snake_case(it), "interface_".count);
        if array_find(SKIP, snake) then continue;
        print_to_builder(builder, "\t% = get_proc_address(\"%\");\n", snake, snake);
    }
    print_to_builder(builder, "}\n");

}


#scope_file
#import "Basic";
#import "Compiler";
#import "Check";
#import "Bindings_Generator";
#import "File";
#import "String";
#import "Hash_Table";


HEADER :: #string END

// Translated by hand
ClassConstructor :: #type () -> ObjectPtr #c_call;
InterfaceGetProcAddress :: #type (p_function_name: *u8) -> *void #c_call;
InitializationFunction :: #type (p_get_proc_address: InterfaceGetProcAddress, p_library: ClassLibraryPtr, r_initialization: *Initialization) -> Bool #c_call;

wchar_t :: u16;

// Automatic translation
END
