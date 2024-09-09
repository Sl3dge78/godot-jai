#import "Compiler";

#run {
    w := compiler_create_workspace();

    options := get_build_options(w);
    options.output_type = .DYNAMIC_LIBRARY;
    options.output_executable_name = "gd_jai";
    options.output_path = "jai/";
    options.emit_debug_info = .DEFAULT;
    options.runtime_support_definitions = .OMIT;
    options.backtrace_on_crash = .OFF;
    set_optimization(*options, .DEBUG);
    set_build_options(options, w);

    add_build_file("jai/main.jai", w);

    // options.output_path = "

    set_build_options_dc(.{ do_output = false});

}