String :: struct {
	__private: [8]u8;
}

string_destroy : PtrDestructor;
destroy :: (self: *String) #no_context { 
	string_destroy(self);
}


String_casecmp_to :: (using self: *String, to: String) -> int #c_call {
	method_name := new_string_name("casecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_nocasecmp_to :: (using self: *String, to: String) -> int #c_call {
	method_name := new_string_name("nocasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_naturalcasecmp_to :: (using self: *String, to: String) -> int #c_call {
	method_name := new_string_name("naturalcasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_naturalnocasecmp_to :: (using self: *String, to: String) -> int #c_call {
	method_name := new_string_name("naturalnocasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_filecasecmp_to :: (using self: *String, to: String) -> int #c_call {
	method_name := new_string_name("filecasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_filenocasecmp_to :: (using self: *String, to: String) -> int #c_call {
	method_name := new_string_name("filenocasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_length :: (using self: *String) -> int #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_substr :: (using self: *String, from: int, len: int) -> String #c_call {
	method_name := new_string_name("substr");
	defer destroy(*method_name);
	args : = *void.[*from, *len, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 787537301);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_get_slice :: (using self: *String, delimiter: String, slice: int) -> String #c_call {
	method_name := new_string_name("get_slice");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *slice, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3535100402);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_get_slicec :: (using self: *String, delimiter: int, slice: int) -> String #c_call {
	method_name := new_string_name("get_slicec");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *slice, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 787537301);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_get_slice_count :: (using self: *String, delimiter: String) -> int #c_call {
	method_name := new_string_name("get_slice_count");
	defer destroy(*method_name);
	args : = *void.[*delimiter, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_find :: (using self: *String, what: String, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_findn :: (using self: *String, what: String, from: int) -> int #c_call {
	method_name := new_string_name("findn");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_count :: (using self: *String, what: String, from: int, to: int) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*what, *from, *to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2343087891);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_countn :: (using self: *String, what: String, from: int, to: int) -> int #c_call {
	method_name := new_string_name("countn");
	defer destroy(*method_name);
	args : = *void.[*what, *from, *to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2343087891);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_rfind :: (using self: *String, what: String, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_rfindn :: (using self: *String, what: String, from: int) -> int #c_call {
	method_name := new_string_name("rfindn");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_match :: (using self: *String, expr: String) -> bool #c_call {
	method_name := new_string_name("match");
	defer destroy(*method_name);
	args : = *void.[*expr, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_matchn :: (using self: *String, expr: String) -> bool #c_call {
	method_name := new_string_name("matchn");
	defer destroy(*method_name);
	args : = *void.[*expr, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_begins_with :: (using self: *String, text: String) -> bool #c_call {
	method_name := new_string_name("begins_with");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_ends_with :: (using self: *String, text: String) -> bool #c_call {
	method_name := new_string_name("ends_with");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_subsequence_of :: (using self: *String, text: String) -> bool #c_call {
	method_name := new_string_name("is_subsequence_of");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_subsequence_ofn :: (using self: *String, text: String) -> bool #c_call {
	method_name := new_string_name("is_subsequence_ofn");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_bigrams :: (using self: *String) -> PackedStringArray #c_call {
	method_name := new_string_name("bigrams");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedStringArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 747180633);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_similarity :: (using self: *String, text: String) -> float #c_call {
	method_name := new_string_name("similarity");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2697460964);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_format :: (using self: *String, values: Variant, placeholder: String) -> String #c_call {
	method_name := new_string_name("format");
	defer destroy(*method_name);
	args : = *void.[*values, *placeholder, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3212199029);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_replace :: (using self: *String, what: String, forwhat: String) -> String #c_call {
	method_name := new_string_name("replace");
	defer destroy(*method_name);
	args : = *void.[*what, *forwhat, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1340436205);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_replacen :: (using self: *String, what: String, forwhat: String) -> String #c_call {
	method_name := new_string_name("replacen");
	defer destroy(*method_name);
	args : = *void.[*what, *forwhat, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1340436205);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_repeat :: (using self: *String, count: int) -> String #c_call {
	method_name := new_string_name("repeat");
	defer destroy(*method_name);
	args : = *void.[*count, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_reverse :: (using self: *String) -> String #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_insert :: (using self: *String, position: int, what: String) -> String #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*position, *what, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 248737229);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_erase :: (using self: *String, position: int, chars: int) -> String #c_call {
	method_name := new_string_name("erase");
	defer destroy(*method_name);
	args : = *void.[*position, *chars, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 787537301);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_capitalize :: (using self: *String) -> String #c_call {
	method_name := new_string_name("capitalize");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_camel_case :: (using self: *String) -> String #c_call {
	method_name := new_string_name("to_camel_case");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_pascal_case :: (using self: *String) -> String #c_call {
	method_name := new_string_name("to_pascal_case");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_snake_case :: (using self: *String) -> String #c_call {
	method_name := new_string_name("to_snake_case");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_split :: (using self: *String, delimiter: String, allow_empty: bool, maxsplit: int) -> PackedStringArray #c_call {
	method_name := new_string_name("split");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *allow_empty, *maxsplit, ];
	ret: PackedStringArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1252735785);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_rsplit :: (using self: *String, delimiter: String, allow_empty: bool, maxsplit: int) -> PackedStringArray #c_call {
	method_name := new_string_name("rsplit");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *allow_empty, *maxsplit, ];
	ret: PackedStringArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1252735785);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_split_floats :: (using self: *String, delimiter: String, allow_empty: bool) -> PackedFloat64Array #c_call {
	method_name := new_string_name("split_floats");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *allow_empty, ];
	ret: PackedFloat64Array;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2092079095);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_join :: (using self: *String, parts: PackedStringArray) -> String #c_call {
	method_name := new_string_name("join");
	defer destroy(*method_name);
	args : = *void.[*parts, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3595973238);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_upper :: (using self: *String) -> String #c_call {
	method_name := new_string_name("to_upper");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_lower :: (using self: *String) -> String #c_call {
	method_name := new_string_name("to_lower");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_left :: (using self: *String, length: int) -> String #c_call {
	method_name := new_string_name("left");
	defer destroy(*method_name);
	args : = *void.[*length, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_right :: (using self: *String, length: int) -> String #c_call {
	method_name := new_string_name("right");
	defer destroy(*method_name);
	args : = *void.[*length, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_strip_edges :: (using self: *String, left: bool, right: bool) -> String #c_call {
	method_name := new_string_name("strip_edges");
	defer destroy(*method_name);
	args : = *void.[*left, *right, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 907855311);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_strip_escapes :: (using self: *String) -> String #c_call {
	method_name := new_string_name("strip_escapes");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_lstrip :: (using self: *String, chars: String) -> String #c_call {
	method_name := new_string_name("lstrip");
	defer destroy(*method_name);
	args : = *void.[*chars, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_rstrip :: (using self: *String, chars: String) -> String #c_call {
	method_name := new_string_name("rstrip");
	defer destroy(*method_name);
	args : = *void.[*chars, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_get_extension :: (using self: *String) -> String #c_call {
	method_name := new_string_name("get_extension");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_get_basename :: (using self: *String) -> String #c_call {
	method_name := new_string_name("get_basename");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_path_join :: (using self: *String, file: String) -> String #c_call {
	method_name := new_string_name("path_join");
	defer destroy(*method_name);
	args : = *void.[*file, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_unicode_at :: (using self: *String, at: int) -> int #c_call {
	method_name := new_string_name("unicode_at");
	defer destroy(*method_name);
	args : = *void.[*at, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_indent :: (using self: *String, prefix: String) -> String #c_call {
	method_name := new_string_name("indent");
	defer destroy(*method_name);
	args : = *void.[*prefix, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_dedent :: (using self: *String) -> String #c_call {
	method_name := new_string_name("dedent");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_hash :: (using self: *String) -> int #c_call {
	method_name := new_string_name("hash");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_md5_text :: (using self: *String) -> String #c_call {
	method_name := new_string_name("md5_text");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_sha1_text :: (using self: *String) -> String #c_call {
	method_name := new_string_name("sha1_text");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_sha256_text :: (using self: *String) -> String #c_call {
	method_name := new_string_name("sha256_text");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_md5_buffer :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("md5_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_sha1_buffer :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("sha1_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_sha256_buffer :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("sha256_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_empty :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_contains :: (using self: *String, what: String) -> bool #c_call {
	method_name := new_string_name("contains");
	defer destroy(*method_name);
	args : = *void.[*what, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_containsn :: (using self: *String, what: String) -> bool #c_call {
	method_name := new_string_name("containsn");
	defer destroy(*method_name);
	args : = *void.[*what, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_absolute_path :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_absolute_path");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_relative_path :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_relative_path");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_simplify_path :: (using self: *String) -> String #c_call {
	method_name := new_string_name("simplify_path");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_get_base_dir :: (using self: *String) -> String #c_call {
	method_name := new_string_name("get_base_dir");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_get_file :: (using self: *String) -> String #c_call {
	method_name := new_string_name("get_file");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_xml_escape :: (using self: *String, escape_quotes: bool) -> String #c_call {
	method_name := new_string_name("xml_escape");
	defer destroy(*method_name);
	args : = *void.[*escape_quotes, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3429816538);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_xml_unescape :: (using self: *String) -> String #c_call {
	method_name := new_string_name("xml_unescape");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_uri_encode :: (using self: *String) -> String #c_call {
	method_name := new_string_name("uri_encode");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_uri_decode :: (using self: *String) -> String #c_call {
	method_name := new_string_name("uri_decode");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_c_escape :: (using self: *String) -> String #c_call {
	method_name := new_string_name("c_escape");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_c_unescape :: (using self: *String) -> String #c_call {
	method_name := new_string_name("c_unescape");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_json_escape :: (using self: *String) -> String #c_call {
	method_name := new_string_name("json_escape");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_validate_node_name :: (using self: *String) -> String #c_call {
	method_name := new_string_name("validate_node_name");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_validate_filename :: (using self: *String) -> String #c_call {
	method_name := new_string_name("validate_filename");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_valid_identifier :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_valid_identifier");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_valid_int :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_valid_int");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_valid_float :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_valid_float");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_valid_hex_number :: (using self: *String, with_prefix: bool) -> bool #c_call {
	method_name := new_string_name("is_valid_hex_number");
	defer destroy(*method_name);
	args : = *void.[*with_prefix, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 593672999);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_valid_html_color :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_valid_html_color");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_valid_ip_address :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_valid_ip_address");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_is_valid_filename :: (using self: *String) -> bool #c_call {
	method_name := new_string_name("is_valid_filename");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_int :: (using self: *String) -> int #c_call {
	method_name := new_string_name("to_int");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_float :: (using self: *String) -> float #c_call {
	method_name := new_string_name("to_float");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_hex_to_int :: (using self: *String) -> int #c_call {
	method_name := new_string_name("hex_to_int");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_bin_to_int :: (using self: *String) -> int #c_call {
	method_name := new_string_name("bin_to_int");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_lpad :: (using self: *String, min_length: int, character: String) -> String #c_call {
	method_name := new_string_name("lpad");
	defer destroy(*method_name);
	args : = *void.[*min_length, *character, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 248737229);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_rpad :: (using self: *String, min_length: int, character: String) -> String #c_call {
	method_name := new_string_name("rpad");
	defer destroy(*method_name);
	args : = *void.[*min_length, *character, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 248737229);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_pad_decimals :: (using self: *String, digits: int) -> String #c_call {
	method_name := new_string_name("pad_decimals");
	defer destroy(*method_name);
	args : = *void.[*digits, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_pad_zeros :: (using self: *String, digits: int) -> String #c_call {
	method_name := new_string_name("pad_zeros");
	defer destroy(*method_name);
	args : = *void.[*digits, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_trim_prefix :: (using self: *String, prefix: String) -> String #c_call {
	method_name := new_string_name("trim_prefix");
	defer destroy(*method_name);
	args : = *void.[*prefix, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_trim_suffix :: (using self: *String, suffix: String) -> String #c_call {
	method_name := new_string_name("trim_suffix");
	defer destroy(*method_name);
	args : = *void.[*suffix, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_ascii_buffer :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("to_ascii_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_utf8_buffer :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("to_utf8_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_utf16_buffer :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("to_utf16_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_utf32_buffer :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("to_utf32_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_hex_decode :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("hex_decode");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_to_wchar_buffer :: (using self: *String) -> PackedByteArray #c_call {
	method_name := new_string_name("to_wchar_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_num_scientific :: (using self: *String, number: float) -> String #c_call {
	method_name := new_string_name("num_scientific");
	defer destroy(*method_name);
	args : = *void.[*number, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2710373411);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_num :: (using self: *String, number: float, decimals: int) -> String #c_call {
	method_name := new_string_name("num");
	defer destroy(*method_name);
	args : = *void.[*number, *decimals, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 1555901022);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_num_int64 :: (using self: *String, number: int, base: int, capitalize_hex: bool) -> String #c_call {
	method_name := new_string_name("num_int64");
	defer destroy(*method_name);
	args : = *void.[*number, *base, *capitalize_hex, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2111271071);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_num_uint64 :: (using self: *String, number: int, base: int, capitalize_hex: bool) -> String #c_call {
	method_name := new_string_name("num_uint64");
	defer destroy(*method_name);
	args : = *void.[*number, *base, *capitalize_hex, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 2111271071);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_chr :: (using self: *String, char: int) -> String #c_call {
	method_name := new_string_name("chr");
	defer destroy(*method_name);
	args : = *void.[*char, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 897497541);
	func(self, args.data, *ret, args.count);
	return ret;
}

String_humanize_size :: (using self: *String, size: int) -> String #c_call {
	method_name := new_string_name("humanize_size");
	defer destroy(*method_name);
	args : = *void.[*size, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING, *method_name, 897497541);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2 :: struct {
	x: float;
	y: float;

	Axis :: enum {
		AXIS_X :: 0;
		AXIS_Y :: 1;
	}
}

Vector2_angle :: (using self: *Vector2) -> float #c_call {
	method_name := new_string_name("angle");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_angle_to :: (using self: *Vector2, to: Vector2) -> float #c_call {
	method_name := new_string_name("angle_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3819070308);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_angle_to_point :: (using self: *Vector2, to: Vector2) -> float #c_call {
	method_name := new_string_name("angle_to_point");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3819070308);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_direction_to :: (using self: *Vector2, to: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("direction_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_distance_to :: (using self: *Vector2, to: Vector2) -> float #c_call {
	method_name := new_string_name("distance_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3819070308);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_distance_squared_to :: (using self: *Vector2, to: Vector2) -> float #c_call {
	method_name := new_string_name("distance_squared_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3819070308);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_length :: (using self: *Vector2) -> float #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_length_squared :: (using self: *Vector2) -> float #c_call {
	method_name := new_string_name("length_squared");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_limit_length :: (using self: *Vector2, length: float) -> Vector2 #c_call {
	method_name := new_string_name("limit_length");
	defer destroy(*method_name);
	args : = *void.[*length, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2544004089);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_normalized :: (using self: *Vector2) -> Vector2 #c_call {
	method_name := new_string_name("normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_is_normalized :: (using self: *Vector2) -> bool #c_call {
	method_name := new_string_name("is_normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_is_equal_approx :: (using self: *Vector2, to: Vector2) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3190634762);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_is_zero_approx :: (using self: *Vector2) -> bool #c_call {
	method_name := new_string_name("is_zero_approx");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_is_finite :: (using self: *Vector2) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_posmod :: (using self: *Vector2, mod: float) -> Vector2 #c_call {
	method_name := new_string_name("posmod");
	defer destroy(*method_name);
	args : = *void.[*mod, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2544004089);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_posmodv :: (using self: *Vector2, modv: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("posmodv");
	defer destroy(*method_name);
	args : = *void.[*modv, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_project :: (using self: *Vector2, b: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("project");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_lerp :: (using self: *Vector2, to: Vector2, weight: float) -> Vector2 #c_call {
	method_name := new_string_name("lerp");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 4250033116);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_slerp :: (using self: *Vector2, to: Vector2, weight: float) -> Vector2 #c_call {
	method_name := new_string_name("slerp");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 4250033116);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_cubic_interpolate :: (using self: *Vector2, b: Vector2, pre_a: Vector2, post_b: Vector2, weight: float) -> Vector2 #c_call {
	method_name := new_string_name("cubic_interpolate");
	defer destroy(*method_name);
	args : = *void.[*b, *pre_a, *post_b, *weight, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 193522989);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_cubic_interpolate_in_time :: (using self: *Vector2, b: Vector2, pre_a: Vector2, post_b: Vector2, weight: float, b_t: float, pre_a_t: float, post_b_t: float) -> Vector2 #c_call {
	method_name := new_string_name("cubic_interpolate_in_time");
	defer destroy(*method_name);
	args : = *void.[*b, *pre_a, *post_b, *weight, *b_t, *pre_a_t, *post_b_t, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 1957055074);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_bezier_interpolate :: (using self: *Vector2, control_1: Vector2, control_2: Vector2, end: Vector2, t: float) -> Vector2 #c_call {
	method_name := new_string_name("bezier_interpolate");
	defer destroy(*method_name);
	args : = *void.[*control_1, *control_2, *end, *t, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 193522989);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_bezier_derivative :: (using self: *Vector2, control_1: Vector2, control_2: Vector2, end: Vector2, t: float) -> Vector2 #c_call {
	method_name := new_string_name("bezier_derivative");
	defer destroy(*method_name);
	args : = *void.[*control_1, *control_2, *end, *t, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 193522989);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_max_axis_index :: (using self: *Vector2) -> int #c_call {
	method_name := new_string_name("max_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_min_axis_index :: (using self: *Vector2) -> int #c_call {
	method_name := new_string_name("min_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_move_toward :: (using self: *Vector2, to: Vector2, delta: float) -> Vector2 #c_call {
	method_name := new_string_name("move_toward");
	defer destroy(*method_name);
	args : = *void.[*to, *delta, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 4250033116);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_rotated :: (using self: *Vector2, angle: float) -> Vector2 #c_call {
	method_name := new_string_name("rotated");
	defer destroy(*method_name);
	args : = *void.[*angle, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2544004089);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_orthogonal :: (using self: *Vector2) -> Vector2 #c_call {
	method_name := new_string_name("orthogonal");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_floor :: (using self: *Vector2) -> Vector2 #c_call {
	method_name := new_string_name("floor");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_ceil :: (using self: *Vector2) -> Vector2 #c_call {
	method_name := new_string_name("ceil");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_round :: (using self: *Vector2) -> Vector2 #c_call {
	method_name := new_string_name("round");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_aspect :: (using self: *Vector2) -> float #c_call {
	method_name := new_string_name("aspect");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_dot :: (using self: *Vector2, with: Vector2) -> float #c_call {
	method_name := new_string_name("dot");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3819070308);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_slide :: (using self: *Vector2, n: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("slide");
	defer destroy(*method_name);
	args : = *void.[*n, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_bounce :: (using self: *Vector2, n: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("bounce");
	defer destroy(*method_name);
	args : = *void.[*n, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_reflect :: (using self: *Vector2, line: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("reflect");
	defer destroy(*method_name);
	args : = *void.[*line, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_cross :: (using self: *Vector2, with: Vector2) -> float #c_call {
	method_name := new_string_name("cross");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3819070308);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_abs :: (using self: *Vector2) -> Vector2 #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_sign :: (using self: *Vector2) -> Vector2 #c_call {
	method_name := new_string_name("sign");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_clamp :: (using self: *Vector2, min: Vector2, max: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("clamp");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 318031021);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_clampf :: (using self: *Vector2, min: float, max: float) -> Vector2 #c_call {
	method_name := new_string_name("clampf");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 3464402636);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_snapped :: (using self: *Vector2, step: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("snapped");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_snappedf :: (using self: *Vector2, step: float) -> Vector2 #c_call {
	method_name := new_string_name("snappedf");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2544004089);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_min :: (using self: *Vector2, with: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("min");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_minf :: (using self: *Vector2, with: float) -> Vector2 #c_call {
	method_name := new_string_name("minf");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2544004089);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_max :: (using self: *Vector2, with: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("max");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_maxf :: (using self: *Vector2, with: float) -> Vector2 #c_call {
	method_name := new_string_name("maxf");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 2544004089);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2_from_angle :: (using self: *Vector2, angle: float) -> Vector2 #c_call {
	method_name := new_string_name("from_angle");
	defer destroy(*method_name);
	args : = *void.[*angle, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR2, *method_name, 889263119);
	func(self, args.data, *ret, args.count);
	return ret;
}

VECTOR2_AXIS_X :: 0;
VECTOR2_AXIS_Y :: 1;
VECTOR2_ZERO :: Vector2.{0, 0};
VECTOR2_ONE :: Vector2.{1, 1};
VECTOR2_INF :: Vector2.{FLOAT32_INFINITY, FLOAT32_INFINITY};
VECTOR2_LEFT :: Vector2.{-1, 0};
VECTOR2_RIGHT :: Vector2.{1, 0};
VECTOR2_UP :: Vector2.{0, -1};
VECTOR2_DOWN :: Vector2.{0, 1};

Vector2i :: struct {
	x: s32;
	y: s32;

	Axis :: enum {
		AXIS_X :: 0;
		AXIS_Y :: 1;
	}
}

Vector2i_aspect :: (using self: *Vector2i) -> float #c_call {
	method_name := new_string_name("aspect");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_max_axis_index :: (using self: *Vector2i) -> int #c_call {
	method_name := new_string_name("max_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_min_axis_index :: (using self: *Vector2i) -> int #c_call {
	method_name := new_string_name("min_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_distance_to :: (using self: *Vector2i, to: Vector2i) -> float #c_call {
	method_name := new_string_name("distance_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 707501214);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_distance_squared_to :: (using self: *Vector2i, to: Vector2i) -> int #c_call {
	method_name := new_string_name("distance_squared_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 1130029528);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_length :: (using self: *Vector2i) -> float #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_length_squared :: (using self: *Vector2i) -> int #c_call {
	method_name := new_string_name("length_squared");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_sign :: (using self: *Vector2i) -> Vector2i #c_call {
	method_name := new_string_name("sign");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 3444277866);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_abs :: (using self: *Vector2i) -> Vector2i #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 3444277866);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_clamp :: (using self: *Vector2i, min: Vector2i, max: Vector2i) -> Vector2i #c_call {
	method_name := new_string_name("clamp");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 186568249);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_clampi :: (using self: *Vector2i, min: int, max: int) -> Vector2i #c_call {
	method_name := new_string_name("clampi");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 3686769569);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_snapped :: (using self: *Vector2i, step: Vector2i) -> Vector2i #c_call {
	method_name := new_string_name("snapped");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 1735278196);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_snappedi :: (using self: *Vector2i, step: int) -> Vector2i #c_call {
	method_name := new_string_name("snappedi");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 2161988953);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_min :: (using self: *Vector2i, with: Vector2i) -> Vector2i #c_call {
	method_name := new_string_name("min");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 1735278196);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_mini :: (using self: *Vector2i, with: int) -> Vector2i #c_call {
	method_name := new_string_name("mini");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 2161988953);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_max :: (using self: *Vector2i, with: Vector2i) -> Vector2i #c_call {
	method_name := new_string_name("max");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 1735278196);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector2i_maxi :: (using self: *Vector2i, with: int) -> Vector2i #c_call {
	method_name := new_string_name("maxi");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.VECTOR2I, *method_name, 2161988953);
	func(self, args.data, *ret, args.count);
	return ret;
}

VECTOR2I_AXIS_X :: 0;
VECTOR2I_AXIS_Y :: 1;
VECTOR2I_ZERO :: Vector2i.{0, 0};
VECTOR2I_ONE :: Vector2i.{1, 1};
VECTOR2I_MIN :: Vector2i.{-2147483648, -2147483648};
VECTOR2I_MAX :: Vector2i.{2147483647, 2147483647};
VECTOR2I_LEFT :: Vector2i.{-1, 0};
VECTOR2I_RIGHT :: Vector2i.{1, 0};
VECTOR2I_UP :: Vector2i.{0, -1};
VECTOR2I_DOWN :: Vector2i.{0, 1};

Rect2 :: struct {
	position: Vector2;
	size: Vector2;
}

Rect2_get_center :: (using self: *Rect2) -> Vector2 #c_call {
	method_name := new_string_name("get_center");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_get_area :: (using self: *Rect2) -> float #c_call {
	method_name := new_string_name("get_area");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_has_area :: (using self: *Rect2) -> bool #c_call {
	method_name := new_string_name("has_area");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_has_point :: (using self: *Rect2, point: Vector2) -> bool #c_call {
	method_name := new_string_name("has_point");
	defer destroy(*method_name);
	args : = *void.[*point, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 3190634762);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_is_equal_approx :: (using self: *Rect2, rect: Rect2) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*rect, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 1908192260);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_is_finite :: (using self: *Rect2) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_intersects :: (using self: *Rect2, b: Rect2, include_borders: bool) -> bool #c_call {
	method_name := new_string_name("intersects");
	defer destroy(*method_name);
	args : = *void.[*b, *include_borders, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 819294880);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_encloses :: (using self: *Rect2, b: Rect2) -> bool #c_call {
	method_name := new_string_name("encloses");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 1908192260);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_intersection :: (using self: *Rect2, b: Rect2) -> Rect2 #c_call {
	method_name := new_string_name("intersection");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: Rect2;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 2282977743);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_merge :: (using self: *Rect2, b: Rect2) -> Rect2 #c_call {
	method_name := new_string_name("merge");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: Rect2;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 2282977743);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_expand :: (using self: *Rect2, to: Vector2) -> Rect2 #c_call {
	method_name := new_string_name("expand");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: Rect2;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 293272265);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_grow :: (using self: *Rect2, amount: float) -> Rect2 #c_call {
	method_name := new_string_name("grow");
	defer destroy(*method_name);
	args : = *void.[*amount, ];
	ret: Rect2;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 39664498);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_grow_side :: (using self: *Rect2, side: int, amount: float) -> Rect2 #c_call {
	method_name := new_string_name("grow_side");
	defer destroy(*method_name);
	args : = *void.[*side, *amount, ];
	ret: Rect2;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 4177736158);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_grow_individual :: (using self: *Rect2, left: float, top: float, right: float, bottom: float) -> Rect2 #c_call {
	method_name := new_string_name("grow_individual");
	defer destroy(*method_name);
	args : = *void.[*left, *top, *right, *bottom, ];
	ret: Rect2;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 3203390369);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2_abs :: (using self: *Rect2) -> Rect2 #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Rect2;
	func := variant_get_ptr_builtin_method(.RECT2, *method_name, 3107653634);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i :: struct {
	position: Vector2i;
	size: Vector2i;
}

Rect2i_get_center :: (using self: *Rect2i) -> Vector2i #c_call {
	method_name := new_string_name("get_center");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2i;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 3444277866);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_get_area :: (using self: *Rect2i) -> int #c_call {
	method_name := new_string_name("get_area");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_has_area :: (using self: *Rect2i) -> bool #c_call {
	method_name := new_string_name("has_area");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_has_point :: (using self: *Rect2i, point: Vector2i) -> bool #c_call {
	method_name := new_string_name("has_point");
	defer destroy(*method_name);
	args : = *void.[*point, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 328189994);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_intersects :: (using self: *Rect2i, b: Rect2i) -> bool #c_call {
	method_name := new_string_name("intersects");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 3434691493);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_encloses :: (using self: *Rect2i, b: Rect2i) -> bool #c_call {
	method_name := new_string_name("encloses");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 3434691493);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_intersection :: (using self: *Rect2i, b: Rect2i) -> Rect2i #c_call {
	method_name := new_string_name("intersection");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: Rect2i;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 717431873);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_merge :: (using self: *Rect2i, b: Rect2i) -> Rect2i #c_call {
	method_name := new_string_name("merge");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: Rect2i;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 717431873);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_expand :: (using self: *Rect2i, to: Vector2i) -> Rect2i #c_call {
	method_name := new_string_name("expand");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: Rect2i;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 1355196872);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_grow :: (using self: *Rect2i, amount: int) -> Rect2i #c_call {
	method_name := new_string_name("grow");
	defer destroy(*method_name);
	args : = *void.[*amount, ];
	ret: Rect2i;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 1578070074);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_grow_side :: (using self: *Rect2i, side: int, amount: int) -> Rect2i #c_call {
	method_name := new_string_name("grow_side");
	defer destroy(*method_name);
	args : = *void.[*side, *amount, ];
	ret: Rect2i;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 3191154199);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_grow_individual :: (using self: *Rect2i, left: int, top: int, right: int, bottom: int) -> Rect2i #c_call {
	method_name := new_string_name("grow_individual");
	defer destroy(*method_name);
	args : = *void.[*left, *top, *right, *bottom, ];
	ret: Rect2i;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 1893743416);
	func(self, args.data, *ret, args.count);
	return ret;
}

Rect2i_abs :: (using self: *Rect2i) -> Rect2i #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Rect2i;
	func := variant_get_ptr_builtin_method(.RECT2I, *method_name, 1469025700);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3 :: struct {
	x: float;
	y: float;
	z: float;

	Axis :: enum {
		AXIS_X :: 0;
		AXIS_Y :: 1;
		AXIS_Z :: 2;
	}
}

Vector3_min_axis_index :: (using self: *Vector3) -> int #c_call {
	method_name := new_string_name("min_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_max_axis_index :: (using self: *Vector3) -> int #c_call {
	method_name := new_string_name("max_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_angle_to :: (using self: *Vector3, to: Vector3) -> float #c_call {
	method_name := new_string_name("angle_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1047977935);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_signed_angle_to :: (using self: *Vector3, to: Vector3, axis: Vector3) -> float #c_call {
	method_name := new_string_name("signed_angle_to");
	defer destroy(*method_name);
	args : = *void.[*to, *axis, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2781412522);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_direction_to :: (using self: *Vector3, to: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("direction_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_distance_to :: (using self: *Vector3, to: Vector3) -> float #c_call {
	method_name := new_string_name("distance_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1047977935);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_distance_squared_to :: (using self: *Vector3, to: Vector3) -> float #c_call {
	method_name := new_string_name("distance_squared_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1047977935);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_length :: (using self: *Vector3) -> float #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_length_squared :: (using self: *Vector3) -> float #c_call {
	method_name := new_string_name("length_squared");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_limit_length :: (using self: *Vector3, length: float) -> Vector3 #c_call {
	method_name := new_string_name("limit_length");
	defer destroy(*method_name);
	args : = *void.[*length, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 514930144);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_normalized :: (using self: *Vector3) -> Vector3 #c_call {
	method_name := new_string_name("normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_is_normalized :: (using self: *Vector3) -> bool #c_call {
	method_name := new_string_name("is_normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_is_equal_approx :: (using self: *Vector3, to: Vector3) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1749054343);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_is_zero_approx :: (using self: *Vector3) -> bool #c_call {
	method_name := new_string_name("is_zero_approx");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_is_finite :: (using self: *Vector3) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_inverse :: (using self: *Vector3) -> Vector3 #c_call {
	method_name := new_string_name("inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_clamp :: (using self: *Vector3, min: Vector3, max: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("clamp");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 4145107892);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_clampf :: (using self: *Vector3, min: float, max: float) -> Vector3 #c_call {
	method_name := new_string_name("clampf");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2329594628);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_snapped :: (using self: *Vector3, step: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("snapped");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_snappedf :: (using self: *Vector3, step: float) -> Vector3 #c_call {
	method_name := new_string_name("snappedf");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 514930144);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_rotated :: (using self: *Vector3, axis: Vector3, angle: float) -> Vector3 #c_call {
	method_name := new_string_name("rotated");
	defer destroy(*method_name);
	args : = *void.[*axis, *angle, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1682608829);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_lerp :: (using self: *Vector3, to: Vector3, weight: float) -> Vector3 #c_call {
	method_name := new_string_name("lerp");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1682608829);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_slerp :: (using self: *Vector3, to: Vector3, weight: float) -> Vector3 #c_call {
	method_name := new_string_name("slerp");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1682608829);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_cubic_interpolate :: (using self: *Vector3, b: Vector3, pre_a: Vector3, post_b: Vector3, weight: float) -> Vector3 #c_call {
	method_name := new_string_name("cubic_interpolate");
	defer destroy(*method_name);
	args : = *void.[*b, *pre_a, *post_b, *weight, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2597922253);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_cubic_interpolate_in_time :: (using self: *Vector3, b: Vector3, pre_a: Vector3, post_b: Vector3, weight: float, b_t: float, pre_a_t: float, post_b_t: float) -> Vector3 #c_call {
	method_name := new_string_name("cubic_interpolate_in_time");
	defer destroy(*method_name);
	args : = *void.[*b, *pre_a, *post_b, *weight, *b_t, *pre_a_t, *post_b_t, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 3256682901);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_bezier_interpolate :: (using self: *Vector3, control_1: Vector3, control_2: Vector3, end: Vector3, t: float) -> Vector3 #c_call {
	method_name := new_string_name("bezier_interpolate");
	defer destroy(*method_name);
	args : = *void.[*control_1, *control_2, *end, *t, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2597922253);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_bezier_derivative :: (using self: *Vector3, control_1: Vector3, control_2: Vector3, end: Vector3, t: float) -> Vector3 #c_call {
	method_name := new_string_name("bezier_derivative");
	defer destroy(*method_name);
	args : = *void.[*control_1, *control_2, *end, *t, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2597922253);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_move_toward :: (using self: *Vector3, to: Vector3, delta: float) -> Vector3 #c_call {
	method_name := new_string_name("move_toward");
	defer destroy(*method_name);
	args : = *void.[*to, *delta, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1682608829);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_dot :: (using self: *Vector3, with: Vector3) -> float #c_call {
	method_name := new_string_name("dot");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1047977935);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_cross :: (using self: *Vector3, with: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("cross");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_outer :: (using self: *Vector3, with: Vector3) -> Basis #c_call {
	method_name := new_string_name("outer");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 3934786792);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_abs :: (using self: *Vector3) -> Vector3 #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_floor :: (using self: *Vector3) -> Vector3 #c_call {
	method_name := new_string_name("floor");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_ceil :: (using self: *Vector3) -> Vector3 #c_call {
	method_name := new_string_name("ceil");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_round :: (using self: *Vector3) -> Vector3 #c_call {
	method_name := new_string_name("round");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_posmod :: (using self: *Vector3, mod: float) -> Vector3 #c_call {
	method_name := new_string_name("posmod");
	defer destroy(*method_name);
	args : = *void.[*mod, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 514930144);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_posmodv :: (using self: *Vector3, modv: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("posmodv");
	defer destroy(*method_name);
	args : = *void.[*modv, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_project :: (using self: *Vector3, b: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("project");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_slide :: (using self: *Vector3, n: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("slide");
	defer destroy(*method_name);
	args : = *void.[*n, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_bounce :: (using self: *Vector3, n: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("bounce");
	defer destroy(*method_name);
	args : = *void.[*n, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_reflect :: (using self: *Vector3, n: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("reflect");
	defer destroy(*method_name);
	args : = *void.[*n, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_sign :: (using self: *Vector3) -> Vector3 #c_call {
	method_name := new_string_name("sign");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_octahedron_encode :: (using self: *Vector3) -> Vector2 #c_call {
	method_name := new_string_name("octahedron_encode");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_min :: (using self: *Vector3, with: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("min");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_minf :: (using self: *Vector3, with: float) -> Vector3 #c_call {
	method_name := new_string_name("minf");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 514930144);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_max :: (using self: *Vector3, with: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("max");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_maxf :: (using self: *Vector3, with: float) -> Vector3 #c_call {
	method_name := new_string_name("maxf");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 514930144);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3_octahedron_decode :: (using self: *Vector3, uv: Vector2) -> Vector3 #c_call {
	method_name := new_string_name("octahedron_decode");
	defer destroy(*method_name);
	args : = *void.[*uv, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.VECTOR3, *method_name, 3991820552);
	func(self, args.data, *ret, args.count);
	return ret;
}

VECTOR3_AXIS_X :: 0;
VECTOR3_AXIS_Y :: 1;
VECTOR3_AXIS_Z :: 2;
VECTOR3_ZERO :: Vector3.{0, 0, 0};
VECTOR3_ONE :: Vector3.{1, 1, 1};
VECTOR3_INF :: Vector3.{FLOAT32_INFINITY, FLOAT32_INFINITY, FLOAT32_INFINITY};
VECTOR3_LEFT :: Vector3.{-1, 0, 0};
VECTOR3_RIGHT :: Vector3.{1, 0, 0};
VECTOR3_UP :: Vector3.{0, 1, 0};
VECTOR3_DOWN :: Vector3.{0, -1, 0};
VECTOR3_FORWARD :: Vector3.{0, 0, -1};
VECTOR3_BACK :: Vector3.{0, 0, 1};
VECTOR3_MODEL_LEFT :: Vector3.{1, 0, 0};
VECTOR3_MODEL_RIGHT :: Vector3.{-1, 0, 0};
VECTOR3_MODEL_TOP :: Vector3.{0, 1, 0};
VECTOR3_MODEL_BOTTOM :: Vector3.{0, -1, 0};
VECTOR3_MODEL_FRONT :: Vector3.{0, 0, 1};
VECTOR3_MODEL_REAR :: Vector3.{0, 0, -1};

Vector3i :: struct {
	x: s32;
	y: s32;
	z: s32;

	Axis :: enum {
		AXIS_X :: 0;
		AXIS_Y :: 1;
		AXIS_Z :: 2;
	}
}

Vector3i_min_axis_index :: (using self: *Vector3i) -> int #c_call {
	method_name := new_string_name("min_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_max_axis_index :: (using self: *Vector3i) -> int #c_call {
	method_name := new_string_name("max_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_distance_to :: (using self: *Vector3i, to: Vector3i) -> float #c_call {
	method_name := new_string_name("distance_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 1975170430);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_distance_squared_to :: (using self: *Vector3i, to: Vector3i) -> int #c_call {
	method_name := new_string_name("distance_squared_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 2947717320);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_length :: (using self: *Vector3i) -> float #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_length_squared :: (using self: *Vector3i) -> int #c_call {
	method_name := new_string_name("length_squared");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_sign :: (using self: *Vector3i) -> Vector3i #c_call {
	method_name := new_string_name("sign");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 3729604559);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_abs :: (using self: *Vector3i) -> Vector3i #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 3729604559);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_clamp :: (using self: *Vector3i, min: Vector3i, max: Vector3i) -> Vector3i #c_call {
	method_name := new_string_name("clamp");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 1086892323);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_clampi :: (using self: *Vector3i, min: int, max: int) -> Vector3i #c_call {
	method_name := new_string_name("clampi");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 1077216921);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_snapped :: (using self: *Vector3i, step: Vector3i) -> Vector3i #c_call {
	method_name := new_string_name("snapped");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 1989319750);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_snappedi :: (using self: *Vector3i, step: int) -> Vector3i #c_call {
	method_name := new_string_name("snappedi");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 2377625641);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_min :: (using self: *Vector3i, with: Vector3i) -> Vector3i #c_call {
	method_name := new_string_name("min");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 1989319750);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_mini :: (using self: *Vector3i, with: int) -> Vector3i #c_call {
	method_name := new_string_name("mini");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 2377625641);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_max :: (using self: *Vector3i, with: Vector3i) -> Vector3i #c_call {
	method_name := new_string_name("max");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 1989319750);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector3i_maxi :: (using self: *Vector3i, with: int) -> Vector3i #c_call {
	method_name := new_string_name("maxi");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector3i;
	func := variant_get_ptr_builtin_method(.VECTOR3I, *method_name, 2377625641);
	func(self, args.data, *ret, args.count);
	return ret;
}

VECTOR3I_AXIS_X :: 0;
VECTOR3I_AXIS_Y :: 1;
VECTOR3I_AXIS_Z :: 2;
VECTOR3I_ZERO :: Vector3i.{0, 0, 0};
VECTOR3I_ONE :: Vector3i.{1, 1, 1};
VECTOR3I_MIN :: Vector3i.{-2147483648, -2147483648, -2147483648};
VECTOR3I_MAX :: Vector3i.{2147483647, 2147483647, 2147483647};
VECTOR3I_LEFT :: Vector3i.{-1, 0, 0};
VECTOR3I_RIGHT :: Vector3i.{1, 0, 0};
VECTOR3I_UP :: Vector3i.{0, 1, 0};
VECTOR3I_DOWN :: Vector3i.{0, -1, 0};
VECTOR3I_FORWARD :: Vector3i.{0, 0, -1};
VECTOR3I_BACK :: Vector3i.{0, 0, 1};

Transform2D :: struct {
	x: Vector2;
	y: Vector2;
	origin: Vector2;
}

Transform2D_inverse :: (using self: *Transform2D) -> Transform2D #c_call {
	method_name := new_string_name("inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 1420440541);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_affine_inverse :: (using self: *Transform2D) -> Transform2D #c_call {
	method_name := new_string_name("affine_inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 1420440541);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_get_rotation :: (using self: *Transform2D) -> float #c_call {
	method_name := new_string_name("get_rotation");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_get_origin :: (using self: *Transform2D) -> Vector2 #c_call {
	method_name := new_string_name("get_origin");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_get_scale :: (using self: *Transform2D) -> Vector2 #c_call {
	method_name := new_string_name("get_scale");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_get_skew :: (using self: *Transform2D) -> float #c_call {
	method_name := new_string_name("get_skew");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_orthonormalized :: (using self: *Transform2D) -> Transform2D #c_call {
	method_name := new_string_name("orthonormalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 1420440541);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_rotated :: (using self: *Transform2D, angle: float) -> Transform2D #c_call {
	method_name := new_string_name("rotated");
	defer destroy(*method_name);
	args : = *void.[*angle, ];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 729597514);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_rotated_local :: (using self: *Transform2D, angle: float) -> Transform2D #c_call {
	method_name := new_string_name("rotated_local");
	defer destroy(*method_name);
	args : = *void.[*angle, ];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 729597514);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_scaled :: (using self: *Transform2D, scale: Vector2) -> Transform2D #c_call {
	method_name := new_string_name("scaled");
	defer destroy(*method_name);
	args : = *void.[*scale, ];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 1446323263);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_scaled_local :: (using self: *Transform2D, scale: Vector2) -> Transform2D #c_call {
	method_name := new_string_name("scaled_local");
	defer destroy(*method_name);
	args : = *void.[*scale, ];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 1446323263);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_translated :: (using self: *Transform2D, offset: Vector2) -> Transform2D #c_call {
	method_name := new_string_name("translated");
	defer destroy(*method_name);
	args : = *void.[*offset, ];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 1446323263);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_translated_local :: (using self: *Transform2D, offset: Vector2) -> Transform2D #c_call {
	method_name := new_string_name("translated_local");
	defer destroy(*method_name);
	args : = *void.[*offset, ];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 1446323263);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_determinant :: (using self: *Transform2D) -> float #c_call {
	method_name := new_string_name("determinant");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_basis_xform :: (using self: *Transform2D, v: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("basis_xform");
	defer destroy(*method_name);
	args : = *void.[*v, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_basis_xform_inv :: (using self: *Transform2D, v: Vector2) -> Vector2 #c_call {
	method_name := new_string_name("basis_xform_inv");
	defer destroy(*method_name);
	args : = *void.[*v, ];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 2026743667);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_interpolate_with :: (using self: *Transform2D, xform: Transform2D, weight: float) -> Transform2D #c_call {
	method_name := new_string_name("interpolate_with");
	defer destroy(*method_name);
	args : = *void.[*xform, *weight, ];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 359399686);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_is_conformal :: (using self: *Transform2D) -> bool #c_call {
	method_name := new_string_name("is_conformal");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_is_equal_approx :: (using self: *Transform2D, xform: Transform2D) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*xform, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 3837431929);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_is_finite :: (using self: *Transform2D) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform2D_looking_at :: (using self: *Transform2D, target: Vector2) -> Transform2D #c_call {
	method_name := new_string_name("looking_at");
	defer destroy(*method_name);
	args : = *void.[*target, ];
	ret: Transform2D;
	func := variant_get_ptr_builtin_method(.TRANSFORM2D, *method_name, 1446323263);
	func(self, args.data, *ret, args.count);
	return ret;
}

TRANSFORM2D_IDENTITY :: Transform2D.{.{1, 0}, .{0, 1}, .{0, 0}};
TRANSFORM2D_FLIP_X :: Transform2D.{.{-1, 0}, .{0, 1}, .{0, 0}};
TRANSFORM2D_FLIP_Y :: Transform2D.{.{1, 0}, .{0, -1}, .{0, 0}};

Vector4 :: struct {
	x: float;
	y: float;
	z: float;
	w: float;

	Axis :: enum {
		AXIS_X :: 0;
		AXIS_Y :: 1;
		AXIS_Z :: 2;
		AXIS_W :: 3;
	}
}

Vector4_min_axis_index :: (using self: *Vector4) -> int #c_call {
	method_name := new_string_name("min_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_max_axis_index :: (using self: *Vector4) -> int #c_call {
	method_name := new_string_name("max_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_length :: (using self: *Vector4) -> float #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_length_squared :: (using self: *Vector4) -> float #c_call {
	method_name := new_string_name("length_squared");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_abs :: (using self: *Vector4) -> Vector4 #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 80860099);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_sign :: (using self: *Vector4) -> Vector4 #c_call {
	method_name := new_string_name("sign");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 80860099);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_floor :: (using self: *Vector4) -> Vector4 #c_call {
	method_name := new_string_name("floor");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 80860099);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_ceil :: (using self: *Vector4) -> Vector4 #c_call {
	method_name := new_string_name("ceil");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 80860099);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_round :: (using self: *Vector4) -> Vector4 #c_call {
	method_name := new_string_name("round");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 80860099);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_lerp :: (using self: *Vector4, to: Vector4, weight: float) -> Vector4 #c_call {
	method_name := new_string_name("lerp");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 2329757942);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_cubic_interpolate :: (using self: *Vector4, b: Vector4, pre_a: Vector4, post_b: Vector4, weight: float) -> Vector4 #c_call {
	method_name := new_string_name("cubic_interpolate");
	defer destroy(*method_name);
	args : = *void.[*b, *pre_a, *post_b, *weight, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 726768410);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_cubic_interpolate_in_time :: (using self: *Vector4, b: Vector4, pre_a: Vector4, post_b: Vector4, weight: float, b_t: float, pre_a_t: float, post_b_t: float) -> Vector4 #c_call {
	method_name := new_string_name("cubic_interpolate_in_time");
	defer destroy(*method_name);
	args : = *void.[*b, *pre_a, *post_b, *weight, *b_t, *pre_a_t, *post_b_t, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 681631873);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_posmod :: (using self: *Vector4, mod: float) -> Vector4 #c_call {
	method_name := new_string_name("posmod");
	defer destroy(*method_name);
	args : = *void.[*mod, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3129671720);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_posmodv :: (using self: *Vector4, modv: Vector4) -> Vector4 #c_call {
	method_name := new_string_name("posmodv");
	defer destroy(*method_name);
	args : = *void.[*modv, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 2031281584);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_snapped :: (using self: *Vector4, step: Vector4) -> Vector4 #c_call {
	method_name := new_string_name("snapped");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 2031281584);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_snappedf :: (using self: *Vector4, step: float) -> Vector4 #c_call {
	method_name := new_string_name("snappedf");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3129671720);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_clamp :: (using self: *Vector4, min: Vector4, max: Vector4) -> Vector4 #c_call {
	method_name := new_string_name("clamp");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 823915692);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_clampf :: (using self: *Vector4, min: float, max: float) -> Vector4 #c_call {
	method_name := new_string_name("clampf");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 4072091586);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_normalized :: (using self: *Vector4) -> Vector4 #c_call {
	method_name := new_string_name("normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 80860099);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_is_normalized :: (using self: *Vector4) -> bool #c_call {
	method_name := new_string_name("is_normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_direction_to :: (using self: *Vector4, to: Vector4) -> Vector4 #c_call {
	method_name := new_string_name("direction_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 2031281584);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_distance_to :: (using self: *Vector4, to: Vector4) -> float #c_call {
	method_name := new_string_name("distance_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3770801042);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_distance_squared_to :: (using self: *Vector4, to: Vector4) -> float #c_call {
	method_name := new_string_name("distance_squared_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3770801042);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_dot :: (using self: *Vector4, with: Vector4) -> float #c_call {
	method_name := new_string_name("dot");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3770801042);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_inverse :: (using self: *Vector4) -> Vector4 #c_call {
	method_name := new_string_name("inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 80860099);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_is_equal_approx :: (using self: *Vector4, to: Vector4) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 88913544);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_is_zero_approx :: (using self: *Vector4) -> bool #c_call {
	method_name := new_string_name("is_zero_approx");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_is_finite :: (using self: *Vector4) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_min :: (using self: *Vector4, with: Vector4) -> Vector4 #c_call {
	method_name := new_string_name("min");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 2031281584);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_minf :: (using self: *Vector4, with: float) -> Vector4 #c_call {
	method_name := new_string_name("minf");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3129671720);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_max :: (using self: *Vector4, with: Vector4) -> Vector4 #c_call {
	method_name := new_string_name("max");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 2031281584);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4_maxf :: (using self: *Vector4, with: float) -> Vector4 #c_call {
	method_name := new_string_name("maxf");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector4;
	func := variant_get_ptr_builtin_method(.VECTOR4, *method_name, 3129671720);
	func(self, args.data, *ret, args.count);
	return ret;
}

VECTOR4_AXIS_X :: 0;
VECTOR4_AXIS_Y :: 1;
VECTOR4_AXIS_Z :: 2;
VECTOR4_AXIS_W :: 3;
VECTOR4_ZERO :: Vector4.{0, 0, 0, 0};
VECTOR4_ONE :: Vector4.{1, 1, 1, 1};
VECTOR4_INF :: Vector4.{FLOAT32_INFINITY, FLOAT32_INFINITY, FLOAT32_INFINITY, FLOAT32_INFINITY};

Vector4i :: struct {
	x: s32;
	y: s32;
	z: s32;
	w: s32;

	Axis :: enum {
		AXIS_X :: 0;
		AXIS_Y :: 1;
		AXIS_Z :: 2;
		AXIS_W :: 3;
	}
}

Vector4i_min_axis_index :: (using self: *Vector4i) -> int #c_call {
	method_name := new_string_name("min_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_max_axis_index :: (using self: *Vector4i) -> int #c_call {
	method_name := new_string_name("max_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_length :: (using self: *Vector4i) -> float #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_length_squared :: (using self: *Vector4i) -> int #c_call {
	method_name := new_string_name("length_squared");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_sign :: (using self: *Vector4i) -> Vector4i #c_call {
	method_name := new_string_name("sign");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 4134919947);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_abs :: (using self: *Vector4i) -> Vector4i #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 4134919947);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_clamp :: (using self: *Vector4i, min: Vector4i, max: Vector4i) -> Vector4i #c_call {
	method_name := new_string_name("clamp");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 3046490913);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_clampi :: (using self: *Vector4i, min: int, max: int) -> Vector4i #c_call {
	method_name := new_string_name("clampi");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 2994578256);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_snapped :: (using self: *Vector4i, step: Vector4i) -> Vector4i #c_call {
	method_name := new_string_name("snapped");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 1181693102);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_snappedi :: (using self: *Vector4i, step: int) -> Vector4i #c_call {
	method_name := new_string_name("snappedi");
	defer destroy(*method_name);
	args : = *void.[*step, ];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 1476494415);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_min :: (using self: *Vector4i, with: Vector4i) -> Vector4i #c_call {
	method_name := new_string_name("min");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 1181693102);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_mini :: (using self: *Vector4i, with: int) -> Vector4i #c_call {
	method_name := new_string_name("mini");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 1476494415);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_max :: (using self: *Vector4i, with: Vector4i) -> Vector4i #c_call {
	method_name := new_string_name("max");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 1181693102);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_maxi :: (using self: *Vector4i, with: int) -> Vector4i #c_call {
	method_name := new_string_name("maxi");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: Vector4i;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 1476494415);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_distance_to :: (using self: *Vector4i, to: Vector4i) -> float #c_call {
	method_name := new_string_name("distance_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 3446086573);
	func(self, args.data, *ret, args.count);
	return ret;
}

Vector4i_distance_squared_to :: (using self: *Vector4i, to: Vector4i) -> int #c_call {
	method_name := new_string_name("distance_squared_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.VECTOR4I, *method_name, 346708794);
	func(self, args.data, *ret, args.count);
	return ret;
}

VECTOR4I_AXIS_X :: 0;
VECTOR4I_AXIS_Y :: 1;
VECTOR4I_AXIS_Z :: 2;
VECTOR4I_AXIS_W :: 3;
VECTOR4I_ZERO :: Vector4i.{0, 0, 0, 0};
VECTOR4I_ONE :: Vector4i.{1, 1, 1, 1};
VECTOR4I_MIN :: Vector4i.{-2147483648, -2147483648, -2147483648, -2147483648};
VECTOR4I_MAX :: Vector4i.{2147483647, 2147483647, 2147483647, 2147483647};

Plane :: struct {
	normal: Vector3;
	d: float;
}

Plane_normalized :: (using self: *Plane) -> Plane #c_call {
	method_name := new_string_name("normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Plane;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 1051796340);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_get_center :: (using self: *Plane) -> Vector3 #c_call {
	method_name := new_string_name("get_center");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_is_equal_approx :: (using self: *Plane, to_plane: Plane) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*to_plane, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 1150170233);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_is_finite :: (using self: *Plane) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_is_point_over :: (using self: *Plane, point: Vector3) -> bool #c_call {
	method_name := new_string_name("is_point_over");
	defer destroy(*method_name);
	args : = *void.[*point, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 1749054343);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_distance_to :: (using self: *Plane, point: Vector3) -> float #c_call {
	method_name := new_string_name("distance_to");
	defer destroy(*method_name);
	args : = *void.[*point, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 1047977935);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_has_point :: (using self: *Plane, point: Vector3, tolerance: float) -> bool #c_call {
	method_name := new_string_name("has_point");
	defer destroy(*method_name);
	args : = *void.[*point, *tolerance, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 1258189072);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_project :: (using self: *Plane, point: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("project");
	defer destroy(*method_name);
	args : = *void.[*point, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_intersect_3 :: (using self: *Plane, b: Plane, c: Plane) -> Variant #c_call {
	method_name := new_string_name("intersect_3");
	defer destroy(*method_name);
	args : = *void.[*b, *c, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 2012052692);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_intersects_ray :: (using self: *Plane, from: Vector3, dir: Vector3) -> Variant #c_call {
	method_name := new_string_name("intersects_ray");
	defer destroy(*method_name);
	args : = *void.[*from, *dir, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 2048133369);
	func(self, args.data, *ret, args.count);
	return ret;
}

Plane_intersects_segment :: (using self: *Plane, from: Vector3, to: Vector3) -> Variant #c_call {
	method_name := new_string_name("intersects_segment");
	defer destroy(*method_name);
	args : = *void.[*from, *to, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.PLANE, *method_name, 2048133369);
	func(self, args.data, *ret, args.count);
	return ret;
}

PLANE_PLANE_YZ :: Plane.{.{1, 0, 0}, 0};
PLANE_PLANE_XZ :: Plane.{.{0, 1, 0}, 0};
PLANE_PLANE_XY :: Plane.{.{0, 0, 1}, 0};

Quaternion :: struct {
	x: float;
	y: float;
	z: float;
	w: float;
}

Quaternion_length :: (using self: *Quaternion) -> float #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_length_squared :: (using self: *Quaternion) -> float #c_call {
	method_name := new_string_name("length_squared");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_normalized :: (using self: *Quaternion) -> Quaternion #c_call {
	method_name := new_string_name("normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 4274879941);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_is_normalized :: (using self: *Quaternion) -> bool #c_call {
	method_name := new_string_name("is_normalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_is_equal_approx :: (using self: *Quaternion, to: Quaternion) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 1682156903);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_is_finite :: (using self: *Quaternion) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_inverse :: (using self: *Quaternion) -> Quaternion #c_call {
	method_name := new_string_name("inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 4274879941);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_log :: (using self: *Quaternion) -> Quaternion #c_call {
	method_name := new_string_name("log");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 4274879941);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_exp :: (using self: *Quaternion) -> Quaternion #c_call {
	method_name := new_string_name("exp");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 4274879941);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_angle_to :: (using self: *Quaternion, to: Quaternion) -> float #c_call {
	method_name := new_string_name("angle_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 3244682419);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_dot :: (using self: *Quaternion, with: Quaternion) -> float #c_call {
	method_name := new_string_name("dot");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 3244682419);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_slerp :: (using self: *Quaternion, to: Quaternion, weight: float) -> Quaternion #c_call {
	method_name := new_string_name("slerp");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 1773590316);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_slerpni :: (using self: *Quaternion, to: Quaternion, weight: float) -> Quaternion #c_call {
	method_name := new_string_name("slerpni");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 1773590316);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_spherical_cubic_interpolate :: (using self: *Quaternion, b: Quaternion, pre_a: Quaternion, post_b: Quaternion, weight: float) -> Quaternion #c_call {
	method_name := new_string_name("spherical_cubic_interpolate");
	defer destroy(*method_name);
	args : = *void.[*b, *pre_a, *post_b, *weight, ];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 2150967576);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_spherical_cubic_interpolate_in_time :: (using self: *Quaternion, b: Quaternion, pre_a: Quaternion, post_b: Quaternion, weight: float, b_t: float, pre_a_t: float, post_b_t: float) -> Quaternion #c_call {
	method_name := new_string_name("spherical_cubic_interpolate_in_time");
	defer destroy(*method_name);
	args : = *void.[*b, *pre_a, *post_b, *weight, *b_t, *pre_a_t, *post_b_t, ];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 1436023539);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_get_euler :: (using self: *Quaternion, order: int) -> Vector3 #c_call {
	method_name := new_string_name("get_euler");
	defer destroy(*method_name);
	args : = *void.[*order, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 1394941017);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_from_euler :: (using self: *Quaternion, euler: Vector3) -> Quaternion #c_call {
	method_name := new_string_name("from_euler");
	defer destroy(*method_name);
	args : = *void.[*euler, ];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 4053467903);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_get_axis :: (using self: *Quaternion) -> Vector3 #c_call {
	method_name := new_string_name("get_axis");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Quaternion_get_angle :: (using self: *Quaternion) -> float #c_call {
	method_name := new_string_name("get_angle");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.QUATERNION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

QUATERNION_IDENTITY :: Quaternion.{0, 0, 0, 1};

AABB :: struct {
	position: Vector3;
	size: Vector3;
}

AABB_abs :: (using self: *AABB) -> AABB #c_call {
	method_name := new_string_name("abs");
	defer destroy(*method_name);
	args : = *void.[];
	ret: AABB;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1576868580);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_center :: (using self: *AABB) -> Vector3 #c_call {
	method_name := new_string_name("get_center");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_volume :: (using self: *AABB) -> float #c_call {
	method_name := new_string_name("get_volume");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_has_volume :: (using self: *AABB) -> bool #c_call {
	method_name := new_string_name("has_volume");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_has_surface :: (using self: *AABB) -> bool #c_call {
	method_name := new_string_name("has_surface");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_has_point :: (using self: *AABB, point: Vector3) -> bool #c_call {
	method_name := new_string_name("has_point");
	defer destroy(*method_name);
	args : = *void.[*point, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1749054343);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_is_equal_approx :: (using self: *AABB, aabb: AABB) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*aabb, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 299946684);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_is_finite :: (using self: *AABB) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_intersects :: (using self: *AABB, with: AABB) -> bool #c_call {
	method_name := new_string_name("intersects");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 299946684);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_encloses :: (using self: *AABB, with: AABB) -> bool #c_call {
	method_name := new_string_name("encloses");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 299946684);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_intersects_plane :: (using self: *AABB, plane: Plane) -> bool #c_call {
	method_name := new_string_name("intersects_plane");
	defer destroy(*method_name);
	args : = *void.[*plane, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1150170233);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_intersection :: (using self: *AABB, with: AABB) -> AABB #c_call {
	method_name := new_string_name("intersection");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: AABB;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1271470306);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_merge :: (using self: *AABB, with: AABB) -> AABB #c_call {
	method_name := new_string_name("merge");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: AABB;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1271470306);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_expand :: (using self: *AABB, to_point: Vector3) -> AABB #c_call {
	method_name := new_string_name("expand");
	defer destroy(*method_name);
	args : = *void.[*to_point, ];
	ret: AABB;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 2851643018);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_grow :: (using self: *AABB, by: float) -> AABB #c_call {
	method_name := new_string_name("grow");
	defer destroy(*method_name);
	args : = *void.[*by, ];
	ret: AABB;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 239217291);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_support :: (using self: *AABB, dir: Vector3) -> Vector3 #c_call {
	method_name := new_string_name("get_support");
	defer destroy(*method_name);
	args : = *void.[*dir, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 2923479887);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_longest_axis :: (using self: *AABB) -> Vector3 #c_call {
	method_name := new_string_name("get_longest_axis");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_longest_axis_index :: (using self: *AABB) -> int #c_call {
	method_name := new_string_name("get_longest_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_longest_axis_size :: (using self: *AABB) -> float #c_call {
	method_name := new_string_name("get_longest_axis_size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_shortest_axis :: (using self: *AABB) -> Vector3 #c_call {
	method_name := new_string_name("get_shortest_axis");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_shortest_axis_index :: (using self: *AABB) -> int #c_call {
	method_name := new_string_name("get_shortest_axis_index");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_shortest_axis_size :: (using self: *AABB) -> float #c_call {
	method_name := new_string_name("get_shortest_axis_size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_get_endpoint :: (using self: *AABB, idx: int) -> Vector3 #c_call {
	method_name := new_string_name("get_endpoint");
	defer destroy(*method_name);
	args : = *void.[*idx, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 1394941017);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_intersects_segment :: (using self: *AABB, from: Vector3, to: Vector3) -> Variant #c_call {
	method_name := new_string_name("intersects_segment");
	defer destroy(*method_name);
	args : = *void.[*from, *to, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 2048133369);
	func(self, args.data, *ret, args.count);
	return ret;
}

AABB_intersects_ray :: (using self: *AABB, from: Vector3, dir: Vector3) -> Variant #c_call {
	method_name := new_string_name("intersects_ray");
	defer destroy(*method_name);
	args : = *void.[*from, *dir, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.AABB, *method_name, 2048133369);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis :: struct {
	x: Vector3;
	y: Vector3;
	z: Vector3;
}

Basis_inverse :: (using self: *Basis) -> Basis #c_call {
	method_name := new_string_name("inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 594669093);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_transposed :: (using self: *Basis) -> Basis #c_call {
	method_name := new_string_name("transposed");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 594669093);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_orthonormalized :: (using self: *Basis) -> Basis #c_call {
	method_name := new_string_name("orthonormalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 594669093);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_determinant :: (using self: *Basis) -> float #c_call {
	method_name := new_string_name("determinant");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_rotated :: (using self: *Basis, axis: Vector3, angle: float) -> Basis #c_call {
	method_name := new_string_name("rotated");
	defer destroy(*method_name);
	args : = *void.[*axis, *angle, ];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 1998708965);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_scaled :: (using self: *Basis, scale: Vector3) -> Basis #c_call {
	method_name := new_string_name("scaled");
	defer destroy(*method_name);
	args : = *void.[*scale, ];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 3934786792);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_get_scale :: (using self: *Basis) -> Vector3 #c_call {
	method_name := new_string_name("get_scale");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 1776574132);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_get_euler :: (using self: *Basis, order: int) -> Vector3 #c_call {
	method_name := new_string_name("get_euler");
	defer destroy(*method_name);
	args : = *void.[*order, ];
	ret: Vector3;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 1394941017);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_tdotx :: (using self: *Basis, with: Vector3) -> float #c_call {
	method_name := new_string_name("tdotx");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 1047977935);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_tdoty :: (using self: *Basis, with: Vector3) -> float #c_call {
	method_name := new_string_name("tdoty");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 1047977935);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_tdotz :: (using self: *Basis, with: Vector3) -> float #c_call {
	method_name := new_string_name("tdotz");
	defer destroy(*method_name);
	args : = *void.[*with, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 1047977935);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_slerp :: (using self: *Basis, to: Basis, weight: float) -> Basis #c_call {
	method_name := new_string_name("slerp");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 3118673011);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_is_conformal :: (using self: *Basis) -> bool #c_call {
	method_name := new_string_name("is_conformal");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_is_equal_approx :: (using self: *Basis, b: Basis) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*b, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 3165333982);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_is_finite :: (using self: *Basis) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_get_rotation_quaternion :: (using self: *Basis) -> Quaternion #c_call {
	method_name := new_string_name("get_rotation_quaternion");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Quaternion;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 4274879941);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_looking_at :: (using self: *Basis, target: Vector3, up: Vector3, use_model_front: bool) -> Basis #c_call {
	method_name := new_string_name("looking_at");
	defer destroy(*method_name);
	args : = *void.[*target, *up, *use_model_front, ];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 3728732505);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_from_scale :: (using self: *Basis, scale: Vector3) -> Basis #c_call {
	method_name := new_string_name("from_scale");
	defer destroy(*method_name);
	args : = *void.[*scale, ];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 3703240166);
	func(self, args.data, *ret, args.count);
	return ret;
}

Basis_from_euler :: (using self: *Basis, euler: Vector3, order: int) -> Basis #c_call {
	method_name := new_string_name("from_euler");
	defer destroy(*method_name);
	args : = *void.[*euler, *order, ];
	ret: Basis;
	func := variant_get_ptr_builtin_method(.BASIS, *method_name, 2802321791);
	func(self, args.data, *ret, args.count);
	return ret;
}

BASIS_IDENTITY :: Basis.{.{1, 0, 0}, .{0, 1, 0}, .{0, 0, 1}};
BASIS_FLIP_X :: Basis.{.{-1, 0, 0}, .{0, 1, 0}, .{0, 0, 1}};
BASIS_FLIP_Y :: Basis.{.{1, 0, 0}, .{0, -1, 0}, .{0, 0, 1}};
BASIS_FLIP_Z :: Basis.{.{1, 0, 0}, .{0, 1, 0}, .{0, 0, -1}};

Transform3D :: struct {
	basis: Basis;
	origin: Vector3;
}

Transform3D_inverse :: (using self: *Transform3D) -> Transform3D #c_call {
	method_name := new_string_name("inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 3816817146);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_affine_inverse :: (using self: *Transform3D) -> Transform3D #c_call {
	method_name := new_string_name("affine_inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 3816817146);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_orthonormalized :: (using self: *Transform3D) -> Transform3D #c_call {
	method_name := new_string_name("orthonormalized");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 3816817146);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_rotated :: (using self: *Transform3D, axis: Vector3, angle: float) -> Transform3D #c_call {
	method_name := new_string_name("rotated");
	defer destroy(*method_name);
	args : = *void.[*axis, *angle, ];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 1563203923);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_rotated_local :: (using self: *Transform3D, axis: Vector3, angle: float) -> Transform3D #c_call {
	method_name := new_string_name("rotated_local");
	defer destroy(*method_name);
	args : = *void.[*axis, *angle, ];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 1563203923);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_scaled :: (using self: *Transform3D, scale: Vector3) -> Transform3D #c_call {
	method_name := new_string_name("scaled");
	defer destroy(*method_name);
	args : = *void.[*scale, ];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 1405596198);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_scaled_local :: (using self: *Transform3D, scale: Vector3) -> Transform3D #c_call {
	method_name := new_string_name("scaled_local");
	defer destroy(*method_name);
	args : = *void.[*scale, ];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 1405596198);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_translated :: (using self: *Transform3D, offset: Vector3) -> Transform3D #c_call {
	method_name := new_string_name("translated");
	defer destroy(*method_name);
	args : = *void.[*offset, ];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 1405596198);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_translated_local :: (using self: *Transform3D, offset: Vector3) -> Transform3D #c_call {
	method_name := new_string_name("translated_local");
	defer destroy(*method_name);
	args : = *void.[*offset, ];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 1405596198);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_looking_at :: (using self: *Transform3D, target: Vector3, up: Vector3, use_model_front: bool) -> Transform3D #c_call {
	method_name := new_string_name("looking_at");
	defer destroy(*method_name);
	args : = *void.[*target, *up, *use_model_front, ];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 90889270);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_interpolate_with :: (using self: *Transform3D, xform: Transform3D, weight: float) -> Transform3D #c_call {
	method_name := new_string_name("interpolate_with");
	defer destroy(*method_name);
	args : = *void.[*xform, *weight, ];
	ret: Transform3D;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 1786453358);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_is_equal_approx :: (using self: *Transform3D, xform: Transform3D) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*xform, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 696001652);
	func(self, args.data, *ret, args.count);
	return ret;
}

Transform3D_is_finite :: (using self: *Transform3D) -> bool #c_call {
	method_name := new_string_name("is_finite");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.TRANSFORM3D, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

TRANSFORM3D_IDENTITY :: Transform3D.{Basis.{.{1, 0, 0}, .{0, 1, 0}, .{0, 0, 1}}, .{0, 0, 0}};
TRANSFORM3D_FLIP_X   :: Transform3D.{Basis.{.{-1, 0, 0}, .{0, 1, 0}, .{0, 0, 1}}, .{0, 0, 0}};
TRANSFORM3D_FLIP_Y   :: Transform3D.{Basis.{.{1, 0, 0}, .{0, -1, 0}, .{0, 0, 1}}, .{0, 0, 0}};
TRANSFORM3D_FLIP_Z   :: Transform3D.{Basis.{.{1, 0, 0}, .{0, 1, 0}, .{0, 0, -1}}, .{0, 0, 0}};

Projection :: struct {
	x: Vector4;
	y: Vector4;
	z: Vector4;
	w: Vector4;

	Planes :: enum {
		PLANE_NEAR :: 0;
		PLANE_FAR :: 1;
		PLANE_LEFT :: 2;
		PLANE_TOP :: 3;
		PLANE_RIGHT :: 4;
		PLANE_BOTTOM :: 5;
	}
}

Projection_create_depth_correction :: (using self: *Projection, flip_y: bool) -> Projection #c_call {
	method_name := new_string_name("create_depth_correction");
	defer destroy(*method_name);
	args : = *void.[*flip_y, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 1228516048);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_light_atlas_rect :: (using self: *Projection, rect: Rect2) -> Projection #c_call {
	method_name := new_string_name("create_light_atlas_rect");
	defer destroy(*method_name);
	args : = *void.[*rect, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 2654950662);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_perspective :: (using self: *Projection, fovy: float, aspect: float, z_near: float, z_far: float, flip_fov: bool) -> Projection #c_call {
	method_name := new_string_name("create_perspective");
	defer destroy(*method_name);
	args : = *void.[*fovy, *aspect, *z_near, *z_far, *flip_fov, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 390915442);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_perspective_hmd :: (using self: *Projection, fovy: float, aspect: float, z_near: float, z_far: float, flip_fov: bool, eye: int, intraocular_dist: float, convergence_dist: float) -> Projection #c_call {
	method_name := new_string_name("create_perspective_hmd");
	defer destroy(*method_name);
	args : = *void.[*fovy, *aspect, *z_near, *z_far, *flip_fov, *eye, *intraocular_dist, *convergence_dist, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 2857674800);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_for_hmd :: (using self: *Projection, eye: int, aspect: float, intraocular_dist: float, display_width: float, display_to_lens: float, oversample: float, z_near: float, z_far: float) -> Projection #c_call {
	method_name := new_string_name("create_for_hmd");
	defer destroy(*method_name);
	args : = *void.[*eye, *aspect, *intraocular_dist, *display_width, *display_to_lens, *oversample, *z_near, *z_far, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 4184144994);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_orthogonal :: (using self: *Projection, left: float, right: float, bottom: float, top: float, z_near: float, z_far: float) -> Projection #c_call {
	method_name := new_string_name("create_orthogonal");
	defer destroy(*method_name);
	args : = *void.[*left, *right, *bottom, *top, *z_near, *z_far, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 3707929169);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_orthogonal_aspect :: (using self: *Projection, size: float, aspect: float, z_near: float, z_far: float, flip_fov: bool) -> Projection #c_call {
	method_name := new_string_name("create_orthogonal_aspect");
	defer destroy(*method_name);
	args : = *void.[*size, *aspect, *z_near, *z_far, *flip_fov, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 390915442);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_frustum :: (using self: *Projection, left: float, right: float, bottom: float, top: float, z_near: float, z_far: float) -> Projection #c_call {
	method_name := new_string_name("create_frustum");
	defer destroy(*method_name);
	args : = *void.[*left, *right, *bottom, *top, *z_near, *z_far, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 3707929169);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_frustum_aspect :: (using self: *Projection, size: float, aspect: float, offset: Vector2, z_near: float, z_far: float, flip_fov: bool) -> Projection #c_call {
	method_name := new_string_name("create_frustum_aspect");
	defer destroy(*method_name);
	args : = *void.[*size, *aspect, *offset, *z_near, *z_far, *flip_fov, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 1535076251);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_create_fit_aabb :: (using self: *Projection, aabb: AABB) -> Projection #c_call {
	method_name := new_string_name("create_fit_aabb");
	defer destroy(*method_name);
	args : = *void.[*aabb, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 2264694907);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_determinant :: (using self: *Projection) -> float #c_call {
	method_name := new_string_name("determinant");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_perspective_znear_adjusted :: (using self: *Projection, new_znear: float) -> Projection #c_call {
	method_name := new_string_name("perspective_znear_adjusted");
	defer destroy(*method_name);
	args : = *void.[*new_znear, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 3584785443);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_projection_plane :: (using self: *Projection, plane: int) -> Plane #c_call {
	method_name := new_string_name("get_projection_plane");
	defer destroy(*method_name);
	args : = *void.[*plane, ];
	ret: Plane;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 1551184160);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_flipped_y :: (using self: *Projection) -> Projection #c_call {
	method_name := new_string_name("flipped_y");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 4212530932);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_jitter_offseted :: (using self: *Projection, offset: Vector2) -> Projection #c_call {
	method_name := new_string_name("jitter_offseted");
	defer destroy(*method_name);
	args : = *void.[*offset, ];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 2448438599);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_fovy :: (using self: *Projection, fovx: float, aspect: float) -> float #c_call {
	method_name := new_string_name("get_fovy");
	defer destroy(*method_name);
	args : = *void.[*fovx, *aspect, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 3514207532);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_z_far :: (using self: *Projection) -> float #c_call {
	method_name := new_string_name("get_z_far");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_z_near :: (using self: *Projection) -> float #c_call {
	method_name := new_string_name("get_z_near");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_aspect :: (using self: *Projection) -> float #c_call {
	method_name := new_string_name("get_aspect");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_fov :: (using self: *Projection) -> float #c_call {
	method_name := new_string_name("get_fov");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_is_orthogonal :: (using self: *Projection) -> bool #c_call {
	method_name := new_string_name("is_orthogonal");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_viewport_half_extents :: (using self: *Projection) -> Vector2 #c_call {
	method_name := new_string_name("get_viewport_half_extents");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_far_plane_half_extents :: (using self: *Projection) -> Vector2 #c_call {
	method_name := new_string_name("get_far_plane_half_extents");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Vector2;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 2428350749);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_inverse :: (using self: *Projection) -> Projection #c_call {
	method_name := new_string_name("inverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Projection;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 4212530932);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_pixels_per_meter :: (using self: *Projection, for_pixel_width: int) -> int #c_call {
	method_name := new_string_name("get_pixels_per_meter");
	defer destroy(*method_name);
	args : = *void.[*for_pixel_width, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

Projection_get_lod_multiplier :: (using self: *Projection) -> float #c_call {
	method_name := new_string_name("get_lod_multiplier");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.PROJECTION, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

PROJECTION_PLANE_NEAR :: 0;
PROJECTION_PLANE_FAR :: 1;
PROJECTION_PLANE_LEFT :: 2;
PROJECTION_PLANE_TOP :: 3;
PROJECTION_PLANE_RIGHT :: 4;
PROJECTION_PLANE_BOTTOM :: 5;
PROJECTION_IDENTITY :: Projection.{.{1, 0, 0, 0}, .{0, 1, 0, 0}, .{0, 0, 1, 0}, .{0, 0, 0, 1}};
PROJECTION_ZERO :: Projection.{.{0, 0, 0, 0}, .{0, 0, 0, 0}, .{0, 0, 0, 0}, .{0, 0, 0, 0}};

Color :: struct {
	r: float;
	g: float;
	b: float;
	a: float;
}

Color_to_argb32 :: (using self: *Color) -> int #c_call {
	method_name := new_string_name("to_argb32");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_to_abgr32 :: (using self: *Color) -> int #c_call {
	method_name := new_string_name("to_abgr32");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_to_rgba32 :: (using self: *Color) -> int #c_call {
	method_name := new_string_name("to_rgba32");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_to_argb64 :: (using self: *Color) -> int #c_call {
	method_name := new_string_name("to_argb64");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_to_abgr64 :: (using self: *Color) -> int #c_call {
	method_name := new_string_name("to_abgr64");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_to_rgba64 :: (using self: *Color) -> int #c_call {
	method_name := new_string_name("to_rgba64");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_to_html :: (using self: *Color, with_alpha: bool) -> String #c_call {
	method_name := new_string_name("to_html");
	defer destroy(*method_name);
	args : = *void.[*with_alpha, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3429816538);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_clamp :: (using self: *Color, min: Color, max: Color) -> Color #c_call {
	method_name := new_string_name("clamp");
	defer destroy(*method_name);
	args : = *void.[*min, *max, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 105651410);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_inverted :: (using self: *Color) -> Color #c_call {
	method_name := new_string_name("inverted");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3334027602);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_lerp :: (using self: *Color, to: Color, weight: float) -> Color #c_call {
	method_name := new_string_name("lerp");
	defer destroy(*method_name);
	args : = *void.[*to, *weight, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 402949615);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_lightened :: (using self: *Color, amount: float) -> Color #c_call {
	method_name := new_string_name("lightened");
	defer destroy(*method_name);
	args : = *void.[*amount, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 1466039168);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_darkened :: (using self: *Color, amount: float) -> Color #c_call {
	method_name := new_string_name("darkened");
	defer destroy(*method_name);
	args : = *void.[*amount, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 1466039168);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_blend :: (using self: *Color, over: Color) -> Color #c_call {
	method_name := new_string_name("blend");
	defer destroy(*method_name);
	args : = *void.[*over, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3803690977);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_get_luminance :: (using self: *Color) -> float #c_call {
	method_name := new_string_name("get_luminance");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_srgb_to_linear :: (using self: *Color) -> Color #c_call {
	method_name := new_string_name("srgb_to_linear");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3334027602);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_linear_to_srgb :: (using self: *Color) -> Color #c_call {
	method_name := new_string_name("linear_to_srgb");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3334027602);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_is_equal_approx :: (using self: *Color, to: Color) -> bool #c_call {
	method_name := new_string_name("is_equal_approx");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3167426256);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_hex :: (using self: *Color, hex: int) -> Color #c_call {
	method_name := new_string_name("hex");
	defer destroy(*method_name);
	args : = *void.[*hex, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 351421375);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_hex64 :: (using self: *Color, hex: int) -> Color #c_call {
	method_name := new_string_name("hex64");
	defer destroy(*method_name);
	args : = *void.[*hex, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 351421375);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_html :: (using self: *Color, rgba: String) -> Color #c_call {
	method_name := new_string_name("html");
	defer destroy(*method_name);
	args : = *void.[*rgba, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 2500054655);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_html_is_valid :: (using self: *Color, color: String) -> bool #c_call {
	method_name := new_string_name("html_is_valid");
	defer destroy(*method_name);
	args : = *void.[*color, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 2942997125);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_from_string :: (using self: *Color, str: String, default: Color) -> Color #c_call {
	method_name := new_string_name("from_string");
	defer destroy(*method_name);
	args : = *void.[*str, *default, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 3755044230);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_from_hsv :: (using self: *Color, h: float, s: float, v: float, alpha: float) -> Color #c_call {
	method_name := new_string_name("from_hsv");
	defer destroy(*method_name);
	args : = *void.[*h, *s, *v, *alpha, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 1573799446);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_from_ok_hsl :: (using self: *Color, h: float, s: float, l: float, alpha: float) -> Color #c_call {
	method_name := new_string_name("from_ok_hsl");
	defer destroy(*method_name);
	args : = *void.[*h, *s, *l, *alpha, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 1573799446);
	func(self, args.data, *ret, args.count);
	return ret;
}

Color_from_rgbe9995 :: (using self: *Color, rgbe: int) -> Color #c_call {
	method_name := new_string_name("from_rgbe9995");
	defer destroy(*method_name);
	args : = *void.[*rgbe, ];
	ret: Color;
	func := variant_get_ptr_builtin_method(.COLOR, *method_name, 351421375);
	func(self, args.data, *ret, args.count);
	return ret;
}

COLOR_ALICE_BLUE :: Color.{0.941176, 0.972549, 1, 1};
COLOR_ANTIQUE_WHITE :: Color.{0.980392, 0.921569, 0.843137, 1};
COLOR_AQUA :: Color.{0, 1, 1, 1};
COLOR_AQUAMARINE :: Color.{0.498039, 1, 0.831373, 1};
COLOR_AZURE :: Color.{0.941176, 1, 1, 1};
COLOR_BEIGE :: Color.{0.960784, 0.960784, 0.862745, 1};
COLOR_BISQUE :: Color.{1, 0.894118, 0.768627, 1};
COLOR_BLACK :: Color.{0, 0, 0, 1};
COLOR_BLANCHED_ALMOND :: Color.{1, 0.921569, 0.803922, 1};
COLOR_BLUE :: Color.{0, 0, 1, 1};
COLOR_BLUE_VIOLET :: Color.{0.541176, 0.168627, 0.886275, 1};
COLOR_BROWN :: Color.{0.647059, 0.164706, 0.164706, 1};
COLOR_BURLYWOOD :: Color.{0.870588, 0.721569, 0.529412, 1};
COLOR_CADET_BLUE :: Color.{0.372549, 0.619608, 0.627451, 1};
COLOR_CHARTREUSE :: Color.{0.498039, 1, 0, 1};
COLOR_CHOCOLATE :: Color.{0.823529, 0.411765, 0.117647, 1};
COLOR_CORAL :: Color.{1, 0.498039, 0.313726, 1};
COLOR_CORNFLOWER_BLUE :: Color.{0.392157, 0.584314, 0.929412, 1};
COLOR_CORNSILK :: Color.{1, 0.972549, 0.862745, 1};
COLOR_CRIMSON :: Color.{0.862745, 0.0784314, 0.235294, 1};
COLOR_CYAN :: Color.{0, 1, 1, 1};
COLOR_DARK_BLUE :: Color.{0, 0, 0.545098, 1};
COLOR_DARK_CYAN :: Color.{0, 0.545098, 0.545098, 1};
COLOR_DARK_GOLDENROD :: Color.{0.721569, 0.52549, 0.0431373, 1};
COLOR_DARK_GRAY :: Color.{0.662745, 0.662745, 0.662745, 1};
COLOR_DARK_GREEN :: Color.{0, 0.392157, 0, 1};
COLOR_DARK_KHAKI :: Color.{0.741176, 0.717647, 0.419608, 1};
COLOR_DARK_MAGENTA :: Color.{0.545098, 0, 0.545098, 1};
COLOR_DARK_OLIVE_GREEN :: Color.{0.333333, 0.419608, 0.184314, 1};
COLOR_DARK_ORANGE :: Color.{1, 0.54902, 0, 1};
COLOR_DARK_ORCHID :: Color.{0.6, 0.196078, 0.8, 1};
COLOR_DARK_RED :: Color.{0.545098, 0, 0, 1};
COLOR_DARK_SALMON :: Color.{0.913725, 0.588235, 0.478431, 1};
COLOR_DARK_SEA_GREEN :: Color.{0.560784, 0.737255, 0.560784, 1};
COLOR_DARK_SLATE_BLUE :: Color.{0.282353, 0.239216, 0.545098, 1};
COLOR_DARK_SLATE_GRAY :: Color.{0.184314, 0.309804, 0.309804, 1};
COLOR_DARK_TURQUOISE :: Color.{0, 0.807843, 0.819608, 1};
COLOR_DARK_VIOLET :: Color.{0.580392, 0, 0.827451, 1};
COLOR_DEEP_PINK :: Color.{1, 0.0784314, 0.576471, 1};
COLOR_DEEP_SKY_BLUE :: Color.{0, 0.74902, 1, 1};
COLOR_DIM_GRAY :: Color.{0.411765, 0.411765, 0.411765, 1};
COLOR_DODGER_BLUE :: Color.{0.117647, 0.564706, 1, 1};
COLOR_FIREBRICK :: Color.{0.698039, 0.133333, 0.133333, 1};
COLOR_FLORAL_WHITE :: Color.{1, 0.980392, 0.941176, 1};
COLOR_FOREST_GREEN :: Color.{0.133333, 0.545098, 0.133333, 1};
COLOR_FUCHSIA :: Color.{1, 0, 1, 1};
COLOR_GAINSBORO :: Color.{0.862745, 0.862745, 0.862745, 1};
COLOR_GHOST_WHITE :: Color.{0.972549, 0.972549, 1, 1};
COLOR_GOLD :: Color.{1, 0.843137, 0, 1};
COLOR_GOLDENROD :: Color.{0.854902, 0.647059, 0.12549, 1};
COLOR_GRAY :: Color.{0.745098, 0.745098, 0.745098, 1};
COLOR_GREEN :: Color.{0, 1, 0, 1};
COLOR_GREEN_YELLOW :: Color.{0.678431, 1, 0.184314, 1};
COLOR_HONEYDEW :: Color.{0.941176, 1, 0.941176, 1};
COLOR_HOT_PINK :: Color.{1, 0.411765, 0.705882, 1};
COLOR_INDIAN_RED :: Color.{0.803922, 0.360784, 0.360784, 1};
COLOR_INDIGO :: Color.{0.294118, 0, 0.509804, 1};
COLOR_IVORY :: Color.{1, 1, 0.941176, 1};
COLOR_KHAKI :: Color.{0.941176, 0.901961, 0.54902, 1};
COLOR_LAVENDER :: Color.{0.901961, 0.901961, 0.980392, 1};
COLOR_LAVENDER_BLUSH :: Color.{1, 0.941176, 0.960784, 1};
COLOR_LAWN_GREEN :: Color.{0.486275, 0.988235, 0, 1};
COLOR_LEMON_CHIFFON :: Color.{1, 0.980392, 0.803922, 1};
COLOR_LIGHT_BLUE :: Color.{0.678431, 0.847059, 0.901961, 1};
COLOR_LIGHT_CORAL :: Color.{0.941176, 0.501961, 0.501961, 1};
COLOR_LIGHT_CYAN :: Color.{0.878431, 1, 1, 1};
COLOR_LIGHT_GOLDENROD :: Color.{0.980392, 0.980392, 0.823529, 1};
COLOR_LIGHT_GRAY :: Color.{0.827451, 0.827451, 0.827451, 1};
COLOR_LIGHT_GREEN :: Color.{0.564706, 0.933333, 0.564706, 1};
COLOR_LIGHT_PINK :: Color.{1, 0.713726, 0.756863, 1};
COLOR_LIGHT_SALMON :: Color.{1, 0.627451, 0.478431, 1};
COLOR_LIGHT_SEA_GREEN :: Color.{0.12549, 0.698039, 0.666667, 1};
COLOR_LIGHT_SKY_BLUE :: Color.{0.529412, 0.807843, 0.980392, 1};
COLOR_LIGHT_SLATE_GRAY :: Color.{0.466667, 0.533333, 0.6, 1};
COLOR_LIGHT_STEEL_BLUE :: Color.{0.690196, 0.768627, 0.870588, 1};
COLOR_LIGHT_YELLOW :: Color.{1, 1, 0.878431, 1};
COLOR_LIME :: Color.{0, 1, 0, 1};
COLOR_LIME_GREEN :: Color.{0.196078, 0.803922, 0.196078, 1};
COLOR_LINEN :: Color.{0.980392, 0.941176, 0.901961, 1};
COLOR_MAGENTA :: Color.{1, 0, 1, 1};
COLOR_MAROON :: Color.{0.690196, 0.188235, 0.376471, 1};
COLOR_MEDIUM_AQUAMARINE :: Color.{0.4, 0.803922, 0.666667, 1};
COLOR_MEDIUM_BLUE :: Color.{0, 0, 0.803922, 1};
COLOR_MEDIUM_ORCHID :: Color.{0.729412, 0.333333, 0.827451, 1};
COLOR_MEDIUM_PURPLE :: Color.{0.576471, 0.439216, 0.858824, 1};
COLOR_MEDIUM_SEA_GREEN :: Color.{0.235294, 0.701961, 0.443137, 1};
COLOR_MEDIUM_SLATE_BLUE :: Color.{0.482353, 0.407843, 0.933333, 1};
COLOR_MEDIUM_SPRING_GREEN :: Color.{0, 0.980392, 0.603922, 1};
COLOR_MEDIUM_TURQUOISE :: Color.{0.282353, 0.819608, 0.8, 1};
COLOR_MEDIUM_VIOLET_RED :: Color.{0.780392, 0.0823529, 0.521569, 1};
COLOR_MIDNIGHT_BLUE :: Color.{0.0980392, 0.0980392, 0.439216, 1};
COLOR_MINT_CREAM :: Color.{0.960784, 1, 0.980392, 1};
COLOR_MISTY_ROSE :: Color.{1, 0.894118, 0.882353, 1};
COLOR_MOCCASIN :: Color.{1, 0.894118, 0.709804, 1};
COLOR_NAVAJO_WHITE :: Color.{1, 0.870588, 0.678431, 1};
COLOR_NAVY_BLUE :: Color.{0, 0, 0.501961, 1};
COLOR_OLD_LACE :: Color.{0.992157, 0.960784, 0.901961, 1};
COLOR_OLIVE :: Color.{0.501961, 0.501961, 0, 1};
COLOR_OLIVE_DRAB :: Color.{0.419608, 0.556863, 0.137255, 1};
COLOR_ORANGE :: Color.{1, 0.647059, 0, 1};
COLOR_ORANGE_RED :: Color.{1, 0.270588, 0, 1};
COLOR_ORCHID :: Color.{0.854902, 0.439216, 0.839216, 1};
COLOR_PALE_GOLDENROD :: Color.{0.933333, 0.909804, 0.666667, 1};
COLOR_PALE_GREEN :: Color.{0.596078, 0.984314, 0.596078, 1};
COLOR_PALE_TURQUOISE :: Color.{0.686275, 0.933333, 0.933333, 1};
COLOR_PALE_VIOLET_RED :: Color.{0.858824, 0.439216, 0.576471, 1};
COLOR_PAPAYA_WHIP :: Color.{1, 0.937255, 0.835294, 1};
COLOR_PEACH_PUFF :: Color.{1, 0.854902, 0.72549, 1};
COLOR_PERU :: Color.{0.803922, 0.521569, 0.247059, 1};
COLOR_PINK :: Color.{1, 0.752941, 0.796078, 1};
COLOR_PLUM :: Color.{0.866667, 0.627451, 0.866667, 1};
COLOR_POWDER_BLUE :: Color.{0.690196, 0.878431, 0.901961, 1};
COLOR_PURPLE :: Color.{0.627451, 0.12549, 0.941176, 1};
COLOR_REBECCA_PURPLE :: Color.{0.4, 0.2, 0.6, 1};
COLOR_RED :: Color.{1, 0, 0, 1};
COLOR_ROSY_BROWN :: Color.{0.737255, 0.560784, 0.560784, 1};
COLOR_ROYAL_BLUE :: Color.{0.254902, 0.411765, 0.882353, 1};
COLOR_SADDLE_BROWN :: Color.{0.545098, 0.270588, 0.0745098, 1};
COLOR_SALMON :: Color.{0.980392, 0.501961, 0.447059, 1};
COLOR_SANDY_BROWN :: Color.{0.956863, 0.643137, 0.376471, 1};
COLOR_SEA_GREEN :: Color.{0.180392, 0.545098, 0.341176, 1};
COLOR_SEASHELL :: Color.{1, 0.960784, 0.933333, 1};
COLOR_SIENNA :: Color.{0.627451, 0.321569, 0.176471, 1};
COLOR_SILVER :: Color.{0.752941, 0.752941, 0.752941, 1};
COLOR_SKY_BLUE :: Color.{0.529412, 0.807843, 0.921569, 1};
COLOR_SLATE_BLUE :: Color.{0.415686, 0.352941, 0.803922, 1};
COLOR_SLATE_GRAY :: Color.{0.439216, 0.501961, 0.564706, 1};
COLOR_SNOW :: Color.{1, 0.980392, 0.980392, 1};
COLOR_SPRING_GREEN :: Color.{0, 1, 0.498039, 1};
COLOR_STEEL_BLUE :: Color.{0.27451, 0.509804, 0.705882, 1};
COLOR_TAN :: Color.{0.823529, 0.705882, 0.54902, 1};
COLOR_TEAL :: Color.{0, 0.501961, 0.501961, 1};
COLOR_THISTLE :: Color.{0.847059, 0.74902, 0.847059, 1};
COLOR_TOMATO :: Color.{1, 0.388235, 0.278431, 1};
COLOR_TRANSPARENT :: Color.{1, 1, 1, 0};
COLOR_TURQUOISE :: Color.{0.25098, 0.878431, 0.815686, 1};
COLOR_VIOLET :: Color.{0.933333, 0.509804, 0.933333, 1};
COLOR_WEB_GRAY :: Color.{0.501961, 0.501961, 0.501961, 1};
COLOR_WEB_GREEN :: Color.{0, 0.501961, 0, 1};
COLOR_WEB_MAROON :: Color.{0.501961, 0, 0, 1};
COLOR_WEB_PURPLE :: Color.{0.501961, 0, 0.501961, 1};
COLOR_WHEAT :: Color.{0.960784, 0.870588, 0.701961, 1};
COLOR_WHITE :: Color.{1, 1, 1, 1};
COLOR_WHITE_SMOKE :: Color.{0.960784, 0.960784, 0.960784, 1};
COLOR_YELLOW :: Color.{1, 1, 0, 1};
COLOR_YELLOW_GREEN :: Color.{0.603922, 0.803922, 0.196078, 1};

StringName :: struct {
	__private: [8]u8;
}

string_name_destroy : PtrDestructor;
destroy :: (self: *StringName) #no_context { 
	string_name_destroy(self);
}


StringName_casecmp_to :: (using self: *StringName, to: String) -> int #c_call {
	method_name := new_string_name("casecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_nocasecmp_to :: (using self: *StringName, to: String) -> int #c_call {
	method_name := new_string_name("nocasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_naturalcasecmp_to :: (using self: *StringName, to: String) -> int #c_call {
	method_name := new_string_name("naturalcasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_naturalnocasecmp_to :: (using self: *StringName, to: String) -> int #c_call {
	method_name := new_string_name("naturalnocasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_filecasecmp_to :: (using self: *StringName, to: String) -> int #c_call {
	method_name := new_string_name("filecasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_filenocasecmp_to :: (using self: *StringName, to: String) -> int #c_call {
	method_name := new_string_name("filenocasecmp_to");
	defer destroy(*method_name);
	args : = *void.[*to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_length :: (using self: *StringName) -> int #c_call {
	method_name := new_string_name("length");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_substr :: (using self: *StringName, from: int, len: int) -> String #c_call {
	method_name := new_string_name("substr");
	defer destroy(*method_name);
	args : = *void.[*from, *len, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 787537301);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_get_slice :: (using self: *StringName, delimiter: String, slice: int) -> String #c_call {
	method_name := new_string_name("get_slice");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *slice, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3535100402);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_get_slicec :: (using self: *StringName, delimiter: int, slice: int) -> String #c_call {
	method_name := new_string_name("get_slicec");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *slice, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 787537301);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_get_slice_count :: (using self: *StringName, delimiter: String) -> int #c_call {
	method_name := new_string_name("get_slice_count");
	defer destroy(*method_name);
	args : = *void.[*delimiter, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_find :: (using self: *StringName, what: String, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_findn :: (using self: *StringName, what: String, from: int) -> int #c_call {
	method_name := new_string_name("findn");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_count :: (using self: *StringName, what: String, from: int, to: int) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*what, *from, *to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2343087891);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_countn :: (using self: *StringName, what: String, from: int, to: int) -> int #c_call {
	method_name := new_string_name("countn");
	defer destroy(*method_name);
	args : = *void.[*what, *from, *to, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2343087891);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_rfind :: (using self: *StringName, what: String, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_rfindn :: (using self: *StringName, what: String, from: int) -> int #c_call {
	method_name := new_string_name("rfindn");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_match :: (using self: *StringName, expr: String) -> bool #c_call {
	method_name := new_string_name("match");
	defer destroy(*method_name);
	args : = *void.[*expr, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_matchn :: (using self: *StringName, expr: String) -> bool #c_call {
	method_name := new_string_name("matchn");
	defer destroy(*method_name);
	args : = *void.[*expr, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_begins_with :: (using self: *StringName, text: String) -> bool #c_call {
	method_name := new_string_name("begins_with");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_ends_with :: (using self: *StringName, text: String) -> bool #c_call {
	method_name := new_string_name("ends_with");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_subsequence_of :: (using self: *StringName, text: String) -> bool #c_call {
	method_name := new_string_name("is_subsequence_of");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_subsequence_ofn :: (using self: *StringName, text: String) -> bool #c_call {
	method_name := new_string_name("is_subsequence_ofn");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_bigrams :: (using self: *StringName) -> PackedStringArray #c_call {
	method_name := new_string_name("bigrams");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedStringArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 747180633);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_similarity :: (using self: *StringName, text: String) -> float #c_call {
	method_name := new_string_name("similarity");
	defer destroy(*method_name);
	args : = *void.[*text, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2697460964);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_format :: (using self: *StringName, values: Variant, placeholder: String) -> String #c_call {
	method_name := new_string_name("format");
	defer destroy(*method_name);
	args : = *void.[*values, *placeholder, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3212199029);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_replace :: (using self: *StringName, what: String, forwhat: String) -> String #c_call {
	method_name := new_string_name("replace");
	defer destroy(*method_name);
	args : = *void.[*what, *forwhat, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 1340436205);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_replacen :: (using self: *StringName, what: String, forwhat: String) -> String #c_call {
	method_name := new_string_name("replacen");
	defer destroy(*method_name);
	args : = *void.[*what, *forwhat, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 1340436205);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_repeat :: (using self: *StringName, count: int) -> String #c_call {
	method_name := new_string_name("repeat");
	defer destroy(*method_name);
	args : = *void.[*count, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_reverse :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_insert :: (using self: *StringName, position: int, what: String) -> String #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*position, *what, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 248737229);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_erase :: (using self: *StringName, position: int, chars: int) -> String #c_call {
	method_name := new_string_name("erase");
	defer destroy(*method_name);
	args : = *void.[*position, *chars, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 787537301);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_capitalize :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("capitalize");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_camel_case :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("to_camel_case");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_pascal_case :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("to_pascal_case");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_snake_case :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("to_snake_case");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_split :: (using self: *StringName, delimiter: String, allow_empty: bool, maxsplit: int) -> PackedStringArray #c_call {
	method_name := new_string_name("split");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *allow_empty, *maxsplit, ];
	ret: PackedStringArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 1252735785);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_rsplit :: (using self: *StringName, delimiter: String, allow_empty: bool, maxsplit: int) -> PackedStringArray #c_call {
	method_name := new_string_name("rsplit");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *allow_empty, *maxsplit, ];
	ret: PackedStringArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 1252735785);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_split_floats :: (using self: *StringName, delimiter: String, allow_empty: bool) -> PackedFloat64Array #c_call {
	method_name := new_string_name("split_floats");
	defer destroy(*method_name);
	args : = *void.[*delimiter, *allow_empty, ];
	ret: PackedFloat64Array;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2092079095);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_join :: (using self: *StringName, parts: PackedStringArray) -> String #c_call {
	method_name := new_string_name("join");
	defer destroy(*method_name);
	args : = *void.[*parts, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3595973238);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_upper :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("to_upper");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_lower :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("to_lower");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_left :: (using self: *StringName, length: int) -> String #c_call {
	method_name := new_string_name("left");
	defer destroy(*method_name);
	args : = *void.[*length, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_right :: (using self: *StringName, length: int) -> String #c_call {
	method_name := new_string_name("right");
	defer destroy(*method_name);
	args : = *void.[*length, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_strip_edges :: (using self: *StringName, left: bool, right: bool) -> String #c_call {
	method_name := new_string_name("strip_edges");
	defer destroy(*method_name);
	args : = *void.[*left, *right, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 907855311);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_strip_escapes :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("strip_escapes");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_lstrip :: (using self: *StringName, chars: String) -> String #c_call {
	method_name := new_string_name("lstrip");
	defer destroy(*method_name);
	args : = *void.[*chars, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_rstrip :: (using self: *StringName, chars: String) -> String #c_call {
	method_name := new_string_name("rstrip");
	defer destroy(*method_name);
	args : = *void.[*chars, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_get_extension :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("get_extension");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_get_basename :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("get_basename");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_path_join :: (using self: *StringName, file: String) -> String #c_call {
	method_name := new_string_name("path_join");
	defer destroy(*method_name);
	args : = *void.[*file, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_unicode_at :: (using self: *StringName, at: int) -> int #c_call {
	method_name := new_string_name("unicode_at");
	defer destroy(*method_name);
	args : = *void.[*at, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_indent :: (using self: *StringName, prefix: String) -> String #c_call {
	method_name := new_string_name("indent");
	defer destroy(*method_name);
	args : = *void.[*prefix, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_dedent :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("dedent");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_md5_text :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("md5_text");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_sha1_text :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("sha1_text");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_sha256_text :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("sha256_text");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_md5_buffer :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("md5_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_sha1_buffer :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("sha1_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_sha256_buffer :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("sha256_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_empty :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_contains :: (using self: *StringName, what: String) -> bool #c_call {
	method_name := new_string_name("contains");
	defer destroy(*method_name);
	args : = *void.[*what, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_containsn :: (using self: *StringName, what: String) -> bool #c_call {
	method_name := new_string_name("containsn");
	defer destroy(*method_name);
	args : = *void.[*what, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_absolute_path :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_absolute_path");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_relative_path :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_relative_path");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_simplify_path :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("simplify_path");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_get_base_dir :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("get_base_dir");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_get_file :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("get_file");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_xml_escape :: (using self: *StringName, escape_quotes: bool) -> String #c_call {
	method_name := new_string_name("xml_escape");
	defer destroy(*method_name);
	args : = *void.[*escape_quotes, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3429816538);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_xml_unescape :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("xml_unescape");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_uri_encode :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("uri_encode");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_uri_decode :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("uri_decode");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_c_escape :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("c_escape");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_c_unescape :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("c_unescape");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_json_escape :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("json_escape");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_validate_node_name :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("validate_node_name");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_validate_filename :: (using self: *StringName) -> String #c_call {
	method_name := new_string_name("validate_filename");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_valid_identifier :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_valid_identifier");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_valid_int :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_valid_int");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_valid_float :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_valid_float");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_valid_hex_number :: (using self: *StringName, with_prefix: bool) -> bool #c_call {
	method_name := new_string_name("is_valid_hex_number");
	defer destroy(*method_name);
	args : = *void.[*with_prefix, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 593672999);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_valid_html_color :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_valid_html_color");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_valid_ip_address :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_valid_ip_address");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_is_valid_filename :: (using self: *StringName) -> bool #c_call {
	method_name := new_string_name("is_valid_filename");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_int :: (using self: *StringName) -> int #c_call {
	method_name := new_string_name("to_int");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_float :: (using self: *StringName) -> float #c_call {
	method_name := new_string_name("to_float");
	defer destroy(*method_name);
	args : = *void.[];
	ret: float;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 466405837);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_hex_to_int :: (using self: *StringName) -> int #c_call {
	method_name := new_string_name("hex_to_int");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_bin_to_int :: (using self: *StringName) -> int #c_call {
	method_name := new_string_name("bin_to_int");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_lpad :: (using self: *StringName, min_length: int, character: String) -> String #c_call {
	method_name := new_string_name("lpad");
	defer destroy(*method_name);
	args : = *void.[*min_length, *character, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 248737229);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_rpad :: (using self: *StringName, min_length: int, character: String) -> String #c_call {
	method_name := new_string_name("rpad");
	defer destroy(*method_name);
	args : = *void.[*min_length, *character, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 248737229);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_pad_decimals :: (using self: *StringName, digits: int) -> String #c_call {
	method_name := new_string_name("pad_decimals");
	defer destroy(*method_name);
	args : = *void.[*digits, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_pad_zeros :: (using self: *StringName, digits: int) -> String #c_call {
	method_name := new_string_name("pad_zeros");
	defer destroy(*method_name);
	args : = *void.[*digits, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 2162347432);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_trim_prefix :: (using self: *StringName, prefix: String) -> String #c_call {
	method_name := new_string_name("trim_prefix");
	defer destroy(*method_name);
	args : = *void.[*prefix, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_trim_suffix :: (using self: *StringName, suffix: String) -> String #c_call {
	method_name := new_string_name("trim_suffix");
	defer destroy(*method_name);
	args : = *void.[*suffix, ];
	ret: String;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3134094431);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_ascii_buffer :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("to_ascii_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_utf8_buffer :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("to_utf8_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_utf16_buffer :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("to_utf16_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_utf32_buffer :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("to_utf32_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_hex_decode :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("hex_decode");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_to_wchar_buffer :: (using self: *StringName) -> PackedByteArray #c_call {
	method_name := new_string_name("to_wchar_buffer");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

StringName_hash :: (using self: *StringName) -> int #c_call {
	method_name := new_string_name("hash");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.STRING_NAME, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath :: struct {
	__private: [8]u8;
}

node_path_destroy : PtrDestructor;
destroy :: (self: *NodePath) #no_context { 
	node_path_destroy(self);
}


NodePath_is_absolute :: (using self: *NodePath) -> bool #c_call {
	method_name := new_string_name("is_absolute");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_get_name_count :: (using self: *NodePath) -> int #c_call {
	method_name := new_string_name("get_name_count");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_get_name :: (using self: *NodePath, idx: int) -> StringName #c_call {
	method_name := new_string_name("get_name");
	defer destroy(*method_name);
	args : = *void.[*idx, ];
	ret: StringName;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 2948586938);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_get_subname_count :: (using self: *NodePath) -> int #c_call {
	method_name := new_string_name("get_subname_count");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_hash :: (using self: *NodePath) -> int #c_call {
	method_name := new_string_name("hash");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_get_subname :: (using self: *NodePath, idx: int) -> StringName #c_call {
	method_name := new_string_name("get_subname");
	defer destroy(*method_name);
	args : = *void.[*idx, ];
	ret: StringName;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 2948586938);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_get_concatenated_names :: (using self: *NodePath) -> StringName #c_call {
	method_name := new_string_name("get_concatenated_names");
	defer destroy(*method_name);
	args : = *void.[];
	ret: StringName;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 1825232092);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_get_concatenated_subnames :: (using self: *NodePath) -> StringName #c_call {
	method_name := new_string_name("get_concatenated_subnames");
	defer destroy(*method_name);
	args : = *void.[];
	ret: StringName;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 1825232092);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_slice :: (using self: *NodePath, begin: int, end: int) -> NodePath #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: NodePath;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 421628484);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_get_as_property_path :: (using self: *NodePath) -> NodePath #c_call {
	method_name := new_string_name("get_as_property_path");
	defer destroy(*method_name);
	args : = *void.[];
	ret: NodePath;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 1598598043);
	func(self, args.data, *ret, args.count);
	return ret;
}

NodePath_is_empty :: (using self: *NodePath) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.NODEPATH, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

RID :: struct {
	__private: [8]u8;
}

RID_is_valid :: (using self: *RID) -> bool #c_call {
	method_name := new_string_name("is_valid");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.RID, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

RID_get_id :: (using self: *RID) -> int #c_call {
	method_name := new_string_name("get_id");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.RID, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable :: struct {
	__private: [16]u8;
}

callable_destroy : PtrDestructor;
destroy :: (self: *Callable) #no_context { 
	callable_destroy(self);
}


Callable_create :: (using self: *Callable, variant: Variant, method: StringName) -> Callable #c_call {
	method_name := new_string_name("create");
	defer destroy(*method_name);
	args : = *void.[*variant, *method, ];
	ret: Callable;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 1709381114);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_callv :: (using self: *Callable, arguments: Array) -> Variant #c_call {
	method_name := new_string_name("callv");
	defer destroy(*method_name);
	args : = *void.[*arguments, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 413578926);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_is_null :: (using self: *Callable) -> bool #c_call {
	method_name := new_string_name("is_null");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_is_custom :: (using self: *Callable) -> bool #c_call {
	method_name := new_string_name("is_custom");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_is_standard :: (using self: *Callable) -> bool #c_call {
	method_name := new_string_name("is_standard");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_is_valid :: (using self: *Callable) -> bool #c_call {
	method_name := new_string_name("is_valid");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_get_object :: (using self: *Callable) -> Object #c_call {
	method_name := new_string_name("get_object");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Object;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 4008621732);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_get_object_id :: (using self: *Callable) -> int #c_call {
	method_name := new_string_name("get_object_id");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_get_method :: (using self: *Callable) -> StringName #c_call {
	method_name := new_string_name("get_method");
	defer destroy(*method_name);
	args : = *void.[];
	ret: StringName;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 1825232092);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_get_argument_count :: (using self: *Callable) -> int #c_call {
	method_name := new_string_name("get_argument_count");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_get_bound_arguments_count :: (using self: *Callable) -> int #c_call {
	method_name := new_string_name("get_bound_arguments_count");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_get_bound_arguments :: (using self: *Callable) -> Array #c_call {
	method_name := new_string_name("get_bound_arguments");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Array;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 4144163970);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_hash :: (using self: *Callable) -> int #c_call {
	method_name := new_string_name("hash");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_bindv :: (using self: *Callable, arguments: Array) -> Callable #c_call {
	method_name := new_string_name("bindv");
	defer destroy(*method_name);
	args : = *void.[*arguments, ];
	ret: Callable;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3564560322);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_unbind :: (using self: *Callable, argcount: int) -> Callable #c_call {
	method_name := new_string_name("unbind");
	defer destroy(*method_name);
	args : = *void.[*argcount, ];
	ret: Callable;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 755001590);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_call :: (using self: *Callable) -> Variant #c_call {
	method_name := new_string_name("call");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3643564216);
	func(self, args.data, *ret, args.count);
	return ret;
}

Callable_call_deferred :: (using self: *Callable) #c_call {
	method_name := new_string_name("call_deferred");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3286317445);
	func(self, args.data, null, args.count);
}

Callable_rpc :: (using self: *Callable) #c_call {
	method_name := new_string_name("rpc");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3286317445);
	func(self, args.data, null, args.count);
}

Callable_rpc_id :: (using self: *Callable, peer_id: int) #c_call {
	method_name := new_string_name("rpc_id");
	defer destroy(*method_name);
	args : = *void.[*peer_id, ];
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 2270047679);
	func(self, args.data, null, args.count);
}

Callable_bind :: (using self: *Callable) -> Callable #c_call {
	method_name := new_string_name("bind");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Callable;
	func := variant_get_ptr_builtin_method(.CALLABLE, *method_name, 3224143119);
	func(self, args.data, *ret, args.count);
	return ret;
}

Signal :: struct {
	__private: [16]u8;
}

signal_destroy : PtrDestructor;
destroy :: (self: *Signal) #no_context { 
	signal_destroy(self);
}


Signal_is_null :: (using self: *Signal) -> bool #c_call {
	method_name := new_string_name("is_null");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Signal_get_object :: (using self: *Signal) -> Object #c_call {
	method_name := new_string_name("get_object");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Object;
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 4008621732);
	func(self, args.data, *ret, args.count);
	return ret;
}

Signal_get_object_id :: (using self: *Signal) -> int #c_call {
	method_name := new_string_name("get_object_id");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Signal_get_name :: (using self: *Signal) -> StringName #c_call {
	method_name := new_string_name("get_name");
	defer destroy(*method_name);
	args : = *void.[];
	ret: StringName;
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 1825232092);
	func(self, args.data, *ret, args.count);
	return ret;
}

Signal_connect :: (using self: *Signal, callable: Callable, flags: int) -> int #c_call {
	method_name := new_string_name("connect");
	defer destroy(*method_name);
	args : = *void.[*callable, *flags, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 979702392);
	func(self, args.data, *ret, args.count);
	return ret;
}

Signal_disconnect :: (using self: *Signal, callable: Callable) #c_call {
	method_name := new_string_name("disconnect");
	defer destroy(*method_name);
	args : = *void.[*callable, ];
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 3470848906);
	func(self, args.data, null, args.count);
}

Signal_is_connected :: (using self: *Signal, callable: Callable) -> bool #c_call {
	method_name := new_string_name("is_connected");
	defer destroy(*method_name);
	args : = *void.[*callable, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 4129521963);
	func(self, args.data, *ret, args.count);
	return ret;
}

Signal_get_connections :: (using self: *Signal) -> Array #c_call {
	method_name := new_string_name("get_connections");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Array;
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 4144163970);
	func(self, args.data, *ret, args.count);
	return ret;
}

Signal_emit :: (using self: *Signal) #c_call {
	method_name := new_string_name("emit");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.SIGNAL, *method_name, 3286317445);
	func(self, args.data, null, args.count);
}

Dictionary :: struct {
	__private: [8]u8;
}

dictionary_destroy : PtrDestructor;
destroy :: (self: *Dictionary) #no_context { 
	dictionary_destroy(self);
}


Dictionary_size :: (using self: *Dictionary) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_is_empty :: (using self: *Dictionary) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_clear :: (using self: *Dictionary) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

Dictionary_merge :: (using self: *Dictionary, dictionary: Dictionary, overwrite: bool) #c_call {
	method_name := new_string_name("merge");
	defer destroy(*method_name);
	args : = *void.[*dictionary, *overwrite, ];
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 2079548978);
	func(self, args.data, null, args.count);
}

Dictionary_merged :: (using self: *Dictionary, dictionary: Dictionary, overwrite: bool) -> Dictionary #c_call {
	method_name := new_string_name("merged");
	defer destroy(*method_name);
	args : = *void.[*dictionary, *overwrite, ];
	ret: Dictionary;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 2271165639);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_has :: (using self: *Dictionary, key: Variant) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*key, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 3680194679);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_has_all :: (using self: *Dictionary, keys: Array) -> bool #c_call {
	method_name := new_string_name("has_all");
	defer destroy(*method_name);
	args : = *void.[*keys, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 2988181878);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_find_key :: (using self: *Dictionary, value: Variant) -> Variant #c_call {
	method_name := new_string_name("find_key");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 1988825835);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_erase :: (using self: *Dictionary, key: Variant) -> bool #c_call {
	method_name := new_string_name("erase");
	defer destroy(*method_name);
	args : = *void.[*key, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 1776646889);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_hash :: (using self: *Dictionary) -> int #c_call {
	method_name := new_string_name("hash");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_keys :: (using self: *Dictionary) -> Array #c_call {
	method_name := new_string_name("keys");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Array;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 4144163970);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_values :: (using self: *Dictionary) -> Array #c_call {
	method_name := new_string_name("values");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Array;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 4144163970);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_duplicate :: (using self: *Dictionary, deep: bool) -> Dictionary #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[*deep, ];
	ret: Dictionary;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 830099069);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_get :: (using self: *Dictionary, key: Variant, default: Variant) -> Variant #c_call {
	method_name := new_string_name("get");
	defer destroy(*method_name);
	args : = *void.[*key, *default, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 2205440559);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_get_or_add :: (using self: *Dictionary, key: Variant, default: Variant) -> Variant #c_call {
	method_name := new_string_name("get_or_add");
	defer destroy(*method_name);
	args : = *void.[*key, *default, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 1052551076);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_make_read_only :: (using self: *Dictionary) #c_call {
	method_name := new_string_name("make_read_only");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

Dictionary_is_read_only :: (using self: *Dictionary) -> bool #c_call {
	method_name := new_string_name("is_read_only");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Dictionary_recursive_equal :: (using self: *Dictionary, dictionary: Dictionary, recursion_count: int) -> bool #c_call {
	method_name := new_string_name("recursive_equal");
	defer destroy(*method_name);
	args : = *void.[*dictionary, *recursion_count, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.DICTIONARY, *method_name, 1404404751);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array :: struct {
	__private: [8]u8;
}

array_destroy : PtrDestructor;
destroy :: (self: *Array) #no_context { 
	array_destroy(self);
}


Array_size :: (using self: *Array) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_is_empty :: (using self: *Array) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_clear :: (using self: *Array) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

Array_hash :: (using self: *Array) -> int #c_call {
	method_name := new_string_name("hash");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_assign :: (using self: *Array, array: Array) #c_call {
	method_name := new_string_name("assign");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 2307260970);
	func(self, args.data, null, args.count);
}

Array_push_back :: (using self: *Array, value: Variant) #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3316032543);
	func(self, args.data, null, args.count);
}

Array_push_front :: (using self: *Array, value: Variant) #c_call {
	method_name := new_string_name("push_front");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3316032543);
	func(self, args.data, null, args.count);
}

Array_append :: (using self: *Array, value: Variant) #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3316032543);
	func(self, args.data, null, args.count);
}

Array_append_array :: (using self: *Array, array: Array) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 2307260970);
	func(self, args.data, null, args.count);
}

Array_resize :: (using self: *Array, size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_insert :: (using self: *Array, position: int, value: Variant) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*position, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3176316662);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_remove_at :: (using self: *Array, position: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*position, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

Array_fill :: (using self: *Array, value: Variant) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3316032543);
	func(self, args.data, null, args.count);
}

Array_erase :: (using self: *Array, value: Variant) #c_call {
	method_name := new_string_name("erase");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3316032543);
	func(self, args.data, null, args.count);
}

Array_front :: (using self: *Array) -> Variant #c_call {
	method_name := new_string_name("front");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1460142086);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_back :: (using self: *Array) -> Variant #c_call {
	method_name := new_string_name("back");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1460142086);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_pick_random :: (using self: *Array) -> Variant #c_call {
	method_name := new_string_name("pick_random");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1460142086);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_find :: (using self: *Array, what: Variant, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 2336346817);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_rfind :: (using self: *Array, what: Variant, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*what, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 2336346817);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_count :: (using self: *Array, value: Variant) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1481661226);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_has :: (using self: *Array, value: Variant) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3680194679);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_pop_back :: (using self: *Array) -> Variant #c_call {
	method_name := new_string_name("pop_back");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1321915136);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_pop_front :: (using self: *Array) -> Variant #c_call {
	method_name := new_string_name("pop_front");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1321915136);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_pop_at :: (using self: *Array, position: int) -> Variant #c_call {
	method_name := new_string_name("pop_at");
	defer destroy(*method_name);
	args : = *void.[*position, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3518259424);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_sort :: (using self: *Array) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

Array_sort_custom :: (using self: *Array, func: Callable) #c_call {
	method_name := new_string_name("sort_custom");
	defer destroy(*method_name);
	args : = *void.[*func, ];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3470848906);
	func(self, args.data, null, args.count);
}

Array_shuffle :: (using self: *Array) #c_call {
	method_name := new_string_name("shuffle");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

Array_bsearch :: (using self: *Array, value: Variant, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3372222236);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_bsearch_custom :: (using self: *Array, value: Variant, func: Callable, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch_custom");
	defer destroy(*method_name);
	args : = *void.[*value, *func, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 161317131);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_reverse :: (using self: *Array) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

Array_duplicate :: (using self: *Array, deep: bool) -> Array #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[*deep, ];
	ret: Array;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 636440122);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_slice :: (using self: *Array, begin: int, end: int, step: int, deep: bool) -> Array #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, *step, *deep, ];
	ret: Array;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1393718243);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_filter :: (using self: *Array, method: Callable) -> Array #c_call {
	method_name := new_string_name("filter");
	defer destroy(*method_name);
	args : = *void.[*method, ];
	ret: Array;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 4075186556);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_map :: (using self: *Array, method: Callable) -> Array #c_call {
	method_name := new_string_name("map");
	defer destroy(*method_name);
	args : = *void.[*method, ];
	ret: Array;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 4075186556);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_reduce :: (using self: *Array, method: Callable, accum: Variant) -> Variant #c_call {
	method_name := new_string_name("reduce");
	defer destroy(*method_name);
	args : = *void.[*method, *accum, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 4272450342);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_any :: (using self: *Array, method: Callable) -> bool #c_call {
	method_name := new_string_name("any");
	defer destroy(*method_name);
	args : = *void.[*method, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 4129521963);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_all :: (using self: *Array, method: Callable) -> bool #c_call {
	method_name := new_string_name("all");
	defer destroy(*method_name);
	args : = *void.[*method, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 4129521963);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_max :: (using self: *Array) -> Variant #c_call {
	method_name := new_string_name("max");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1460142086);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_min :: (using self: *Array) -> Variant #c_call {
	method_name := new_string_name("min");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1460142086);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_is_typed :: (using self: *Array) -> bool #c_call {
	method_name := new_string_name("is_typed");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_is_same_typed :: (using self: *Array, array: Array) -> bool #c_call {
	method_name := new_string_name("is_same_typed");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 2988181878);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_get_typed_builtin :: (using self: *Array) -> int #c_call {
	method_name := new_string_name("get_typed_builtin");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_get_typed_class_name :: (using self: *Array) -> StringName #c_call {
	method_name := new_string_name("get_typed_class_name");
	defer destroy(*method_name);
	args : = *void.[];
	ret: StringName;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1825232092);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_get_typed_script :: (using self: *Array) -> Variant #c_call {
	method_name := new_string_name("get_typed_script");
	defer destroy(*method_name);
	args : = *void.[];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 1460142086);
	func(self, args.data, *ret, args.count);
	return ret;
}

Array_make_read_only :: (using self: *Array) #c_call {
	method_name := new_string_name("make_read_only");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

Array_is_read_only :: (using self: *Array) -> bool #c_call {
	method_name := new_string_name("is_read_only");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray :: struct {
	__private: [16]u8;
}

packed_byte_array_destroy : PtrDestructor;
destroy :: (self: *PackedByteArray) #no_context { 
	packed_byte_array_destroy(self);
}


PackedByteArray_size :: (using self: *PackedByteArray) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_is_empty :: (using self: *PackedByteArray) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_set :: (using self: *PackedByteArray, index: int, value: int) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_push_back :: (using self: *PackedByteArray, value: int) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 694024632);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_append :: (using self: *PackedByteArray, value: int) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 694024632);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_append_array :: (using self: *PackedByteArray, array: PackedByteArray) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 791097111);
	func(self, args.data, null, args.count);
}

PackedByteArray_remove_at :: (using self: *PackedByteArray, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedByteArray_insert :: (using self: *PackedByteArray, at_index: int, value: int) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1487112728);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_fill :: (using self: *PackedByteArray, value: int) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedByteArray_resize :: (using self: *PackedByteArray, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_clear :: (using self: *PackedByteArray) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedByteArray_has :: (using self: *PackedByteArray, value: int) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 931488181);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_reverse :: (using self: *PackedByteArray) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedByteArray_slice :: (using self: *PackedByteArray, begin: int, end: int) -> PackedByteArray #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2278869132);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_sort :: (using self: *PackedByteArray) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedByteArray_bsearch :: (using self: *PackedByteArray, value: int, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3380005890);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_duplicate :: (using self: *PackedByteArray) -> PackedByteArray #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 851781288);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_find :: (using self: *PackedByteArray, value: int, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2984303840);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_rfind :: (using self: *PackedByteArray, value: int, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2984303840);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_count :: (using self: *PackedByteArray, value: int) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_get_string_from_ascii :: (using self: *PackedByteArray) -> String #c_call {
	method_name := new_string_name("get_string_from_ascii");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_get_string_from_utf8 :: (using self: *PackedByteArray) -> String #c_call {
	method_name := new_string_name("get_string_from_utf8");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_get_string_from_utf16 :: (using self: *PackedByteArray) -> String #c_call {
	method_name := new_string_name("get_string_from_utf16");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_get_string_from_utf32 :: (using self: *PackedByteArray) -> String #c_call {
	method_name := new_string_name("get_string_from_utf32");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_get_string_from_wchar :: (using self: *PackedByteArray) -> String #c_call {
	method_name := new_string_name("get_string_from_wchar");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_hex_encode :: (using self: *PackedByteArray) -> String #c_call {
	method_name := new_string_name("hex_encode");
	defer destroy(*method_name);
	args : = *void.[];
	ret: String;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3942272618);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_compress :: (using self: *PackedByteArray, compression_mode: int) -> PackedByteArray #c_call {
	method_name := new_string_name("compress");
	defer destroy(*method_name);
	args : = *void.[*compression_mode, ];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1845905913);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decompress :: (using self: *PackedByteArray, buffer_size: int, compression_mode: int) -> PackedByteArray #c_call {
	method_name := new_string_name("decompress");
	defer destroy(*method_name);
	args : = *void.[*buffer_size, *compression_mode, ];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2278869132);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decompress_dynamic :: (using self: *PackedByteArray, max_output_size: int, compression_mode: int) -> PackedByteArray #c_call {
	method_name := new_string_name("decompress_dynamic");
	defer destroy(*method_name);
	args : = *void.[*max_output_size, *compression_mode, ];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2278869132);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_u8 :: (using self: *PackedByteArray, byte_offset: int) -> int #c_call {
	method_name := new_string_name("decode_u8");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_s8 :: (using self: *PackedByteArray, byte_offset: int) -> int #c_call {
	method_name := new_string_name("decode_s8");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_u16 :: (using self: *PackedByteArray, byte_offset: int) -> int #c_call {
	method_name := new_string_name("decode_u16");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_s16 :: (using self: *PackedByteArray, byte_offset: int) -> int #c_call {
	method_name := new_string_name("decode_s16");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_u32 :: (using self: *PackedByteArray, byte_offset: int) -> int #c_call {
	method_name := new_string_name("decode_u32");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_s32 :: (using self: *PackedByteArray, byte_offset: int) -> int #c_call {
	method_name := new_string_name("decode_s32");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_u64 :: (using self: *PackedByteArray, byte_offset: int) -> int #c_call {
	method_name := new_string_name("decode_u64");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_s64 :: (using self: *PackedByteArray, byte_offset: int) -> int #c_call {
	method_name := new_string_name("decode_s64");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_half :: (using self: *PackedByteArray, byte_offset: int) -> float #c_call {
	method_name := new_string_name("decode_half");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1401583798);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_float :: (using self: *PackedByteArray, byte_offset: int) -> float #c_call {
	method_name := new_string_name("decode_float");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1401583798);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_double :: (using self: *PackedByteArray, byte_offset: int) -> float #c_call {
	method_name := new_string_name("decode_double");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, ];
	ret: float;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1401583798);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_has_encoded_var :: (using self: *PackedByteArray, byte_offset: int, allow_objects: bool) -> bool #c_call {
	method_name := new_string_name("has_encoded_var");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *allow_objects, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2914632957);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_var :: (using self: *PackedByteArray, byte_offset: int, allow_objects: bool) -> Variant #c_call {
	method_name := new_string_name("decode_var");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *allow_objects, ];
	ret: Variant;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1740420038);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_decode_var_size :: (using self: *PackedByteArray, byte_offset: int, allow_objects: bool) -> int #c_call {
	method_name := new_string_name("decode_var_size");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *allow_objects, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 954237325);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_to_int32_array :: (using self: *PackedByteArray) -> PackedInt32Array #c_call {
	method_name := new_string_name("to_int32_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedInt32Array;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3158844420);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_to_int64_array :: (using self: *PackedByteArray) -> PackedInt64Array #c_call {
	method_name := new_string_name("to_int64_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedInt64Array;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1961294120);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_to_float32_array :: (using self: *PackedByteArray) -> PackedFloat32Array #c_call {
	method_name := new_string_name("to_float32_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedFloat32Array;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3575107827);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_to_float64_array :: (using self: *PackedByteArray) -> PackedFloat64Array #c_call {
	method_name := new_string_name("to_float64_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedFloat64Array;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1627308337);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedByteArray_encode_u8 :: (using self: *PackedByteArray, byte_offset: int, value: int) #c_call {
	method_name := new_string_name("encode_u8");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_s8 :: (using self: *PackedByteArray, byte_offset: int, value: int) #c_call {
	method_name := new_string_name("encode_s8");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_u16 :: (using self: *PackedByteArray, byte_offset: int, value: int) #c_call {
	method_name := new_string_name("encode_u16");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_s16 :: (using self: *PackedByteArray, byte_offset: int, value: int) #c_call {
	method_name := new_string_name("encode_s16");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_u32 :: (using self: *PackedByteArray, byte_offset: int, value: int) #c_call {
	method_name := new_string_name("encode_u32");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_s32 :: (using self: *PackedByteArray, byte_offset: int, value: int) #c_call {
	method_name := new_string_name("encode_s32");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_u64 :: (using self: *PackedByteArray, byte_offset: int, value: int) #c_call {
	method_name := new_string_name("encode_u64");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_s64 :: (using self: *PackedByteArray, byte_offset: int, value: int) #c_call {
	method_name := new_string_name("encode_s64");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_half :: (using self: *PackedByteArray, byte_offset: int, value: float) #c_call {
	method_name := new_string_name("encode_half");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1113000516);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_float :: (using self: *PackedByteArray, byte_offset: int, value: float) #c_call {
	method_name := new_string_name("encode_float");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1113000516);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_double :: (using self: *PackedByteArray, byte_offset: int, value: float) #c_call {
	method_name := new_string_name("encode_double");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 1113000516);
	func(self, args.data, null, args.count);
}

PackedByteArray_encode_var :: (using self: *PackedByteArray, byte_offset: int, value: Variant, allow_objects: bool) -> int #c_call {
	method_name := new_string_name("encode_var");
	defer destroy(*method_name);
	args : = *void.[*byte_offset, *value, *allow_objects, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDBYTEARRAY, *method_name, 2604460497);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array :: struct {
	__private: [16]u8;
}

packed_int32_array_destroy : PtrDestructor;
destroy :: (self: *PackedInt32Array) #no_context { 
	packed_int32_array_destroy(self);
}


PackedInt32Array_size :: (using self: *PackedInt32Array) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_is_empty :: (using self: *PackedInt32Array) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_set :: (using self: *PackedInt32Array, index: int, value: int) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedInt32Array_push_back :: (using self: *PackedInt32Array, value: int) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 694024632);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_append :: (using self: *PackedInt32Array, value: int) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 694024632);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_append_array :: (using self: *PackedInt32Array, array: PackedInt32Array) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 1087733270);
	func(self, args.data, null, args.count);
}

PackedInt32Array_remove_at :: (using self: *PackedInt32Array, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedInt32Array_insert :: (using self: *PackedInt32Array, at_index: int, value: int) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 1487112728);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_fill :: (using self: *PackedInt32Array, value: int) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedInt32Array_resize :: (using self: *PackedInt32Array, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_clear :: (using self: *PackedInt32Array) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedInt32Array_has :: (using self: *PackedInt32Array, value: int) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 931488181);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_reverse :: (using self: *PackedInt32Array) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedInt32Array_slice :: (using self: *PackedInt32Array, begin: int, end: int) -> PackedInt32Array #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedInt32Array;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 1216021098);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_to_byte_array :: (using self: *PackedInt32Array) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_sort :: (using self: *PackedInt32Array) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedInt32Array_bsearch :: (using self: *PackedInt32Array, value: int, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 3380005890);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_duplicate :: (using self: *PackedInt32Array) -> PackedInt32Array #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedInt32Array;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 1997843129);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_find :: (using self: *PackedInt32Array, value: int, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 2984303840);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_rfind :: (using self: *PackedInt32Array, value: int, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 2984303840);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt32Array_count :: (using self: *PackedInt32Array, value: int) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT32ARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array :: struct {
	__private: [16]u8;
}

packed_int64_array_destroy : PtrDestructor;
destroy :: (self: *PackedInt64Array) #no_context { 
	packed_int64_array_destroy(self);
}


PackedInt64Array_size :: (using self: *PackedInt64Array) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_is_empty :: (using self: *PackedInt64Array) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_set :: (using self: *PackedInt64Array, index: int, value: int) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 3638975848);
	func(self, args.data, null, args.count);
}

PackedInt64Array_push_back :: (using self: *PackedInt64Array, value: int) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 694024632);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_append :: (using self: *PackedInt64Array, value: int) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 694024632);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_append_array :: (using self: *PackedInt64Array, array: PackedInt64Array) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 2090311302);
	func(self, args.data, null, args.count);
}

PackedInt64Array_remove_at :: (using self: *PackedInt64Array, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedInt64Array_insert :: (using self: *PackedInt64Array, at_index: int, value: int) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 1487112728);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_fill :: (using self: *PackedInt64Array, value: int) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedInt64Array_resize :: (using self: *PackedInt64Array, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_clear :: (using self: *PackedInt64Array) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedInt64Array_has :: (using self: *PackedInt64Array, value: int) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 931488181);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_reverse :: (using self: *PackedInt64Array) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedInt64Array_slice :: (using self: *PackedInt64Array, begin: int, end: int) -> PackedInt64Array #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedInt64Array;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 1726550804);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_to_byte_array :: (using self: *PackedInt64Array) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_sort :: (using self: *PackedInt64Array) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedInt64Array_bsearch :: (using self: *PackedInt64Array, value: int, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 3380005890);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_duplicate :: (using self: *PackedInt64Array) -> PackedInt64Array #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedInt64Array;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 2376370016);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_find :: (using self: *PackedInt64Array, value: int, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 2984303840);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_rfind :: (using self: *PackedInt64Array, value: int, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 2984303840);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedInt64Array_count :: (using self: *PackedInt64Array, value: int) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDINT64ARRAY, *method_name, 4103005248);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array :: struct {
	__private: [16]u8;
}

packed_float32_array_destroy : PtrDestructor;
destroy :: (self: *PackedFloat32Array) #no_context { 
	packed_float32_array_destroy(self);
}


PackedFloat32Array_size :: (using self: *PackedFloat32Array) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_is_empty :: (using self: *PackedFloat32Array) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_set :: (using self: *PackedFloat32Array, index: int, value: float) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 1113000516);
	func(self, args.data, null, args.count);
}

PackedFloat32Array_push_back :: (using self: *PackedFloat32Array, value: float) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 4094791666);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_append :: (using self: *PackedFloat32Array, value: float) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 4094791666);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_append_array :: (using self: *PackedFloat32Array, array: PackedFloat32Array) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 2981316639);
	func(self, args.data, null, args.count);
}

PackedFloat32Array_remove_at :: (using self: *PackedFloat32Array, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedFloat32Array_insert :: (using self: *PackedFloat32Array, at_index: int, value: float) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 1379903876);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_fill :: (using self: *PackedFloat32Array, value: float) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 833936903);
	func(self, args.data, null, args.count);
}

PackedFloat32Array_resize :: (using self: *PackedFloat32Array, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_clear :: (using self: *PackedFloat32Array) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedFloat32Array_has :: (using self: *PackedFloat32Array, value: float) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 1296369134);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_reverse :: (using self: *PackedFloat32Array) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedFloat32Array_slice :: (using self: *PackedFloat32Array, begin: int, end: int) -> PackedFloat32Array #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedFloat32Array;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 1418229160);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_to_byte_array :: (using self: *PackedFloat32Array) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_sort :: (using self: *PackedFloat32Array) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedFloat32Array_bsearch :: (using self: *PackedFloat32Array, value: float, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 1188816338);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_duplicate :: (using self: *PackedFloat32Array) -> PackedFloat32Array #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedFloat32Array;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 831114784);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_find :: (using self: *PackedFloat32Array, value: float, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 1343150241);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_rfind :: (using self: *PackedFloat32Array, value: float, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 1343150241);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat32Array_count :: (using self: *PackedFloat32Array, value: float) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT32ARRAY, *method_name, 2859915090);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array :: struct {
	__private: [16]u8;
}

packed_float64_array_destroy : PtrDestructor;
destroy :: (self: *PackedFloat64Array) #no_context { 
	packed_float64_array_destroy(self);
}


PackedFloat64Array_size :: (using self: *PackedFloat64Array) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_is_empty :: (using self: *PackedFloat64Array) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_set :: (using self: *PackedFloat64Array, index: int, value: float) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 1113000516);
	func(self, args.data, null, args.count);
}

PackedFloat64Array_push_back :: (using self: *PackedFloat64Array, value: float) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 4094791666);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_append :: (using self: *PackedFloat64Array, value: float) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 4094791666);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_append_array :: (using self: *PackedFloat64Array, array: PackedFloat64Array) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 792078629);
	func(self, args.data, null, args.count);
}

PackedFloat64Array_remove_at :: (using self: *PackedFloat64Array, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedFloat64Array_insert :: (using self: *PackedFloat64Array, at_index: int, value: float) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 1379903876);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_fill :: (using self: *PackedFloat64Array, value: float) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 833936903);
	func(self, args.data, null, args.count);
}

PackedFloat64Array_resize :: (using self: *PackedFloat64Array, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_clear :: (using self: *PackedFloat64Array) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedFloat64Array_has :: (using self: *PackedFloat64Array, value: float) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 1296369134);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_reverse :: (using self: *PackedFloat64Array) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedFloat64Array_slice :: (using self: *PackedFloat64Array, begin: int, end: int) -> PackedFloat64Array #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedFloat64Array;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 2192974324);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_to_byte_array :: (using self: *PackedFloat64Array) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_sort :: (using self: *PackedFloat64Array) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedFloat64Array_bsearch :: (using self: *PackedFloat64Array, value: float, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 1188816338);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_duplicate :: (using self: *PackedFloat64Array) -> PackedFloat64Array #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedFloat64Array;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 949266573);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_find :: (using self: *PackedFloat64Array, value: float, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 1343150241);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_rfind :: (using self: *PackedFloat64Array, value: float, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 1343150241);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedFloat64Array_count :: (using self: *PackedFloat64Array, value: float) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDFLOAT64ARRAY, *method_name, 2859915090);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray :: struct {
	__private: [16]u8;
}

packed_string_array_destroy : PtrDestructor;
destroy :: (self: *PackedStringArray) #no_context { 
	packed_string_array_destroy(self);
}


PackedStringArray_size :: (using self: *PackedStringArray) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_is_empty :: (using self: *PackedStringArray) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_set :: (using self: *PackedStringArray, index: int, value: String) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 725585539);
	func(self, args.data, null, args.count);
}

PackedStringArray_push_back :: (using self: *PackedStringArray, value: String) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 816187996);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_append :: (using self: *PackedStringArray, value: String) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 816187996);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_append_array :: (using self: *PackedStringArray, array: PackedStringArray) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 1120103966);
	func(self, args.data, null, args.count);
}

PackedStringArray_remove_at :: (using self: *PackedStringArray, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedStringArray_insert :: (using self: *PackedStringArray, at_index: int, value: String) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 2432393153);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_fill :: (using self: *PackedStringArray, value: String) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 3174917410);
	func(self, args.data, null, args.count);
}

PackedStringArray_resize :: (using self: *PackedStringArray, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_clear :: (using self: *PackedStringArray) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedStringArray_has :: (using self: *PackedStringArray, value: String) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 2566493496);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_reverse :: (using self: *PackedStringArray) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedStringArray_slice :: (using self: *PackedStringArray, begin: int, end: int) -> PackedStringArray #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedStringArray;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 2094601407);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_to_byte_array :: (using self: *PackedStringArray) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_sort :: (using self: *PackedStringArray) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedStringArray_bsearch :: (using self: *PackedStringArray, value: String, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 328976671);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_duplicate :: (using self: *PackedStringArray) -> PackedStringArray #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedStringArray;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 2991231410);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_find :: (using self: *PackedStringArray, value: String, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_rfind :: (using self: *PackedStringArray, value: String, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 1760645412);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedStringArray_count :: (using self: *PackedStringArray, value: String) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDSTRINGARRAY, *method_name, 2920860731);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array :: struct {
	__private: [16]u8;
}

packed_vector2_array_destroy : PtrDestructor;
destroy :: (self: *PackedVector2Array) #no_context { 
	packed_vector2_array_destroy(self);
}


PackedVector2Array_size :: (using self: *PackedVector2Array) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_is_empty :: (using self: *PackedVector2Array) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_set :: (using self: *PackedVector2Array, index: int, value: Vector2) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 635767250);
	func(self, args.data, null, args.count);
}

PackedVector2Array_push_back :: (using self: *PackedVector2Array, value: Vector2) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 4188891560);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_append :: (using self: *PackedVector2Array, value: Vector2) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 4188891560);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_append_array :: (using self: *PackedVector2Array, array: PackedVector2Array) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3887534835);
	func(self, args.data, null, args.count);
}

PackedVector2Array_remove_at :: (using self: *PackedVector2Array, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedVector2Array_insert :: (using self: *PackedVector2Array, at_index: int, value: Vector2) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 2225629369);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_fill :: (using self: *PackedVector2Array, value: Vector2) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3790411178);
	func(self, args.data, null, args.count);
}

PackedVector2Array_resize :: (using self: *PackedVector2Array, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_clear :: (using self: *PackedVector2Array) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector2Array_has :: (using self: *PackedVector2Array, value: Vector2) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3190634762);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_reverse :: (using self: *PackedVector2Array) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector2Array_slice :: (using self: *PackedVector2Array, begin: int, end: int) -> PackedVector2Array #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedVector2Array;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3864005350);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_to_byte_array :: (using self: *PackedVector2Array) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_sort :: (using self: *PackedVector2Array) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector2Array_bsearch :: (using self: *PackedVector2Array, value: Vector2, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3778035805);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_duplicate :: (using self: *PackedVector2Array) -> PackedVector2Array #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedVector2Array;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 3763646812);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_find :: (using self: *PackedVector2Array, value: Vector2, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 1469606149);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_rfind :: (using self: *PackedVector2Array, value: Vector2, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 1469606149);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector2Array_count :: (using self: *PackedVector2Array, value: Vector2) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR2ARRAY, *method_name, 2798848307);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array :: struct {
	__private: [16]u8;
}

packed_vector3_array_destroy : PtrDestructor;
destroy :: (self: *PackedVector3Array) #no_context { 
	packed_vector3_array_destroy(self);
}


PackedVector3Array_size :: (using self: *PackedVector3Array) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_is_empty :: (using self: *PackedVector3Array) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_set :: (using self: *PackedVector3Array, index: int, value: Vector3) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3975343409);
	func(self, args.data, null, args.count);
}

PackedVector3Array_push_back :: (using self: *PackedVector3Array, value: Vector3) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3295363524);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_append :: (using self: *PackedVector3Array, value: Vector3) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3295363524);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_append_array :: (using self: *PackedVector3Array, array: PackedVector3Array) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 203538016);
	func(self, args.data, null, args.count);
}

PackedVector3Array_remove_at :: (using self: *PackedVector3Array, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedVector3Array_insert :: (using self: *PackedVector3Array, at_index: int, value: Vector3) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3892262309);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_fill :: (using self: *PackedVector3Array, value: Vector3) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3726392409);
	func(self, args.data, null, args.count);
}

PackedVector3Array_resize :: (using self: *PackedVector3Array, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_clear :: (using self: *PackedVector3Array) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector3Array_has :: (using self: *PackedVector3Array, value: Vector3) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 1749054343);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_reverse :: (using self: *PackedVector3Array) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector3Array_slice :: (using self: *PackedVector3Array, begin: int, end: int) -> PackedVector3Array #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedVector3Array;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 2086131305);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_to_byte_array :: (using self: *PackedVector3Array) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_sort :: (using self: *PackedVector3Array) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector3Array_bsearch :: (using self: *PackedVector3Array, value: Vector3, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 219263630);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_duplicate :: (using self: *PackedVector3Array) -> PackedVector3Array #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedVector3Array;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 2754175465);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_find :: (using self: *PackedVector3Array, value: Vector3, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3718155780);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_rfind :: (using self: *PackedVector3Array, value: Vector3, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 3718155780);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector3Array_count :: (using self: *PackedVector3Array, value: Vector3) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR3ARRAY, *method_name, 194580386);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray :: struct {
	__private: [16]u8;
}

packed_color_array_destroy : PtrDestructor;
destroy :: (self: *PackedColorArray) #no_context { 
	packed_color_array_destroy(self);
}


PackedColorArray_size :: (using self: *PackedColorArray) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_is_empty :: (using self: *PackedColorArray) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_set :: (using self: *PackedColorArray, index: int, value: Color) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 1444096570);
	func(self, args.data, null, args.count);
}

PackedColorArray_push_back :: (using self: *PackedColorArray, value: Color) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 1007858200);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_append :: (using self: *PackedColorArray, value: Color) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 1007858200);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_append_array :: (using self: *PackedColorArray, array: PackedColorArray) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 798822497);
	func(self, args.data, null, args.count);
}

PackedColorArray_remove_at :: (using self: *PackedColorArray, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedColorArray_insert :: (using self: *PackedColorArray, at_index: int, value: Color) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 785289703);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_fill :: (using self: *PackedColorArray, value: Color) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3730314301);
	func(self, args.data, null, args.count);
}

PackedColorArray_resize :: (using self: *PackedColorArray, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_clear :: (using self: *PackedColorArray) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedColorArray_has :: (using self: *PackedColorArray, value: Color) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3167426256);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_reverse :: (using self: *PackedColorArray) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedColorArray_slice :: (using self: *PackedColorArray, begin: int, end: int) -> PackedColorArray #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedColorArray;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 2451797139);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_to_byte_array :: (using self: *PackedColorArray) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_sort :: (using self: *PackedColorArray) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedColorArray_bsearch :: (using self: *PackedColorArray, value: Color, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 314143821);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_duplicate :: (using self: *PackedColorArray) -> PackedColorArray #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedColorArray;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 1011903421);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_find :: (using self: *PackedColorArray, value: Color, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3156095363);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_rfind :: (using self: *PackedColorArray, value: Color, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 3156095363);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedColorArray_count :: (using self: *PackedColorArray, value: Color) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDCOLORARRAY, *method_name, 1682108616);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array :: struct {
	__private: [16]u8;
}

packed_vector4_array_destroy : PtrDestructor;
destroy :: (self: *PackedVector4Array) #no_context { 
	packed_vector4_array_destroy(self);
}


PackedVector4Array_size :: (using self: *PackedVector4Array) -> int #c_call {
	method_name := new_string_name("size");
	defer destroy(*method_name);
	args : = *void.[];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3173160232);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_is_empty :: (using self: *PackedVector4Array) -> bool #c_call {
	method_name := new_string_name("is_empty");
	defer destroy(*method_name);
	args : = *void.[];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3918633141);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_set :: (using self: *PackedVector4Array, index: int, value: Vector4) #c_call {
	method_name := new_string_name("set");
	defer destroy(*method_name);
	args : = *void.[*index, *value, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 1350366223);
	func(self, args.data, null, args.count);
}

PackedVector4Array_push_back :: (using self: *PackedVector4Array, value: Vector4) -> bool #c_call {
	method_name := new_string_name("push_back");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3289167688);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_append :: (using self: *PackedVector4Array, value: Vector4) -> bool #c_call {
	method_name := new_string_name("append");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3289167688);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_append_array :: (using self: *PackedVector4Array, array: PackedVector4Array) #c_call {
	method_name := new_string_name("append_array");
	defer destroy(*method_name);
	args : = *void.[*array, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 537428395);
	func(self, args.data, null, args.count);
}

PackedVector4Array_remove_at :: (using self: *PackedVector4Array, index: int) #c_call {
	method_name := new_string_name("remove_at");
	defer destroy(*method_name);
	args : = *void.[*index, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 2823966027);
	func(self, args.data, null, args.count);
}

PackedVector4Array_insert :: (using self: *PackedVector4Array, at_index: int, value: Vector4) -> int #c_call {
	method_name := new_string_name("insert");
	defer destroy(*method_name);
	args : = *void.[*at_index, *value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 11085009);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_fill :: (using self: *PackedVector4Array, value: Vector4) #c_call {
	method_name := new_string_name("fill");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3761353134);
	func(self, args.data, null, args.count);
}

PackedVector4Array_resize :: (using self: *PackedVector4Array, new_size: int) -> int #c_call {
	method_name := new_string_name("resize");
	defer destroy(*method_name);
	args : = *void.[*new_size, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 848867239);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_clear :: (using self: *PackedVector4Array) #c_call {
	method_name := new_string_name("clear");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector4Array_has :: (using self: *PackedVector4Array, value: Vector4) -> bool #c_call {
	method_name := new_string_name("has");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: bool;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 88913544);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_reverse :: (using self: *PackedVector4Array) #c_call {
	method_name := new_string_name("reverse");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector4Array_slice :: (using self: *PackedVector4Array, begin: int, end: int) -> PackedVector4Array #c_call {
	method_name := new_string_name("slice");
	defer destroy(*method_name);
	args : = *void.[*begin, *end, ];
	ret: PackedVector4Array;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 2942803855);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_to_byte_array :: (using self: *PackedVector4Array) -> PackedByteArray #c_call {
	method_name := new_string_name("to_byte_array");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedByteArray;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 247621236);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_sort :: (using self: *PackedVector4Array) #c_call {
	method_name := new_string_name("sort");
	defer destroy(*method_name);
	args : = *void.[];
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3218959716);
	func(self, args.data, null, args.count);
}

PackedVector4Array_bsearch :: (using self: *PackedVector4Array, value: Vector4, before: bool) -> int #c_call {
	method_name := new_string_name("bsearch");
	defer destroy(*method_name);
	args : = *void.[*value, *before, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 735671678);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_duplicate :: (using self: *PackedVector4Array) -> PackedVector4Array #c_call {
	method_name := new_string_name("duplicate");
	defer destroy(*method_name);
	args : = *void.[];
	ret: PackedVector4Array;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3186305013);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_find :: (using self: *PackedVector4Array, value: Vector4, from: int) -> int #c_call {
	method_name := new_string_name("find");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3091171314);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_rfind :: (using self: *PackedVector4Array, value: Vector4, from: int) -> int #c_call {
	method_name := new_string_name("rfind");
	defer destroy(*method_name);
	args : = *void.[*value, *from, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3091171314);
	func(self, args.data, *ret, args.count);
	return ret;
}

PackedVector4Array_count :: (using self: *PackedVector4Array, value: Vector4) -> int #c_call {
	method_name := new_string_name("count");
	defer destroy(*method_name);
	args : = *void.[*value, ];
	ret: int;
	func := variant_get_ptr_builtin_method(.PACKEDVECTOR4ARRAY, *method_name, 3956594488);
	func(self, args.data, *ret, args.count);
	return ret;
}

Variant :: struct {
	__private: [24]u8;
}

load_all_destructors :: () {
	string_destroy = variant_get_ptr_destructor(.STRING);
	string_name_destroy = variant_get_ptr_destructor(.STRING_NAME);
	node_path_destroy = variant_get_ptr_destructor(.NODE_PATH);
	callable_destroy = variant_get_ptr_destructor(.CALLABLE);
	signal_destroy = variant_get_ptr_destructor(.SIGNAL);
	dictionary_destroy = variant_get_ptr_destructor(.DICTIONARY);
	array_destroy = variant_get_ptr_destructor(.ARRAY);
	packed_byte_array_destroy = variant_get_ptr_destructor(.PACKED_BYTE_ARRAY);
	packed_int32_array_destroy = variant_get_ptr_destructor(.PACKED_INT32_ARRAY);
	packed_int64_array_destroy = variant_get_ptr_destructor(.PACKED_INT64_ARRAY);
	packed_float32_array_destroy = variant_get_ptr_destructor(.PACKED_FLOAT32_ARRAY);
	packed_float64_array_destroy = variant_get_ptr_destructor(.PACKED_FLOAT64_ARRAY);
	packed_string_array_destroy = variant_get_ptr_destructor(.PACKED_STRING_ARRAY);
	packed_vector2_array_destroy = variant_get_ptr_destructor(.PACKED_VECTOR2_ARRAY);
	packed_vector3_array_destroy = variant_get_ptr_destructor(.PACKED_VECTOR3_ARRAY);
	packed_color_array_destroy = variant_get_ptr_destructor(.PACKED_COLOR_ARRAY);
	packed_vector4_array_destroy = variant_get_ptr_destructor(.PACKED_VECTOR4_ARRAY);
}


variant_from_nil : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_bool : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_int : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_float : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_string : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_vector2 : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_vector2i : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_rect2 : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_rect2i : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_vector3 : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_vector3i : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_transform2d : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_vector4 : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_vector4i : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_plane : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_quaternion : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_aabb : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_basis : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_transform3d : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_projection : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_color : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_string_name : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_node_path : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_rid : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_object : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_callable : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_signal : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_dictionary : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_byte_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_int32_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_int64_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_float32_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_float64_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_string_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_vector2_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_vector3_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_color_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_packed_vector4_array : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;
variant_from_variant_max : (result: UninitializedVariantPtr, from: TypePtr) -> void #c_call;

load_variant_constructors :: () {
	variant_from_bool = get_variant_from_type_constructor(.BOOL);
	variant_from_int = get_variant_from_type_constructor(.INT);
	variant_from_float = get_variant_from_type_constructor(.FLOAT);
	variant_from_string = get_variant_from_type_constructor(.STRING);
	variant_from_vector2 = get_variant_from_type_constructor(.VECTOR2);
	variant_from_vector2i = get_variant_from_type_constructor(.VECTOR2I);
	variant_from_rect2 = get_variant_from_type_constructor(.RECT2);
	variant_from_rect2i = get_variant_from_type_constructor(.RECT2I);
	variant_from_vector3 = get_variant_from_type_constructor(.VECTOR3);
	variant_from_vector3i = get_variant_from_type_constructor(.VECTOR3I);
	variant_from_transform2d = get_variant_from_type_constructor(.TRANSFORM2D);
	variant_from_vector4 = get_variant_from_type_constructor(.VECTOR4);
	variant_from_vector4i = get_variant_from_type_constructor(.VECTOR4I);
	variant_from_plane = get_variant_from_type_constructor(.PLANE);
	variant_from_quaternion = get_variant_from_type_constructor(.QUATERNION);
	variant_from_aabb = get_variant_from_type_constructor(.AABB);
	variant_from_basis = get_variant_from_type_constructor(.BASIS);
	variant_from_transform3d = get_variant_from_type_constructor(.TRANSFORM3D);
	variant_from_projection = get_variant_from_type_constructor(.PROJECTION);
	variant_from_color = get_variant_from_type_constructor(.COLOR);
	variant_from_string_name = get_variant_from_type_constructor(.STRING_NAME);
	variant_from_node_path = get_variant_from_type_constructor(.NODE_PATH);
	variant_from_rid = get_variant_from_type_constructor(.RID);
	variant_from_object = get_variant_from_type_constructor(.OBJECT);
	variant_from_callable = get_variant_from_type_constructor(.CALLABLE);
	variant_from_signal = get_variant_from_type_constructor(.SIGNAL);
	variant_from_dictionary = get_variant_from_type_constructor(.DICTIONARY);
	variant_from_array = get_variant_from_type_constructor(.ARRAY);
	variant_from_packed_byte_array = get_variant_from_type_constructor(.PACKED_BYTE_ARRAY);
	variant_from_packed_int32_array = get_variant_from_type_constructor(.PACKED_INT32_ARRAY);
	variant_from_packed_int64_array = get_variant_from_type_constructor(.PACKED_INT64_ARRAY);
	variant_from_packed_float32_array = get_variant_from_type_constructor(.PACKED_FLOAT32_ARRAY);
	variant_from_packed_float64_array = get_variant_from_type_constructor(.PACKED_FLOAT64_ARRAY);
	variant_from_packed_string_array = get_variant_from_type_constructor(.PACKED_STRING_ARRAY);
	variant_from_packed_vector2_array = get_variant_from_type_constructor(.PACKED_VECTOR2_ARRAY);
	variant_from_packed_vector3_array = get_variant_from_type_constructor(.PACKED_VECTOR3_ARRAY);
	variant_from_packed_color_array = get_variant_from_type_constructor(.PACKED_COLOR_ARRAY);
	variant_from_packed_vector4_array = get_variant_from_type_constructor(.PACKED_VECTOR4_ARRAY);
}

