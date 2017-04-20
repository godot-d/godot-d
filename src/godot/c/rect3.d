module godot.c.rect3;

@nogc nothrow:
extern(C):

struct godot_rect3 {
	//ubyte[24] _dont_touch_that;
	ulong[3] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;

void godot_rect3_new(godot_rect3* p_rect);
void godot_rect3_new_with_pos_and_size(godot_rect3* p_rect, const godot_vector3* p_pos, const godot_vector3* p_size);

godot_vector3* godot_rect3_get_pos(godot_rect3* p_rect);
void godot_rect3_set_pos(godot_rect3* p_rect, const godot_vector3* p_pos);

godot_vector3* godot_rect3_get_size(godot_rect3* p_rect);
void godot_rect3_set_size(godot_rect3* p_rect, const godot_vector3* p_size);

