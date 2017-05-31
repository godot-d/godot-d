module godot.c.node_path;

@nogc nothrow:
extern(C):

struct godot_node_path {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;

void godot_node_path_new(godot_node_path* r_dest, const godot_string* p_from);
void godot_node_path_destroy(godot_node_path* p_self);

godot_string godot_node_path_as_string(const godot_node_path* p_self);

godot_bool godot_node_path_is_absolute(const godot_node_path* p_self);

godot_int godot_node_path_get_name_count(const godot_node_path* p_self);

godot_string godot_node_path_get_name(const godot_node_path* p_self, const godot_int p_idx);

godot_int godot_node_path_get_subname_count(const godot_node_path* p_self);

godot_string godot_node_path_get_subname(const godot_node_path* p_self, const godot_int p_idx);

godot_string godot_node_path_get_property(const godot_node_path* p_self);

godot_bool godot_node_path_is_empty(const godot_node_path* p_self);

godot_bool godot_node_path_operator_equal(const godot_node_path* p_self, const godot_node_path* p_b);

