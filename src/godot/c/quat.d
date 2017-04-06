module godot.c.quat;

@nogc nothrow:
extern(C):

struct godot_quat {
	ubyte[16] _dont_touch_that;
}

import godot.c;

void godot_quat_new(godot_quat* p_quat);
void godot_quat_new_with_elements(godot_quat* p_quat, const godot_real x, const godot_real y, const godot_real z, const godot_real w);
void godot_quat_new_with_rotation(godot_quat* p_quat, const godot_vector3* p_axis, const godot_real p_angle);
void godot_quat_new_with_shortest_arc(godot_quat* p_quat, const godot_vector3* p_v0, const godot_vector3* p_v1);

godot_vector3 godot_quat_get_euler(const godot_quat* p_quat);
void godot_quat_set_euler(godot_quat* p_quat, const godot_vector3* p_euler);

godot_real* godot_quat_index(godot_quat* p_quat, const godot_int p_idx);
godot_real godot_quat_const_index(const godot_quat* p_quat, const godot_int p_idx);

