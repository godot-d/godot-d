module godot.c.transform2d;

@nogc nothrow:
extern(C):

struct godot_transform2d {
	//ubyte[24] _dont_touch_that;
	ulong[3] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;

import godot.c.vector2;

void godot_transform2d_new_identity(godot_transform2d* p_t);
void godot_transform2d_new_elements(godot_transform2d* p_t, const godot_vector2* p_a, const godot_vector2* p_b, const godot_vector2* p_c);
void godot_transform2d_new(godot_transform2d* p_t, const godot_real p_rot, const godot_vector2* p_pos);

/*
godot_real godot_transform2d_tdotx(const godot_transform2d* p_t, const godot_vector2* p_v);
godot_real godot_transform2d_tdoty(const godot_transform2d* p_t, const godot_vector2* p_v);
*/

const(godot_vector2*) godot_transform2d_const_index(const godot_transform2d* p_t, const godot_int p_idx);
godot_vector2* godot_transform2d_index(godot_transform2d* p_t, const godot_int p_idx);

godot_vector2 godot_transform2d_get_axis(const godot_transform2d* p_t, const godot_int p_axis);
void godot_transform2d_set_axis(godot_transform2d* p_t, const godot_int p_axis, const godot_vector2* p_vec);

/*
void godot_transform2d_invert(godot_transform2d* p_t);
godot_transform2d godot_transform2d_inverse(const godot_transform2d* p_t);
*/

// @Incomplete
// I feel like it should be enough to expose get and set, the whole logic can be done in the bindings.

