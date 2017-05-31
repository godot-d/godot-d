module godot.c.rid;

@nogc nothrow:
extern(C):

struct godot_rid {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;

godot_int godot_rid_get_id(const godot_rid* p_self);

void godot_rid_new_with_resource(godot_rid* r_dest, const godot_object p_from);

godot_bool godot_rid_operator_equal(const godot_rid* p_self, const godot_rid* p_b);

godot_bool godot_rid_operator_less(const godot_rid* p_self, const godot_rid* p_b);

