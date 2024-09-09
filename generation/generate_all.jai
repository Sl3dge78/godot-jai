
// Generation of the extension api depends on the interface api, so we need to generate them in two steps

#import "Compiler";
#import "Process";

#run {
    set_build_options_dc(.{do_output=false});
    run_command("jai", "generate_interface.jai");
    run_command("jai", "generate_extension_api.jai");
}