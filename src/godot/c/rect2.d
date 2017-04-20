module godot.c.rect2;

@nogc nothrow:
extern(C):

struct godot_rect2 {
	//ubyte[16] _dont_touch_that;
	ulong[2] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;

void godot_rect2_new(godot_rect2* p_rect);
void godot_rect2_new_with_pos_and_size(godot_rect2* p_rect, const godot_vector2* p_pos, const godot_vector2* p_size);

godot_vector2* godot_rect2_get_pos(godot_rect2* p_rect);
void godot_rect2_set_pos(godot_rect2* p_rect, const godot_vector2* p_pos);

godot_vector2* godot_rect2_get_size(godot_rect2* p_rect);
void godot_rect2_set_size(godot_rect2* p_rect, const godot_vector2* p_size);

