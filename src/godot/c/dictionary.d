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

void godot_dictionary_new(godot_dictionary* p_dict);

void godot_dictionary_clear(godot_dictionary* p_dict);

godot_bool godot_dictionary_empty(const godot_dictionary* p_dict);

void godot_dictionary_erase(godot_dictionary* p_dict, const godot_variant* p_key);

godot_bool godot_dictionary_has(const godot_dictionary* p_dict, const godot_variant* p_key);

godot_bool godot_dictionary_has_all(const godot_dictionary* p_dict, const godot_array* p_keys);

uint godot_dictionary_hash(const godot_dictionary* p_dict);

godot_array godot_dictionary_keys(const godot_dictionary* p_dict);

godot_int godot_dictionary_parse_json(godot_dictionary* p_dict, const godot_string* p_json);

godot_variant* godot_dictionary_operator_index(godot_dictionary* p_dict, const godot_variant* p_key);

godot_int godot_dictionary_size(const godot_dictionary* p_dict);

godot_string godot_dictionary_to_json(const godot_dictionary* p_dict);

godot_array godot_dictionary_values(const godot_dictionary* p_dict);

void godot_dictionary_destroy(godot_dictionary* p_dict);

