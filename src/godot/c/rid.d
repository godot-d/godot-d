module godot.c.rid;

@nogc nothrow:
extern(C):

struct godot_rid {
	ubyte[8] _dont_touch_that;
}

import godot.c;

void godot_rid_new(godot_rid* p_rid, godot_object p_from);

uint godot_rid_get_rid(const godot_rid* p_rid);

void godot_rid_destroy(godot_rid* p_rid);

