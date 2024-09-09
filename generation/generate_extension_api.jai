#load "json.jai";
#load "../common.jai";

GD :: #import,file "../generated/gdextension_interface.jai";

#import "Basic";
#import "Reflection";
#import "String";

#run {
    set_build_options_dc(.{do_output=false});
    generate_json_api("../headers/extension_api.json");
}

Extension_Api :: struct {
    header : struct {
        version_major: int;
        version_minor: int;
        version_patch: int;
        version_status: string;
        version_build: string;
        version_full_name: string;
    };
    builtin_class_sizes : [] Size_Configuration;
    builtin_class_member_offsets: [] Offset_Configuration;
    global_constants: []int;
    global_enums: [] Enum_Info;
    utility_functions: [] Utility_Function;
    builtin_classes: [] Builtin_Class;
    classes: [] Class;
    singletons: [] Singleton;
    native_structures: [] Native_Structure;
}

Size_Configuration :: struct {
    build_configuration: string;
    sizes: [] Size;
}

Size :: struct {
    name: string;
    size: int;
}

Offset_Configuration :: struct {
    build_configuration: string;
    classes: []Class_Offsets;
}

Class_Offsets :: struct {
    name: string;
    members: []Member;
}

Member :: struct {
    member: string;
    offset: int;
    meta: string;
}

Enum_Info :: struct {
    name: string;
    is_bitfield: bool;
    values: []Enum_Value;
}

Enum_Value :: struct {
    name: string;
    value: int;
}

Utility_Function :: struct {
    name: string;
    return_type: string;
    category: string;
    is_vararg: bool;
    hash: int;
    arguments: [] Argument;
}

Argument :: struct {
    name: string;
    type: string;
}

Builtin_Class :: struct {
    name: string;
    is_keyed: bool;
    members: []Builtin_Member;
    constants: []Builtin_Constant;
    enums: []Enum_Info;
    operators: []Operator;
    methods: []Builtin_Method;
    constructors: []Constructor;
    has_destructor: bool;
}

Builtin_Constant :: struct {
    name: string;
    type: string;
    value: string;
}

Builtin_Member :: struct {
    name: string;
    type: string;
}

Builtin_Method :: struct {
    name: string;
    return_type: string;
    is_vararg: bool;
    is_const: bool;
    is_static: bool;
    hash: int;
    arguments: []Argument;
}

Operator :: struct {
    name: string;
    right_type: string;
    return_type: string;
}

Constructor :: struct {
    index: int;
    arguments: [] Argument;
}

Class :: struct {
    name: string;
    is_refcounted: bool;
    is_instantiable: bool;
    inherits: string;
    api_type: string;
    constants: []Constant;
    enums: []Enum_Info;
    methods: []Method;
    signals: []Signal;
}

Constant :: struct {
    name: string;
    value: int;
}

Method :: struct {
    name: string;
    is_const: bool;
    is_vararg: bool;
    is_static: bool;
    is_virtual: bool;
    hash: int;
    hash_compatibility: []int;
    return_value : Return_Value;
    arguments: []Argument;
}

Signal :: struct {
    name: string;
}

Return_Value :: struct {
    type: string;
}

Singleton :: struct {
    name: string;
    type: string;
}

Native_Structure :: struct {
    name: string;
    format: string;
}


generate_json_api :: (path: string) -> bool {
    log("Parsing json...");
    success, api := json_parse_file(path, Extension_Api);
    if !success {
        log("Error parsing json!");
        return false;
    }
    log("Ok");
    log("Generating code...");

    builder: String_Builder;
    add_global_enums(*builder, api);
    add_utility_functions(*builder, api);
    write_entire_file("../generated/other.jai", *builder);
    log("Generated other.jai");

    builder = .{};
    add_builtin_classes(*builder, api);
    add_variant_constructors(*builder, api);
    write_entire_file("../generated/builtin.jai", *builder);
    log("Generated builtin.jai");

    builder = .{};
    add_classes(*builder, api);
    add_native_structures(*builder, api);
    write_entire_file("../generated/classes.jai", *builder);
    log("Generated classes.jai");

    return true;
}

SKIPPED_TYPES :: string.[
    "Nil",      // Native
    "bool",     // Native
    "int",      // Native
    "float",    // Native
    "Object",   // Is a class
];

add_variant_constructors :: (b: *String_Builder, api: Extension_Api) {
    variant_ti := cast(*Type_Info_Enum)type_info(GD.VariantType);
    for 0..GD.VariantType.VARIANT_MAX {
        name := enum_value_to_name(cast(GD.VariantType)it);
        print_to_builder(b, "variant_from_% : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;\n", to_lower_copy_new(name));
    }

    append(b, "\n");
    append(b, "load_variant_constructors :: () {\n");
    for (GD.VariantType.NIL + 1)..(GD.VariantType.VARIANT_MAX - 1) {
        name := enum_value_to_name(cast(GD.VariantType)it);
        print_to_builder(b, "\tvariant_from_% = get_variant_from_type_constructor(.%);\n", to_lower_copy_new(name), name);
    }
    append(b, "}\n\n");

}

// --------
// Utility function

add_utility_functions :: (b: *String_Builder, api: Extension_Api) {
    // @TODO: Autowrapper
    // for api.utility_functions {
    //     print_to_builder(b, "% : #type (", it.name);
    //     for(it.arguments) {
    //         print_to_builder(b, "%: %, ", it.name, it.type);
    //     }
    //     if it.is_vararg {
    //         append(b, " count: int");
    //     }
    //     append(b, ")");
    //     if it.return_type.count > 0 {
    //         print_to_builder(b, "-> %", it.return_type);
    //     }
    //     append(b, ";\n");
    // }

    for api.utility_functions {
        // We have to prefix because they use common names and the compiler will complain
        print_to_builder(b, "gd_% : PtrUtilityFunction;\n", it.name);
    }

    append(b, "\n");
    append(b, "load_all_utility_functions :: () {\n");
    for api.utility_functions {
        print_to_builder(b, "\tgd_% = load_single_utility_func(\"%\", %);\n", it.name, it.name, it.hash);
    }
    append(b, "}\n");
    append(b, "\n");
}


// --------
// Builtin classes

get_size_config :: (config: string, api: Extension_Api) -> []Size {
    for api.builtin_class_sizes {
        if it.build_configuration == config {
            return it.sizes;
        }
    }
    log_error("Unable to find sizes for config '%'", config);
    return .[];
}

get_offset_config :: (config: string, api: Extension_Api) -> []Class_Offsets {
    for api.builtin_class_member_offsets {
        if it.build_configuration == config {
            return it.classes;
        }
    }
    log_error("Unable to find offsets for config '%'", config);
    return .[];
}

find_size :: (name: string, sizes: []Size) -> Size {
    for sizes {
        if name == it.name then return it;
    }
    assert(false, "Couldn't find size for %", name);
    return .{};
}

find_offsets :: (name: string, offsets: []Class_Offsets) -> bool, Class_Offsets {
    for offsets {
        if name == it.name then return true, it;
    }
    return false, .{};
}

find_class :: (name: string, classes: []Builtin_Class) -> bool, Builtin_Class {
    for classes {
        if name == it.name then return true, it;
    }

    return false, .{};
}

clean_constant_value :: (val: string) -> string {
    v := replace(val, "(", ".{");
    v = replace(v, ")", "}");
    v = replace(v, "inf", "FLOAT32_INFINITY");
    return v;
}

clean_meta :: (val: string) -> string {
    if val == {
        case "int32"; return "s32";
        case; return val;
    }
}


// --------
// Builtin types

add_builtin_types :: (b: *String_Builder, api: Extension_Api) {

    get_size_config :: (config: string, api: Extension_Api) -> []Size {
        for api.builtin_class_sizes {
            if it.build_configuration == config {
                return it.sizes;
            }
        }
        log_error("Unable to find sizes for config '%'", config);
        return .[];
    }

    sizes := get_size_config("float_64", api);
    for sizes {
        if array_find(SKIPPED_TYPES, it.name) then continue;

        print_to_builder(b, "% :: struct {\n\t__private: [%]u8;\n}\n\n", it.name, it.size);
    }
}

// --------
// Builtin class

add_builtin_class_destructor :: (b: *String_Builder, class: Builtin_Class) -> string {
    snake_case_name := to_snake_case(class.name);
    print_to_builder(b, "%_destroy : PtrDestructor;\n", snake_case_name);
    print_to_builder(b, "destroy :: (self: *%) #no_context { \n", class.name);
    print_to_builder(b, "\t%_destroy(self);\n}\n\n", snake_case_name);
    return snake_case_name;
}

type_to_variant_type :: (type_name: string) -> string {
    if type_name == {
        case "StringName"; return "STRING_NAME";
        case; return to_upper_copy_new(type_name);
    }
}

add_method :: (b: *String_Builder, method: Builtin_Method, class_name: string) {
    m_name := clean_name(method.name);
    returns := method.return_type != "void" && method.return_type.count != 0;
    print_to_builder(b, "%1_%2 :: (using self: *%1", class_name, m_name);
    for method.arguments {
        // if it_index != 0 {
        append(b, ", ");
        // }
        print_to_builder(b, "%: %", clean_name(it.name), clean_type(it.type));
    }
    append(b, ")");
    if returns {
        print_to_builder(b, " -> %", method.return_type);
    }
    append(b, " #c_call {\n");
    print_to_builder(b, "\tmethod_name := new_string_name(\"%\");\n\tdefer destroy(*method_name);\n", method.name);
    append(b, "\targs : = *void.[");
    for method.arguments {
        print_to_builder(b, "*%, ", it.name);
    }
    append(b, "];\n");
    if returns {
        print_to_builder(b, "\tret: %;\n", method.return_type);
    }
    print_to_builder(b, "\tfunc := variant_get_ptr_builtin_method(.%, *method_name, %);\n", type_to_variant_type(class_name), method.hash);
    print_to_builder(b, "\tfunc(self, args.data, %, args.count);\n", ifx returns then "*ret" else "null");
    if returns {
        append(b, "\treturn ret;\n");
    }
    append(b, "}\n");
}

add_builtin_classes :: (b: *String_Builder, api: Extension_Api) {

    sizes := get_size_config("float_64", api);
    offsets := get_offset_config("float_64", api);
    all_destr : [..]string;

    for sizes {
        if array_find(SKIPPED_TYPES, it.name) then continue;

        // size := find_size(it.name, sizes);
        has_class, class := find_class(it.name, api.builtin_classes);
        has_offset, offset := find_offsets(it.name, offsets);

        print_to_builder(b, "% :: struct {\n", it.name);

        if !has_offset {
            print_to_builder(b, "\t__private: [%]u8;\n", it.size);
        } else {
            for offset.members {
                print_to_builder(b, "\t%: %;\n", it.member, clean_meta(it.meta));
            }
        }
        if has_class {
            for class.enums {
                if it_index == 0 then append(b, "\n");
                print_enum(b, it, "\t");
            }
        }

        append(b, "}\n");
        if has_class {

            if class.has_destructor {
                append(b, "\n");
                m := add_builtin_class_destructor(b, class);
                array_add(*all_destr, m);
            }

            for class.methods {
                append(b, "\n");
                add_method(b, it, class.name);
            }

            for class.constants {
                if it_index == 0 then append(b, "\n");
                constant_name := tprint("%_%", to_upper_copy_new(class.name), it.name);
                // Special cases for annoying cases
                if constant_name == { // @Hardcoded
                    case "PROJECTION_IDENTITY";  append(b, "PROJECTION_IDENTITY :: Projection.{.{1, 0, 0, 0}, .{0, 1, 0, 0}, .{0, 0, 1, 0}, .{0, 0, 0, 1}};\n");
                    case "PROJECTION_ZERO";      append(b, "PROJECTION_ZERO :: Projection.{.{0, 0, 0, 0}, .{0, 0, 0, 0}, .{0, 0, 0, 0}, .{0, 0, 0, 0}};\n");
                    case "TRANSFORM3D_IDENTITY"; append(b, "TRANSFORM3D_IDENTITY :: Transform3D.{Basis.{.{1, 0, 0}, .{0, 1, 0}, .{0, 0, 1}}, .{0, 0, 0}};\n");
                    case "TRANSFORM3D_FLIP_X";   append(b, "TRANSFORM3D_FLIP_X   :: Transform3D.{Basis.{.{-1, 0, 0}, .{0, 1, 0}, .{0, 0, 1}}, .{0, 0, 0}};\n");
                    case "TRANSFORM3D_FLIP_Y";   append(b, "TRANSFORM3D_FLIP_Y   :: Transform3D.{Basis.{.{1, 0, 0}, .{0, -1, 0}, .{0, 0, 1}}, .{0, 0, 0}};\n");
                    case "TRANSFORM3D_FLIP_Z";   append(b, "TRANSFORM3D_FLIP_Z   :: Transform3D.{Basis.{.{1, 0, 0}, .{0, 1, 0}, .{0, 0, -1}}, .{0, 0, 0}};\n");
                    case "BASIS_IDENTITY";       append(b, "BASIS_IDENTITY :: Basis.{.{1, 0, 0}, .{0, 1, 0}, .{0, 0, 1}};\n");
                    case "BASIS_FLIP_X";         append(b, "BASIS_FLIP_X :: Basis.{.{-1, 0, 0}, .{0, 1, 0}, .{0, 0, 1}};\n");
                    case "BASIS_FLIP_Y";         append(b, "BASIS_FLIP_Y :: Basis.{.{1, 0, 0}, .{0, -1, 0}, .{0, 0, 1}};\n");
                    case "BASIS_FLIP_Z";         append(b, "BASIS_FLIP_Z :: Basis.{.{1, 0, 0}, .{0, 1, 0}, .{0, 0, -1}};\n");
                    case "PLANE_PLANE_YZ";       append(b, "PLANE_PLANE_YZ :: Plane.{.{1, 0, 0}, 0};\n");
                    case "PLANE_PLANE_XZ";       append(b, "PLANE_PLANE_XZ :: Plane.{.{0, 1, 0}, 0};\n");
                    case "PLANE_PLANE_XY";       append(b, "PLANE_PLANE_XY :: Plane.{.{0, 0, 1}, 0};\n");
                    case "TRANSFORM2D_IDENTITY"; append(b, "TRANSFORM2D_IDENTITY :: Transform2D.{.{1, 0}, .{0, 1}, .{0, 0}};\n");
                    case "TRANSFORM2D_FLIP_X";   append(b, "TRANSFORM2D_FLIP_X :: Transform2D.{.{-1, 0}, .{0, 1}, .{0, 0}};\n");
                    case "TRANSFORM2D_FLIP_Y";   append(b, "TRANSFORM2D_FLIP_Y :: Transform2D.{.{1, 0}, .{0, -1}, .{0, 0}};\n");
                    case; print_to_builder(b, "% :: %;\n", constant_name, clean_constant_value(it.value));
                }
            }
        }

        append(b, "\n");
    }

    append(b, "load_all_destructors :: () {\n");
    for all_destr {
        print_to_builder(b, "\t%_destroy = variant_get_ptr_destructor(.%);\n", it, to_upper_copy_new(it));
    }
    append(b, "}\n\n");

    append(b, "\n");

}

// --------
// Classes

clean_type :: (type: string) -> string {
    if type.count == 0 return "";
    
    if type == {
        case "typedarray::Dictionary"; {
            return "Dictionary";
        }
        case "enum::Variant.Type"; {
            return "VariantType";
        }
    }

    result := type;
    if begins_with(result, "enum::") {
        result = advance(result, "enum::".count);
    } else if begins_with(result, "typedarray::") {
        return "Array";
    } else if begins_with(result, "bitfield::") {
        result = advance(result, "bitfield::".count);
    }


    // Pointers
    result = replace(result, "const", "");
    while result[result.count-1] == #char "*" {
        result.count -= 1;
        result = tprint("*%", trim(result));
    }

    result = replace(result, "uint8_t", "u8");
    result = replace(result, "int32_t", "s32");

    return result;
}

clean_name :: (name: string) -> string {
    if name == {
        case "context"; return "_context";
        case "operator"; return "_operator";
        case "enum"; return "_enum";
        case "remove"; return "_remove";
        case "interface"; return "_interface";
        case "push_context"; return "_push_context";
        case "string"; return "_string";
        case "bool"; return "_bool";
        case "RID"; return "rid";
    }

    return name;
}

print_enum :: (b: *String_Builder, e: Enum_Info, indentation: string) {
    append(b, indentation);
    print_to_builder(b, "% :: enum", e.name);
    if e.is_bitfield {
        append(b, "_flags");
    }
    append(b, " {\n");
    for e.values {
        append(b, indentation);
        print_to_builder(b, "\t% :: %;\n", it.name, it.value);
    }
    append(b, indentation);
    append(b, "}\n");
}

add_method :: (b: *String_Builder, method: Method, class_name: string, method_body: string = "") {

    m_name := clean_name(method.name);
    print_to_builder(b, "%1_%2 :: (using self: *%1", class_name, m_name);
    for method.arguments {
        // if it_index != 0 {
        append(b, ", ");
        // }
        print_to_builder(b, "%: %", clean_name(it.name), clean_type(it.type));
    }
    append(b, ")");
    if method.return_value.type.count != 0 {
        print_to_builder(b, " -> %", clean_type(method.return_value.type));
    }
    append(b, " {\n");
    append(b, method_body);
    append(b, "}\n");
}

add_classes :: (b: *String_Builder, api: Extension_Api) {
    for class: api.classes {
        print_to_builder(b, "// %\n", class.name);
        print_to_builder(b, "% :: struct {\n", class.name);

        // Data
        print_to_builder(b, "\t__private: *void;\n");

        // Constants
        for class.constants {
            if it_index == 0 then append(b, "\n");
            print_to_builder(b, "\t% :: %;\n", it.name, it.value);
        }

        // Enums 
        for class.enums {
            if it_index == 0 then append(b, "\n");
            print_enum(b, it, "\t");
        }

        append(b, "}\n");

        // Methods
        for class.methods {
            if it_index == 0 then append(b, "\n");
            add_method(b, it, class.name);
        }

        append(b, "\n");
    }

}

add_global_enums :: (b: *String_Builder, api: Extension_Api) {
    for api.global_enums {
        if it.name == "Variant.Type" then continue;
        if it.name == "Variant.Operator" then continue;
        print_enum(b, it, "");
        append(b, "\n");
    }
}

clean_format :: (f: string) -> string {

    clean_type :: (type: string, occurences: int) -> string {

        if type == {
            case "TextServer::Direction"; return "TextServer.Direction";
            case "uint64_t"; return "u64";
            case "uint16_t"; return "u16";
            case "uint8_t"; return "u8";
            case "int32_t"; return "s32";
            case "real_t"; return "float";
            case; {
                if occurences == 0 then return type;
                else return tprint("*%", type);
            }
        }
    }

    clean_value :: (val: string) -> string {
        return replace(val, ".f", "");
    }

    b: String_Builder;
    decls := split(f, ";");
    for decls {
        found, type, rest := split_from_left(it, " ");
        val_found, name, value := split_from_left(rest, "=");

        name=, occurences := replace(trim(name), "*", "");
        if name == "collisions[32]" {
            name = "collisions";
            type = tprint("[32]%", type);
        }

        print_to_builder(*b, "\t%: %", name, clean_type(trim(type), occurences));
        if val_found {
            print_to_builder(*b, " = %", clean_value(trim(value)));
        }
        append(*b, ";\n");
    }
    return builder_to_string(*b);
}

add_native_structures :: (b: *String_Builder, api: Extension_Api) {
    for api.native_structures {
        if it_index == 0 then append(b, "\n");
        print_to_builder(b, "% :: struct {\n", it.name);
        print_to_builder(b, "%", clean_format(it.format));

        append(b, "}\n\n");
    }

}