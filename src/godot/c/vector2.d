module godot.c.vector2;

@nogc nothrow:
extern(C):

struct godot_vector2 {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;

godot_vector2 godot_vector2_new(const godot_real p_x, const godot_real p_y);

void godot_vector2_set_x(godot_vector2* p_v, const godot_real p_x);
void godot_vector2_set_y(godot_vector2* p_v, const godot_real p_y);
godot_real godot_vector2_get_x(const godot_vector2* p_v);
godot_real godot_vector2_get_y(const godot_vector2* p_v);

void godot_vector2_normalize(godot_vector2* p_v);
void godot_vector2_normalized(godot_vector2* p_dest, const godot_vector2* p_src);

godot_real godot_vector2_length(const godot_vector2* p_v);
godot_real godot_vector2_length_squared(const godot_vector2* p_v);

godot_real godot_vector2_distance_to(const godot_vector2* p_a, const godot_vector2* p_b);
godot_real godot_vector2_distance_squared_to(const godot_vector2* p_a, const godot_vector2* p_b);

// @Incomplete
/*
 * missing:
 *
 *	angle_to
 *	angle_to_point
 *	dot
 *	cross_vector
 *	cross_scalar
 *	project
 *	plane_project
 *	clamped
 *	linear_interpolate
 *	cubic_interpolate
 *	cubic_interpolate_soft
 *	slide
 *	reflect
 *	angle
 *	abs
 *	rotated
 *	tangent
 *	floor
 *	snapped
 *	aspect
 *
 *
 *	to_string
 */

void godot_vector2_operator_add(godot_vector2* p_dest, const godot_vector2* p_a, const godot_vector2* p_b);
void godot_vector2_operator_subtract(godot_vector2* p_dest, const godot_vector2* p_a, const godot_vector2* p_b);
void godot_vector2_operator_multiply_vector(godot_vector2* p_dest, const godot_vector2* p_a, const godot_vector2* p_b);
void godot_vector2_operator_multiply_scalar(godot_vector2* p_dest, const godot_vector2* p_a, const godot_real p_b);
void godot_vector2_operator_divide_vector(godot_vector2* p_dest, const godot_vector2* p_a, const godot_vector2* p_b);
void godot_vector2_operator_divide_scalar(godot_vector2* p_dest, const godot_vector2* p_a, const godot_real p_b);

godot_bool godot_vector2_operator_equal(const godot_vector2* p_a, const godot_vector2* p_b);
godot_bool godot_vector2_operator_less(const godot_vector2* p_a, const godot_vector2* p_b);

