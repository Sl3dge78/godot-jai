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
    }
    return 1;
}

initialize :: (data: *void, level: InitializationLevel) #c_call {
    push_context cast(*Context)data {
        if level != .INITIALIZATION_SCENE return; 
        register_class(JaiClass);
    }
}

deinitialize :: (data: *void, level: InitializationLevel) #c_call {
    push_context cast(*Context)data {
    }
}

JaiClass :: struct {
    base: Node2D; @Base // @Base to mark this member as its' base class

    _enter_tree :: (self: *JaiClass) {
        print_to_godot("Hello from jai!");
    }

    // _process :: (self: *JaiClass, delta: float) {
    //     print_to_godot("Process!");
    // }

}

to_variant :: (val: float) -> Variant {
    result: Variant = ---;
    variant_from_float(*result, *val);
    return result;
}
