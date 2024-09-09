// This file contains just the JSON serialization functions. See generic.jai and typed.jai for parse fuctions.

// Generates a JSON string from either a JSON_Value or any custom type.
// "indent_char" does what it says on the tin.
// "ignore" is only used for custom types to determine which properties of your custom type should be serialized.
//		The default ignore function ignores all struct members that have the note @JsonIgnore.
// "rename" is used for renaming certain members.
//      It gets called with the Type_Info_Struct_Member and must return the new name of the field.
// 		The default procedure rename members by their @JsonName note. Eg: @JsonName(renamed_member).
json_write_string :: (value: $T, indent_char := "\t", ignore := ignore_by_note, rename := rename_by_note) -> string {
	builder: String_Builder;
	defer free_buffers(*builder);
	json_append_value(*builder, value, indent_char, ignore, rename);
	return builder_to_string(*builder);
}

json_write_file :: (filename: string, value: $T, indent_char := "\t", ignore := ignore_by_note, rename := rename_by_note) -> bool {
	builder: String_Builder;
	defer free_buffers(*builder);
	json_append_value(*builder, value, indent_char, ignore, rename);
	return write_entire_file(filename, *builder);
}

json_append_value :: (builder: *String_Builder, val: $T, indent_char := "\t", ignore := ignore_by_note, rename := rename_by_note) {
	#if T == JSON_Value {
		json_write_json_value(builder, val, indent_char);
	} else {
		info := type_info(T);
		json_write_native(builder, *val, info, indent_char, ignore, rename);
	}
}

// This function is useful if you have a JSON template string and just want to
// safely insert a value without having to replicate the full json structure in Jai.
// The return value does NOT include quotes around the string.
//
// Example:
// JSON_TEMPLATE :: #string END
// {
// 	"complicated": {
// 		"json": {
// 			"structure": {
// 				"for_a_stupid_api": {
// 					"that_needs": [
// 						{"a_deeply_nested_value": "%1"}
// 					]
// 				}
// 			}
// 		}
// 	}
// }
// END
// escaped_value := json_escape_string(my_unsafe_value);
// defer free(escaped_value);
// json_str := print(JSON_TEMPLATE, escaped_value);
json_escape_string :: (str: string) -> string {
	builder: String_Builder;
	defer	free_buffers(*builder);
	json_append_escaped(*builder, str);
	escaped := builder_to_string(*builder);
	return escaped;
}

Ignore_Proc :: #type (member: *Type_Info_Struct_Member) -> bool;
Rename_Proc :: #type (member: *Type_Info_Struct_Member) -> string;

ignore_by_note :: (member: *Type_Info_Struct_Member) -> bool {
	for note: member.notes {
		if note == "JsonIgnore"	return true;
	}
	return false;
}

rename_by_note :: (member: *Type_Info_Struct_Member) -> string {
	for note: member.notes {
		if !begins_with(note, "JsonName(") continue;
        if note.count <= 10 || note[note.count-1] != #char ")" {
            log_error("Invalid JsonName note format. Expected a name in parenthesis, but the note was \"%\".", note);
            continue;
        }

		return slice(note, 9, note.count-10);
	}

	return member.name;
}

#scope_module

WHITESPACE_CHARS :: " \t\n\r";

json_append_escaped :: (builder: *String_Builder, str: string) {
	remaining := str;
	next_pos := index_of_illegal_string_char(remaining);
	append(builder, "\"");
	while (next_pos >= 0) {
		append(builder, slice(remaining, 0, next_pos));
		if remaining[next_pos] == {
			case #char "\\";
				append(builder,  "\\\\");
			case #char "\"";
				append(builder,  "\\\"");
			case #char "\n";
				append(builder, "\\n");
			case #char "\r";
				append(builder, "\\r");
			case #char "\t";
				append(builder, "\\t");
			case;
				// ToDo: handle illegal multi-byte characters
				// print("Escaping: %\n\n", slice(remaining, next_pos, remaining.count - next_pos));
				print_to_builder(builder, "\\u%", formatInt(remaining[next_pos], base=16, minimum_digits=4));
		}
		remaining = advance(remaining, next_pos + 1);
		next_pos = index_of_illegal_string_char(remaining);
	}
	append(builder, remaining);
	append(builder, "\"");
}

index_of_illegal_string_char :: (str: string) -> s64 {
	for 0..str.count - 1 {
		if str[it] == #char "\\" || str[it] == #char "\"" || str[it] <= 0x1F {
			return it;
		}
	}
	return -1;
}

expect_and_slice :: (str: string, expected: string) -> remainder: string, success: bool {
	if str.count < expected.count || !equal(slice(str, 0, expected.count), expected) {
		log_error("Unexpected token. Expected \"%\" but got: %", expected, str);
		return str, false;
	}
	remainder := advance(str, expected.count);
	return remainder, true;
}

parse_string :: (str: string) -> result: string, remainder: string, success: bool {
	assert(str[0] == #char "\"", "Invalid string start %", str);
	inside := advance(str);
	needsUnescape := false;
	while inside[0] != #char "\"" {
		if inside.count < 2 	return "", str, false;
		if inside[0] == #char "\\" {
			needsUnescape = true;
			if inside.count < 2	return "", str, false;
			advance(*inside);
		}
		advance(*inside);
	}

	length := inside.data - str.data - 1;
	result := slice(str, 1, length);
	if needsUnescape {
		success: bool;
		result, success = unescape(result);
		if !success		return "", str, false;
	} else {
		result = copy_string(result);
	}

	remainder := slice(str, length + 2, str.count - length - 2);
	return result, remainder, true;
}

unescape :: (str: string) -> result: string, success: bool {
	result := alloc_string(str.count);
	rc := 0;
	for i: 0..str.count-1 {
		if str[i] != #char "\\" {
			// Check for invalid characters for JSON
			if str[i] < 0x20	return "", false;

			result[rc] = str[i];
			rc += 1;
		} else {
			if i == str.count - 1	return "", false;
			i += 1;
			if str[i] == {
				case #char "\""; #through;
				case #char "/"; #through;
				case #char "\\";
					result[rc] = str[i];
					rc += 1;
				case #char "b";
					result[rc] = 0x08;
					rc += 1;
				case #char "f";
					result[rc] = 0x0c;
					rc += 1;
				case #char "n";
					result[rc] = #char "\n";
					rc += 1;
				case #char "r";
					result[rc] = #char "\r";
					rc += 1;
				case #char "t";
					result[rc] = #char "\t";
					rc += 1;
				case #char "u";
					if i + 4 >= str.count	return "", false;
					unicode_char, success := parse_unicode(slice(str, i + 1, 4));
					if !success		return "", false;
					utf8_len := encode_utf8(unicode_char, *(result.data[rc]));
					rc += utf8_len;
					i += 4;
				case;
					return "", false;
			}
		}
	}
	result.count = rc;
	return result, true;
}

#import "Basic";
#import "File";
#import "String";

#import "Hash_Table";
#import "IntroSort";


is_utf_cont :: inline (b: u8) -> bool {
	return (b & 0xc0) == 0x80;
}

parse_unicode :: (str: string) -> result: u16, success: bool {
	val, success, remainder := string_to_int(str, base = 16);
	if !success || val > 0xFFFF || remainder.count		return 0, false;
	return xx val, true;
}

encode_utf8 :: (val: u16, result: *u8) -> len: u8 {
	if val & 0xF800 {
		result[0] = xx (0xE0 | ((val & 0xF000) >> 12));
		result[1] = xx (0x80 | ((val & 0x0FC0) >> 6));
		result[2] = xx (0x80 | (val & 0x003F));
		return 3;
	} else if val & 0x0F80 {
		result[0] = xx (0xC0 | ((val & 0x0FC0) >> 6));
		result[1] = xx (0x80 | (val & 0x003F));
		return 2;
	} else {
		result[0] = xx (val & 0x7F);
		return 1;
	}
}

is_valid_utf8 :: (str: string) -> valid:bool {
	for i: 0..str.count-1 {
		cur := str[i];
		if cur >= 0x80 {
			// Must be between 0xc2 and 0xf4 inclusive to be valid
			if (cur - 0xc2) > (0xf4 - 0xc2) return false;

			if cur < 0xe0 {     // 2-byte sequence
				if i + 1 >= str.count || !is_utf_cont(str[i+1]) return false;
				i += 1;
			} else if cur < 0xf0 { // 3-byte sequence
				if i + 2 >= str.count || !is_utf_cont(str[i+1]) || !is_utf_cont(str[i+2]) return false;

				// Check for surrogate chars
				if cur == 0xed && str[i+1] > 0x9f return false;
				// ToDo: Check if total >= 0x800
				// uc = ((uc & 0xf)<<12) | ((*str & 0x3f)<<6) | (str[1] & 0x3f);
				i += 2;
			} else {	// 4-byte sequence
				if i + 3 >= str.count || !is_utf_cont(str[i+1]) || !is_utf_cont(str[i+2]) || !is_utf_cont(str[i+3]) return false;
				// Make sure its in valid range (0x10000 - 0x10ffff)
				if cur == 0xf0 && str[i + 1] < 0x90 return false;
				if cur == 0xf4 && str[i + 1] > 0x8f return false;
				i += 3;
			}
		}
	}
	return true;
}


#import "Basic";


// Parse a JSON string into the given Type.
// All members of Type that are not present in the JSON are kept at their default values.
// All fields in the JSON that have no corresponding member in Type are ignored by default
// but you can pass ignore_unknown = false to fail instead.
//@Incomplete: The typed interface cannot yet parse into float members. (Because I haven’t needed it yet. 🙈) PRs welcome!
json_parse_string :: (content: string, $T: Type, ignore_unknown := true, rename := rename_by_note) -> success: bool, T {
	result: T;
	if !content then return false, result;

	info := type_info(T);
	remainder, success := parse_value(content, cast(*u8)*result, info, ignore_unknown, "", rename=rename);
	if !success		return false, result;

	remainder = trim_left(remainder, WHITESPACE_CHARS);
	if remainder.count {
		log_error("Unexpected trailing characters: %", remainder);
		return false, result;
	}

	return true, result;
}

json_parse_file :: (filename: string, $T: Type, ignore_unknown := true, rename := rename_by_note) -> success: bool, T {
	file_data, success := read_entire_file(filename);
	result: T;
	if !success		{
		log_error("Could not read file: %", filename);
		return false, result;
	}
	defer free(file_data);

	if (context.log_level >= .VERBOSE) {
		log("Read file: %", success);
	}
	success, result = json_parse_string(file_data, T, ignore_unknown, rename=rename);
	return success, result;
}

json_write_native :: (builder: *String_Builder, data: *void, info: *Type_Info, indent_char := "\t", ignore := ignore_by_note, rename := rename_by_note, level := 0) {
	if info.type == {
		case .BOOL;
			append(builder, ifx <<(cast(*bool) data) "true" else "false");
		case .INTEGER; #through;
		case .FLOAT;
			any_val: Any;
			any_val.type = info;
			any_val.value_pointer = data;
			print_item_to_builder(builder, any_val);
		case .ENUM;
			any_val: Any;
			any_val.type = info;
			any_val.value_pointer = data;

			append(builder, #char "\"");
			print_item_to_builder(builder, any_val);
			append(builder, #char "\"");
		case .STRING;
			json_append_escaped(builder, <<(cast(*string) data));
		case .ARRAY;
			info_array := cast(*Type_Info_Array) info;
			element_size := info_array.element_type.runtime_size;
			assert(element_size != -1);

			stride := get_array_stride(element_size);
			array_data := data;
			array_count := info_array.array_count;
			if info_array.array_count == -1 {
				array_count = << cast(*s64) data;

				array_dest: **void = data + 8;
				array_data = << array_dest;
			}

			append(builder, "[");
			if array_data {
				if indent_char.count {
					append(builder, "\n");
					for 0..level	append(builder, indent_char);
				}
				for 0..array_count-1 {
					json_write_native(builder, array_data, info_array.element_type, indent_char, ignore, rename, level + 1);
					if it != array_count - 1		append(builder, ",");
					array_data += stride;
				}
			}
			if indent_char.count {
				append(builder, "\n");
				for 0..level-1	append(builder, indent_char);
			}
			append(builder, "]");
		case .STRUCT;
			struct_info := cast(*Type_Info_Struct) info;
			if is_generic_json_value(info) {
				value := cast(*JSON_Value) data;
				json_write_json_value(builder, <<value, indent_char, level);
			} else {
				append(builder, #char "{");
				first := true;
				json_write_native_members(builder, data, struct_info.members, indent_char, ignore, rename, level, *first);
				if indent_char.count {
					append(builder, "\n");
					for 0..level-1	append(builder, indent_char);
				}
				append(builder, "}");
			}
		case .POINTER;
			ptr_info := cast(*Type_Info_Pointer) info;
			ptr := << cast(**void) data;
			if ptr {
				json_write_native(builder, ptr, ptr_info.pointer_to, indent_char, ignore, rename, level);
			} else {
				append(builder, "null");
			}
		case .VARIANT;
			any_val: Any;
			any_val.type = info;
			any_val.value_pointer = data;
			print_item_to_builder(builder, any_val);
		case;
			assert(false, "Unsupported type: %", info.type);
	}
}

#scope_file

is_member_placed :: (members: []Type_Info_Struct_Member, i: int) -> bool {
	for 0..i - 1 {
		m := members[it];
		if m.offset_in_bytes == members[i].offset_in_bytes then return true;
	}

	return false;
}

json_write_native_members :: (builder: *String_Builder, data: *void, members: [] Type_Info_Struct_Member, indent_char := "\t", ignore := ignore_by_note, rename: Rename_Proc, level := 0, first: *bool) {
	for * member: members {
		if member.flags & .CONSTANT     continue;
		if ignore(member)               continue;
		if is_member_placed(members, it_index) continue;
		if (member.type.type == .STRUCT && member.flags & .USING) {
			info := cast(*Type_Info_Struct) member.type;
			json_write_native_members(builder, data + member.offset_in_bytes, info.members, indent_char, ignore, rename, level, first);
		} else {
			if !<<first	append(builder, ",");
			<<first = false;

			if indent_char.count {
				append(builder, "\n");
				for 0..level	append(builder, indent_char);
			}

			renamed_name := rename(member);
			name := ifx renamed_name.count > 0	renamed_name else member.name;

			json_append_escaped(builder, name);
			append(builder, ": ");
			json_write_native(builder, data + member.offset_in_bytes, member.type, indent_char, ignore, rename, level + 1);
		}
	}
}

get_array_stride :: (size: s64) -> s64 {
    return size; // @Incomplete: Is this always correct?
}

is_generic_json_value_or_pointer_to_it :: (info: *Type_Info) -> bool {
	value_info := info;
	if info.type == .POINTER {
		pointer_info := cast(*Type_Info_Pointer) info;
		value_info = pointer_info.pointer_to;
	}

	return is_generic_json_value(info);
}

is_generic_json_value :: (info: *Type_Info) -> bool {
	return info == type_info(JSON_Value);
}

parse_value :: (to_parse: string, slot: *u8, info: *Type_Info, ignore_unknown: bool, field_name: string, rename: Rename_Proc) -> remainder: string, success: bool {
	remainder := trim_left(to_parse, WHITESPACE_CHARS);
	success := true;

	prepare_slot :: (expected_type: Type_Info_Tag, info: *Type_Info, slot: *u8, to_parse: string) -> *u8, success: bool, is_generic: bool, info: *Type_Info {
		value_info := info;
		if info.type == .POINTER {
			pointer_info := cast(*Type_Info_Pointer) info;
			value_info = pointer_info.pointer_to;
		}

        if info.type == .ENUM {
            info_enum := cast(*Type_Info_Enum)info;
            value_info = info_enum.internal_type;
        }

		is_generic := is_generic_json_value(value_info);

		if value_info.type != expected_type {
			teaser := to_parse;
			if teaser.count > 50	teaser.count = 50;
            builder: String_Builder;
            print_type_to_builder(*builder, info);
            type_name := builder_to_string(*builder,, allocator = temp);
			log_error("Cannot parse % value into type \"%\". Remaining input is: %…", expected_type, type_name, teaser);
			return null, false, false, value_info;
		}

		if info.type == .POINTER {
			value_slot := alloc(value_info.runtime_size);
			initializer: (*void);
			if value_info.type == .STRUCT {
				struct_info := cast(*Type_Info_Struct) value_info;
				initializer = struct_info.initializer;
			}
			if initializer {
				initializer(value_slot);
			} else {
				memset(value_slot, 0, value_info.runtime_size);
			}
			<<cast(**u8)slot = value_slot;
			return value_slot, true, is_generic, value_info;
		} else {
			return slot, true, is_generic, value_info;
		}
	}

	is_generic: bool;
	if remainder[0] == {
		case #char "n";
			remainder, success = expect_and_slice(remainder, "null");
			if !success		return remainder, false;
			if slot {
				if info.type == .POINTER {
                    <<cast(**void) slot = null;
                } else {
                    builder: String_Builder;
                    print_type_to_builder(*builder, info);
                    type_name := builder_to_string(*builder,, allocator = temp);
					log_error("Got NULL value for non-pointer type \"%\" of field \"%\". Keeping default value instead.", type_name, field_name);
				}
			}
			return remainder, true;
		case #char "t";
			remainder, success = expect_and_slice(remainder, "true");
			if !success		return remainder, false;
			if slot {
				value_slot: *u8;
				value_slot, success, is_generic = prepare_slot(.BOOL, info, slot, to_parse);
				if success {
					if is_generic {
						json_set(cast(*JSON_Value)value_slot, true);
					} else {
						<<cast(*bool)value_slot = true;
					}
				}
			}
		case #char "f";
			remainder, success = expect_and_slice(remainder, "false");
			if !success		return remainder, false;
			if slot {
				value_slot: *u8;
				value_slot, success, is_generic = prepare_slot(.BOOL, info, slot, to_parse);
				if success {
					if is_generic {
						json_set(cast(*JSON_Value)value_slot, false);
					} else {
						<<cast(*bool)value_slot = false;
					}
				}
			}
		case #char "\"";
			if slot && info && info.type == .ENUM {
				info_enum := cast(*Type_Info_Enum)info;
				value_slot: *u8;
				value_slot, success, is_generic = prepare_slot(.INTEGER, info_enum.internal_type, slot, to_parse);
				remainder, success = parse_enum_string(remainder, value_slot, info_enum);
			} else {
				value: string;
				value, remainder, success = parse_string(remainder);
				stored := false;
				defer if !stored	free(value);
				if success && slot {
					value_slot: *u8;
					value_slot, success, is_generic = prepare_slot(.STRING, info, slot, to_parse);
					if success {
						if is_generic {
							json_set(cast(*JSON_Value)value_slot, value);
						} else {
							<<cast(*string)value_slot = value;
						}
						stored = true;
					}
				}
			}
		case #char "[";
			value_slot: *u8;
			value_info: *Type_Info;
			if slot {
				value_slot, success, is_generic, value_info = prepare_slot(.ARRAY, info, slot, to_parse);
			}
			if success {
				if is_generic {
					value: [] JSON_Value;
					value, remainder, success = parse_array(remainder);
					json_set(cast(*JSON_Value)value_slot, value);
				} else {
					remainder, success = parse_array(remainder, value_slot, cast(*Type_Info_Array) value_info, ignore_unknown, rename=rename);
				}
			}
		case #char "{";
			value_slot: *u8;
			value_info: *Type_Info;
			if slot {
				value_slot, success, is_generic, value_info = prepare_slot(.STRUCT, info, slot, to_parse);
			}
			if success {
				if is_generic {
					value := New(JSON_Object);
					<<value, remainder, success = parse_object(remainder);
					json_set(cast(*JSON_Value)value_slot, value);
				} else {
					remainder, success = parse_object(remainder, value_slot, cast(*Type_Info_Struct) value_info, ignore_unknown, rename=rename);
				}
			}
		case;
			if slot == null || info.type == .FLOAT || is_generic_json_value_or_pointer_to_it(info) {
				float_value: float64;
				float_value, success, remainder = string_to_float64(remainder);
				if success && slot {
					value_slot: *u8;
					value_info: *Type_Info;
					value_slot, success, is_generic, value_info = prepare_slot(.FLOAT, info, slot, to_parse);
					if success {
						if is_generic {
							json_set(cast(*JSON_Value)value_slot, float_value);
						} else {
							if value_info.runtime_size == 4 {
								(<< cast(*float) slot) = cast(float) float_value;
							} else {
								assert(value_info.runtime_size == 8);
								(<< cast(*float64) slot) = float_value;
							}
						}
					}
				}
			} else {
                if slot {
                    value_slot: *u8;
                    value_info: *Type_Info;
                    value_slot, success, is_generic, value_info = prepare_slot(.INTEGER, info, slot, to_parse);
                    if success {
                        if is_generic {
                            int_value: s64;
                            int_value, success, remainder = string_to_int(remainder, T = s64);
                            if success {
                                json_set(cast(*JSON_Value)value_slot, int_value);
                            } else {
                                log_error("Could not parse \"%\" as an integer.", to_parse);
                            }
                        } else {
                            info_int := cast(*Type_Info_Integer) value_info;
                            success, remainder = parse_and_write_integer(info_int, value_slot, to_parse);
                        }
                    }
                } else {
                    int_value: s64;
                    int_value, success, remainder = string_to_int(remainder, T = s64);
                    if !success {
                        log_error("Could not parse \"%\" as an integer.", to_parse);
                    }
                }
			}
	}

	return remainder, success;
}

parse_enum_string :: (str: string, slot: *u8, info_enum: *Type_Info_Enum) -> remainder: string, success: bool {
	value, remainder, success := parse_string(str);
	defer free(value);
    if !success return remainder, false;

    // Parse by members' names
    normalize_enum_value :: inline (name: string) -> string #expand {
        normalized := trim(name);
        // @Speed, @Cleanup: Why are we tprinting this every time? We could just use the name directly and then check for the dot.
        if starts_with(normalized, tprint("%.", info_enum.name))
            normalized = slice(normalized, info_enum.name.count+1, normalized.count-info_enum.name.count-1);
        if starts_with(normalized, ".")
            normalized = slice(normalized, 1, normalized.count-1);
        return normalized;
    }

    int_info := info_enum.internal_type;
    int_value: s64;
    if info_enum.enum_type_flags & .FLAGS {
        parsed_count := 0;
        values := split(value, "|");

        for v: values {
            name := normalize_enum_value(v);
            for info_enum.names {
                if name == it {
                    parsed_count += 1;
                    int_value |= info_enum.values[it_index];
                    break;
                }
            }
        }

        if parsed_count != values.count {
            success = false;
        }
    } else {
        success = false;
        name := normalize_enum_value(value);
        for info_enum.names {
            if name == it {
                int_value = info_enum.values[it_index];
                success = true;
                break;
            }
        }
    }

    if success {
        if int_info.signed {
            valid, low, high := Reflection.range_check_and_store(int_value, int_info, slot);
            if !valid {
                log_error("The value '%' is out of range. (It must be between % and %.)", int_value, low, high);
                return remainder, false;
            }
        } else {
            valid, low, high := Reflection.range_check_and_store(cast(u64) int_value, int_info, slot);
            if !valid {
                log_error("The value '%' is out of range. (It must be between % and %.)", int_value, low, high);
                return remainder, false;
            }
        }
    }

    return remainder, success;
}

parse_array :: (str: string, slot: *u8, info: *Type_Info_Array, ignore_unknown: bool, rename: Rename_Proc) -> remainder: string, success: bool {
	element_size: int;
	stride: int;
	if slot {
		element_size = info.element_type.runtime_size;
		assert(element_size != -1, "Unknown element size");
		stride = get_array_stride(element_size);
	}

	assert(str[0] == #char "[", "Invalid object start %", str);
	remainder := advance(str);
	remainder = trim_left(remainder, WHITESPACE_CHARS);
	if remainder[0] == #char "]" {
		remainder = advance(remainder);
		// @Robustness: Do we need to zero out the array?
		return remainder, true;
	}


	if slot {
		array: Resizable_Array;

        initializer: (*void);
        if info.element_type.type == .STRUCT {
            struct_info := cast(*Type_Info_Struct) info.element_type;
            initializer = struct_info.initializer;
        }

		while true {
			maybe_grow(*array, element_size);
            element_data := array.data + array.count * stride;
			if initializer {
				initializer(element_data);
			} else {
				memset(element_data, 0, element_size);
			}

			success: bool;
			remainder, success = parse_value(remainder, element_data, info.element_type, ignore_unknown, "", rename=rename);
			if !success	return remainder, false;

			array.count += 1;

			remainder = trim_left(remainder, WHITESPACE_CHARS);
			if remainder[0] != #char ","	break;
			remainder = advance(remainder);
			remainder = trim_left(remainder, WHITESPACE_CHARS);
		}

		if info.array_type == .VIEW {
			view := (cast(*Array_View_64) slot);
			view.count = array.count;
			view.data = array.data;
		} else if info.array_count == -1 {
            // Resizable array
			<<(cast(*Resizable_Array) slot) = array;
		} else {
            // Fixed-size array
            if (info.array_count != array.count) {
                log_error("Expected array of size %, but found array of size %\n", info.array_count, array.count);
                return remainder, false;
            }

            memcpy(slot, array.data, array.count * stride);
        }
	} else {
		while true {
			success: bool;
			remainder, success = parse_value(remainder, null, null, ignore_unknown, "", rename=rename);
			if !success	return remainder, false;

			remainder = trim_left(remainder, WHITESPACE_CHARS);
			if remainder[0] != #char ","	break;
			remainder = advance(remainder);
			remainder = trim_left(remainder, WHITESPACE_CHARS);
		}
	}

	if remainder[0] != #char "]"	return remainder, false;
	remainder = advance(remainder);
	return remainder, true;
}

Member_Offset :: struct {
    member: *Type_Info_Struct_Member;
    offset_in_bytes: s64;
}
// This procedure is somewhat copied from Basic.get_field.
fill_member_table :: (table: *Table(string, Member_Offset), info: *Type_Info_Struct, rename: Rename_Proc, base_offset := 0) {
    // First pass: Don't try recursing.
    for * member: info.members {
        name := rename(member);
        table_set(table, name, .{member, base_offset + member.offset_in_bytes});
    }

    // Second pass: See if we can get something recursively.
    for * info.members {
        if (it.flags & .USING) && (it.type.type == .STRUCT) {
            fill_member_table(table, cast(*Type_Info_Struct)it.type, rename, base_offset + it.offset_in_bytes);
        }
    }
}


parse_object :: (str: string, slot: *u8, info: *Type_Info_Struct, ignore_unknown: bool, rename: Rename_Proc) -> remainder: string, success: bool {
	assert(str[0] == #char "{", "Invalid object start %", str);
	remainder := advance(str);
	remainder = trim_left(remainder, WHITESPACE_CHARS);
	if remainder[0] == #char "}" {
		remainder = advance(remainder);
		return remainder, true;
	}

    // @Speed: Building this table every time is pretty silly.
    // We should probably either not build it at all or cache it somewhere.
	member_table: Table(string, Member_Offset);
	init(*member_table);
	defer deinit(*member_table);

	if info fill_member_table(*member_table, info, rename);

	while true {
		if remainder[0] != #char "\""	return remainder, false;

		key: string;
		success: bool;
		key, remainder, success = parse_string(remainder);
		if !success		return remainder, false;
		defer free(key);

		member_offset, member_found := table_find(*member_table, key);

		member_slot: *u8;
		member_info: *Type_Info;
		if member_found {
			member_slot = slot + member_offset.offset_in_bytes;
			member_info = member_offset.member.type;
		} else if !ignore_unknown {
			log_error("Missing member % in %", key, <<info);
			return remainder, false;
		}

		remainder = trim_left(remainder, WHITESPACE_CHARS);
		if remainder[0] != #char ":"	return remainder, false;
		remainder = advance(remainder);
		remainder = trim_left(remainder, WHITESPACE_CHARS);
		remainder, success = parse_value(remainder, member_slot, member_info, ignore_unknown, key, rename);
		if !success		return remainder, false;

		remainder = trim_left(remainder, WHITESPACE_CHARS);
		if remainder[0] != #char ","	break;
		remainder = advance(remainder);
		remainder = trim_left(remainder, WHITESPACE_CHARS);
	}

	if remainder[0] != #char "}"	return remainder, false;
	remainder = advance(remainder);
	return remainder, true;
}

parse_and_write_integer :: (info: *Type_Info_Integer, pointer: *void, string_value: string) -> bool, remainder: string {
    if info.signed {
        success, remainder := parse_and_write_integer(info, pointer, string_value, signed = true);
        return success, remainder;
    } else {
        success, remainder := parse_and_write_integer(info, pointer, string_value, signed = false);
        return success, remainder;
    }
}

parse_and_write_integer :: (info: *Type_Info_Integer, pointer: *void, string_value: string, $signed: bool) -> bool, remainder: string {
    #if signed {
        Int_Type :: s64;
    } else {
        Int_Type :: u64;
    }

    int_value, int_success, remainder := string_to_int(string_value, T = Int_Type);
    if !int_success {
        #if signed {
            log_error("Could not parse \"%\" as an integer.", string_value);
        } else {
            log_error("Could not parse \"%\" as an unsigned integer.", string_value);
        }
        return false, remainder;
    }

    valid, low, high := Reflection.range_check_and_store(int_value, info, pointer);

    if !valid {
        log_error("The value '%' is out of range. (It must be between % and %.)", int_value, low, high);
        return false, remainder;
    }

    return true, remainder;
}

Reflection :: #import "Reflection";

// Copied from Reflection, which doesn’t contain it anymore.
maybe_grow :: (array: *Resizable_Array, element_size: s64) {
	if array.count >= array.allocated {
		reserve := 2 * array.allocated;
		if reserve < 8  reserve = 8;

		if !array.allocator.proc {
			if context.allocator.proc {
				array.allocator      = context.allocator;
			} else {
				array.allocator      = context.default_allocator;
			}
		}

		array.data = realloc(array.data, reserve * element_size, array.allocated * element_size,, allocator = array.allocator);
		assert(array.data != null); // Program will die if we couldn't get memory. We can think about an alternative strategy, but it's hard to know what would be reasonable.

		array.allocated = reserve;
	}
}

// Generic JSON parsing/writing functions. Result is always a JSON_Value,
// which is awful to read and even more awful to create for complex structures.
// But it’s useful for some cases where re-creating the whole JSON structure as
// custom Jai struct types is inconvenient or not possible.

// This generic interface was the very first part I wrote in Jai and hasn’t been thorougly tested.
// Tread with care. There may be dragons.

JSON_Type :: enum u8 {
	NULL :: 0;
	BOOLEAN :: 1;
	NUMBER :: 3;
	STRING :: 2;
	ARRAY :: 5;
	OBJECT :: 4;
}

JSON_Value :: struct {
	type: JSON_Type;
	union {
		boolean: bool;
		number: float64;
		str: string;
		array: [] JSON_Value;
		object: *JSON_Object;
	};
}

JSON_Object :: Table(string, JSON_Value);

json_free :: (using val: JSON_Value) {
	if #complete type == {
		case .NULL;
		case .BOOLEAN;
		case .NUMBER;

		case .STRING;
			free(str);
		case .ARRAY;
			for array {
				json_free(it);
			}
			array_free(array);
		case .OBJECT;
			for object {
				free(it_index);
				json_free(it);
			}
			deinit(object);

			free(object);
	}
}

json_parse_file :: (filename: string) -> success: bool, JSON_Value {
    file_data, success := read_entire_file(filename);
	result: JSON_Value;
	if !success		{
		log_error("Could not read file");
		return false, result;
	}
	defer free(file_data);

	if context.log_level >= .VERBOSE log("Read file: %", success);
	success, result = json_parse_string(file_data);
	return success, result;
}

json_parse_string :: (content: string) -> success: bool, JSON_Value {
    if !content then return false, .{};

	result, remainder, success := parse_value(content);
	if !success		return false, result;

	remainder = trim_left(remainder, WHITESPACE_CHARS);
	if remainder.count {
		log_error("Unexpected trailing characters: %", remainder);
		return false, result;
	}

	return true, result;
}

// For debug purposes
print_val :: (using val: JSON_Value) {
	if #complete type == {
		case .NULL;
			print("null");
		case .BOOLEAN;
			print("%", boolean);
		case .NUMBER;
			print("%", number);
		case .STRING;
			print("\"%\"", str);
		case .ARRAY;
			print("[");
			for array	print_val(it);
			print("]");
		case .OBJECT;
			print("%", <<object);
	}
}

json_value :: (str: string) -> JSON_Value {
	val: JSON_Value;
	val.type =.STRING;
	val.str = str;
	return val;
}

json_value :: (obj: *JSON_Object) -> JSON_Value {
	val: JSON_Value;
	val.type =.OBJECT;
	val.object = obj;
	return val;
}

json_set_null :: (val: *JSON_Value) {
	val.type = .NULL;
}

json_set :: (val: *JSON_Value, value: bool) {
	val.type = .BOOLEAN;
	val.boolean = value;
}

json_set :: (val: *JSON_Value, value: int) {
	val.type = .NUMBER;
	val.number = cast(float64) value;
}

json_set :: (val: *JSON_Value, value: float64) {
	val.type = .NUMBER;
	val.number = value;
}

json_set :: (val: *JSON_Value, value: string) {
	val.type = .STRING;
	val.str = value;
}

json_set :: (val: *JSON_Value, value: [] JSON_Value) {
	val.type = .ARRAY;
	val.array = value;
}

json_set :: (val: *JSON_Value, value: *JSON_Object) {
	val.type = .OBJECT;
	val.object = value;
}

json_write_json_value :: (builder: *String_Builder, using val: JSON_Value, indent_char := "\t", level := 0) {
	if #complete type == {
		case JSON_Type.NULL;
			append(builder, "null");
		case JSON_Type.BOOLEAN;
			append(builder, ifx boolean "true" else "false");
		case JSON_Type.NUMBER;
			print_item_to_builder(builder, number);
		case JSON_Type.STRING;
			json_append_escaped(builder, str);
		case JSON_Type.ARRAY;
			append(builder, "[");
			for array {
				if indent_char.count {
					append(builder, "\n");
					for 0..level	append(builder, indent_char);
				}
				json_write_json_value(builder, it, indent_char, level + 1);
				if it_index != array.count - 1	append(builder, ",");
			}
			if indent_char.count {
				append(builder, "\n");
				for 0..level-1	append(builder, indent_char);
			}
			append(builder, "]");
		case JSON_Type.OBJECT;
			append(builder, "{");
			obj := object;
			keys: [..] string;
			defer array_free(keys);
			array_reserve(*keys, obj.count);
			for v, k: <<obj {
				array_add(*keys, k);
			}
			intro_sort(keys, compare);
			for keys {
				if indent_char.count {
					append(builder, "\n");
					for 0..level	append(builder, indent_char);
				}
				json_append_escaped(builder, it);
				append(builder, ": ");
				v, found := table_find(obj, it);
				assert(found, "Missing table value %", it);
				json_write_json_value(builder, v, indent_char, level + 1);
				if it_index != obj.count - 1	append(builder, ",");
			}
			if indent_char.count {
				append(builder, "\n");
				for 0..level-1	append(builder, indent_char);
			}
			append(builder, "}");
	}
}

json_set :: (obj: *JSON_Object, path: string, val: JSON_Value) -> bool {
	dotpos := find_index_from_left(path, #char ".");
	if dotpos == -1 {
		table_set(obj, path, val);
		return true;
	}

	next := slice(path, 0, dotpos);
	remainder := advance(path, dotpos + 1);
	if !next.count		return false;
	if !remainder.count	return false;

	next_value, success := table_find(obj, next);
	next_obj: *JSON_Object;
	if success {
		if next_value.type != JSON_Type.OBJECT	return false;
		next_obj = xx next_value.object;
	} else {
		next_obj = cast(*JSON_Object) alloc(size_of(JSON_Object));
		memset(next_obj, 0, size_of(JSON_Object));
		next_value = json_value(next_obj);
		table_add(obj, next, next_value);
	}

	return json_set(next_obj, remainder, val);
}

get_as :: (val: JSON_Value, $T: Type) -> T {
	#insert #run () -> string {
		if T == bool {
			return #string END
				assert(val.type == .BOOLEAN, "Expected a % but got %", T, val.type);
				return val.boolean;
			END;
		} else if T == float || T == float64 {
			return #string END
				assert(val.type == .NUMBER, "Expected a % but got %", T, val.type);
				return cast(T) val.number;
			END;
		} else if T == string {
			return #string END
				assert(val.type == .STRING, "Expected a % but got %", T, val.type);
				return val.str;
			END;
		} else if T == [] JSON_Value {
			return #string END
				assert(val.type == .ARRAY, "Expected a % but got %", T, val.type);
				return val.array;
			END;
		} else if T == JSON_Object {
			return #string END
				assert(val.type == .OBJECT, "Expected a % but got %", T, val.type);
				return <<val.object;
			END;
		} else {
			compiler_report("Unsupported type");
			return "";
		}
	}();
}

#scope_module

parse_value :: (to_parse: string) -> JSON_Value, remainder: string, success: bool {
	result: JSON_Value;
	remainder := trim_left(to_parse, WHITESPACE_CHARS);
	success := false;
	if remainder[0] == {
		case #char "n";
			remainder, success = expect_and_slice(remainder, "null");
			if !success		return result, remainder, false;
			json_set_null(*result);
			result.type = JSON_Type.NULL;
			return result, remainder, true;
		case #char "t";
			remainder, success = expect_and_slice(remainder, "true");
			if !success		return result, remainder, false;
			json_set(*result, true);
			return result, remainder, true;
		case #char "f";
			remainder, success = expect_and_slice(remainder, "false");
			if !success		return result, remainder, false;
			json_set(*result, false);
			return result, remainder, true;
		case #char "\"";
			str: string;
			str, remainder, success = parse_string(remainder);
			json_set(*result, str);
		case #char "[";
			result.type = JSON_Type.ARRAY;
			result.array, remainder, success = parse_array(remainder);
		case #char "{";
			obj := cast(*JSON_Object) alloc(size_of(JSON_Object));
			<<obj, remainder, success = parse_object(remainder);
			result = json_value(obj);
		case;
			result.type = JSON_Type.NUMBER;
			result.number, success, remainder = string_to_float64(remainder);
	}

	return result, remainder, success;
}

parse_array:: (str: string) -> result: [] JSON_Value, remainder: string, success: bool {
	assert(str[0] == #char "[", "Invalid object start %", str);
	remainder := advance(str);
	result: [..] JSON_Value;
	remainder = trim_left(remainder, WHITESPACE_CHARS);
	if remainder[0] == #char "]" {
		remainder = advance(remainder);
		return result, remainder, true;
	}

	while true {
		value: JSON_Value;
		success: bool;
		value, remainder, success = parse_value(remainder);
		if !success	return result, remainder, false;

		array_add(*result, value);

		remainder = trim_left(remainder, WHITESPACE_CHARS);
		if remainder[0] != #char ","	break;
		remainder = advance(remainder);
		remainder = trim_left(remainder, WHITESPACE_CHARS);
	}

	if remainder[0] != #char "]"	return result, remainder, false;
	remainder = advance(remainder);
	return result, remainder, true;
}

parse_object :: (str: string) -> result: JSON_Object, remainder: string, success: bool {
	assert(str[0] == #char "{", "Invalid object start %", str);
	remainder := advance(str);
	result: JSON_Object;
	remainder = trim_left(remainder, WHITESPACE_CHARS);
	if remainder[0] == #char "}" {
		remainder = advance(remainder);
		return result, remainder, true;
	}

	init(*result, 32);
	while true {
		if remainder[0] != #char "\""	return result, remainder, false;

		key: string;
		value: JSON_Value;
		success: bool;
		key, remainder, success = parse_string(remainder);
		if !success	return result, remainder, false;

		existing := table_find_pointer(*result, key);
		if existing		return result, remainder, false;

		remainder = trim_left(remainder, WHITESPACE_CHARS);
		if remainder[0] != #char ":"	return result, remainder, false;
		remainder = advance(remainder);
		remainder = trim_left(remainder, WHITESPACE_CHARS);
		value, remainder, success = parse_value(remainder);
		if !success	return result, remainder, false;

		table_add(*result, key, value);

		remainder = trim_left(remainder, WHITESPACE_CHARS);
		if remainder[0] != #char ","	break;
		remainder = advance(remainder);
		remainder = trim_left(remainder, WHITESPACE_CHARS);
	}

	if remainder[0] != #char "}"	return result, remainder, false;
	remainder = advance(remainder);
	return result, remainder, true;
}



#import "Compiler";