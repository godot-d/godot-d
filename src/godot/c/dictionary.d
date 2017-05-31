module godot.c.dictionary;

@nogc nothrow:
extern(C):

struct godot_dictionary {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;
import godot.c.array;
import godot.c.variant;

void godot_dictionary_new(godot_dictionary* r_dest);
void godot_dictionary_new_copy(godot_dictionary* r_dest, const godot_dictionary* r_src);
void godot_dictionary_destroy(godot_dictionary* p_self);

godot_int godot_dictionary_size(const godot_dictionary* p_self);

godot_bool godot_dictionary_empty(const godot_dictionary* p_self);

void godot_dictionary_clear(godot_dictionary* p_self);

godot_bool godot_dictionary_has(const godot_dictionary* p_self, const godot_variant* p_key);

godot_bool godot_dictionary_has_all(const godot_dictionary* p_self, const godot_array* p_keys);

void godot_dictionary_erase(godot_dictionary* p_self, const godot_variant* p_key);

godot_int godot_dictionary_hash(const godot_dictionary* p_self);

godot_array godot_dictionary_keys(const godot_dictionary* p_self);

godot_array godot_dictionary_values(const godot_dictionary* p_self);

godot_variant* godot_dictionary_operator_index(godot_dictionary* p_dict, const godot_variant* p_key);

godot_bool godot_dictionary_operator_equal(const godot_dictionary* p_self, const godot_dictionary* p_b);

godot_string godot_dictionary_to_json(const godot_dictionary* p_dict);

