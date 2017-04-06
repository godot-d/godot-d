module godot.c.string;

public import core.stdc.stddef : wchar_t;

@nogc nothrow:
extern(C):

struct godot_string {
	ubyte[8] _dont_touch_that;
}

import godot.c;

void godot_string_new(godot_string* p_str);
void godot_string_new_data(godot_string* p_str, const char* p_contents, const int p_size);

void godot_string_get_data(const godot_string* p_str, wchar_t* p_dest, int* p_size);

void godot_string_copy_string(const godot_string* p_dest, const godot_string* p_src);

wchar_t* godot_string_operator_index(godot_string* p_str, const godot_int p_idx);
const(wchar_t*) godot_string_c_str(const godot_string* p_str);

godot_bool godot_string_operator_equal(const godot_string* p_a, const godot_string* p_b);
godot_bool godot_string_operator_less(const godot_string* p_a, const godot_string* p_b);
void godot_string_operator_plus(godot_string* p_dest, const godot_string* p_a, const godot_string* p_b);

// @Incomplete
// hmm, I guess exposing the whole API doesn't make much sense
// since the language used in the library has its own string funcs

void godot_string_destroy(godot_string* p_str);

