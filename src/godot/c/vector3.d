module godot.c.vector3;

@nogc nothrow:
extern(C):

struct godot_vector3 {
	ubyte[12] _dont_touch_that;
}

import godot.c;

godot_vector3 godot_vector3_new(const godot_real p_x, const godot_real p_y, const godot_real p_z);

void godot_vector3_set_axis(godot_vector3* p_v, const godot_int p_axis, const godot_real p_val);
godot_real godot_vector3_get_axis(const godot_vector3* p_v, const godot_int p_axis);

godot_int godot_vector3_min_axis(const godot_vector3* p_v);
godot_int godot_vector3_max_axis(const godot_vector3* p_v);

godot_real godot_vector3_length(const godot_vector3* p_v);
godot_real godot_vector3_length_squared(const godot_vector3* p_v);

void godot_vector3_normalize(godot_vector3* p_v);
void godot_vector3_normalized(godot_vector3* p_dest, const godot_vector3* p_src);

