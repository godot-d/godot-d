module godot.c.color;

@nogc nothrow:
extern(C):

struct godot_color {
	ubyte[16] _dont_touch_that;
}

import godot.c;

void godot_color_new(godot_color* p_color);
void godot_color_new_rgba(godot_color* p_color, const godot_real r, const godot_real g, const godot_real b, const godot_real a);

uint godot_color_get_32(const godot_color* p_color);

float* godot_color_index(godot_color* p_color, const godot_int idx);

