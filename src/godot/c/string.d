module godot.c.string;

public import core.stdc.stddef : wchar_t;

@nogc nothrow:
extern(C):

struct godot_string {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;

void godot_string_new(godot_string *r_dest);
void godot_string_new_copy(godot_string *r_dest, const godot_string *p_src);
void godot_string_new_data(godot_string *r_dest, const char *p_contents, const int p_size);
void godot_string_new_unicode_data(godot_string *r_dest, const wchar_t *p_contents, const int p_size);

void godot_string_get_data(const godot_string *p_self, char *p_dest, int *p_size);

wchar_t* godot_string_operator_index(godot_string *p_self, const godot_int p_idx);
const(char*) godot_string_c_str(const godot_string *p_self);
const(wchar_t*) godot_string_unicode_str(const godot_string *p_self);

godot_bool godot_string_operator_equal(const godot_string *p_self, const godot_string *p_b);
godot_bool godot_string_operator_less(const godot_string *p_self, const godot_string *p_b);
godot_string godot_string_operator_plus(const godot_string *p_self, const godot_string *p_b);

// @Incomplete
// hmm, I guess exposing the whole API doesn't make much sense
// since the language used in the library has its own string funcs

void godot_string_destroy(godot_string *p_self);

