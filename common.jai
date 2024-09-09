
is_upper :: (byte: u8) -> bool {
    if byte >= #char "A" && byte <= #char "Z" return true;
    return false;
}

to_snake_case :: (src: string) -> string {
    if src.count == 0 then return "";
    builder: String_Builder;
    c := to_lower(src[0]);
    append(*builder, c);
    for 1..src.count-1 {
        if is_upper(src[it]) {
            append(*builder, #char "_");
        }
        append(*builder, to_lower(src[it]));
    }

    return builder_to_string(*builder);
}
