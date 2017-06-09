module godot.c.pool_arrays;

@nogc nothrow:
extern(C):

/////// PoolByteArray

struct godot_pool_byte_array {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

/////// PoolIntArray

struct godot_pool_int_array {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

/////// PoolRealArray

struct godot_pool_real_array {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

/////// PoolStringArray

struct godot_pool_string_array {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

/////// PoolVector2Array

struct godot_pool_vector2_array {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

/////// PoolVector3Array

struct godot_pool_vector3_array {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

/////// PoolColorArray

struct godot_pool_color_array {
	//ubyte[8] _dont_touch_that;
	ulong _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c;

import godot.c.array;

// byte

void godot_pool_byte_array_new(godot_pool_byte_array *r_dest);
void godot_pool_byte_array_new_copy(godot_pool_byte_array *r_dest, const godot_pool_byte_array *p_src);
void godot_pool_byte_array_new_with_array(godot_pool_byte_array *r_dest, const godot_array *p_a);

void godot_pool_byte_array_append(godot_pool_byte_array *p_self, const ubyte p_data);

void godot_pool_byte_array_append_array(godot_pool_byte_array *p_self, const godot_pool_byte_array *p_array);

godot_error godot_pool_byte_array_insert(godot_pool_byte_array *p_self, const godot_int p_idx, const ubyte p_data);

void godot_pool_byte_array_invert(godot_pool_byte_array *p_self);

void godot_pool_byte_array_push_back(godot_pool_byte_array *p_self, const ubyte p_data);

void godot_pool_byte_array_remove(godot_pool_byte_array *p_self, const godot_int p_idx);

void godot_pool_byte_array_resize(godot_pool_byte_array *p_self, const godot_int p_size);

void godot_pool_byte_array_set(godot_pool_byte_array *p_self, const godot_int p_idx, const ubyte p_data);
ubyte godot_pool_byte_array_get(const godot_pool_byte_array *p_self, const godot_int p_idx);

godot_int godot_pool_byte_array_size(const godot_pool_byte_array *p_self);

void godot_pool_byte_array_destroy(godot_pool_byte_array *p_self);

// int

void godot_pool_int_array_new(godot_pool_int_array *r_dest);
void godot_pool_int_array_new_copy(godot_pool_int_array *r_dest, const godot_pool_int_array *p_src);
void godot_pool_int_array_new_with_array(godot_pool_int_array *r_dest, const godot_array *p_a);

void godot_pool_int_array_append(godot_pool_int_array *p_self, const godot_int p_data);

void godot_pool_int_array_append_array(godot_pool_int_array *p_self, const godot_pool_int_array *p_array);

godot_error godot_pool_int_array_insert(godot_pool_int_array *p_self, const godot_int p_idx, const godot_int p_data);

void godot_pool_int_array_invert(godot_pool_int_array *p_self);

void godot_pool_int_array_push_back(godot_pool_int_array *p_self, const godot_int p_data);

void godot_pool_int_array_remove(godot_pool_int_array *p_self, const godot_int p_idx);

void godot_pool_int_array_resize(godot_pool_int_array *p_self, const godot_int p_size);

void godot_pool_int_array_set(godot_pool_int_array *p_self, const godot_int p_idx, const godot_int p_data);
godot_int godot_pool_int_array_get(const godot_pool_int_array *p_self, const godot_int p_idx);

godot_int godot_pool_int_array_size(const godot_pool_int_array *p_self);

void godot_pool_int_array_destroy(godot_pool_int_array *p_self);

// real

void godot_pool_real_array_new(godot_pool_real_array *r_dest);
void godot_pool_real_array_new_copy(godot_pool_real_array *r_dest, const godot_pool_real_array *p_src);
void godot_pool_real_array_new_with_array(godot_pool_real_array *r_dest, const godot_array *p_a);

void godot_pool_real_array_append(godot_pool_real_array *p_self, const godot_real p_data);

void godot_pool_real_array_append_array(godot_pool_real_array *p_self, const godot_pool_real_array *p_array);

godot_error godot_pool_real_array_insert(godot_pool_real_array *p_self, const godot_int p_idx, const godot_real p_data);

void godot_pool_real_array_invert(godot_pool_real_array *p_self);

void godot_pool_real_array_push_back(godot_pool_real_array *p_self, const godot_real p_data);

void godot_pool_real_array_remove(godot_pool_real_array *p_self, const godot_int p_idx);

void godot_pool_real_array_resize(godot_pool_real_array *p_self, const godot_int p_size);

void godot_pool_real_array_set(godot_pool_real_array *p_self, const godot_int p_idx, const godot_real p_data);
godot_real godot_pool_real_array_get(const godot_pool_real_array *p_self, const godot_int p_idx);

godot_int godot_pool_real_array_size(const godot_pool_real_array *p_self);

void godot_pool_real_array_destroy(godot_pool_real_array *p_self);

// string

void godot_pool_string_array_new(godot_pool_string_array *r_dest);
void godot_pool_string_array_new_copy(godot_pool_string_array *r_dest, const godot_pool_string_array *p_src);
void godot_pool_string_array_new_with_array(godot_pool_string_array *r_dest, const godot_array *p_a);

void godot_pool_string_array_append(godot_pool_string_array *p_self, const godot_string *p_data);

void godot_pool_string_array_append_array(godot_pool_string_array *p_self, const godot_pool_string_array *p_array);

godot_error godot_pool_string_array_insert(godot_pool_string_array *p_self, const godot_int p_idx, const godot_string *p_data);

void godot_pool_string_array_invert(godot_pool_string_array *p_self);

void godot_pool_string_array_push_back(godot_pool_string_array *p_self, const godot_string *p_data);

void godot_pool_string_array_remove(godot_pool_string_array *p_self, const godot_int p_idx);

void godot_pool_string_array_resize(godot_pool_string_array *p_self, const godot_int p_size);

void godot_pool_string_array_set(godot_pool_string_array *p_self, const godot_int p_idx, const godot_string *p_data);
godot_string godot_pool_string_array_get(const godot_pool_string_array *p_self, const godot_int p_idx);

godot_int godot_pool_string_array_size(const godot_pool_string_array *p_self);

void godot_pool_string_array_destroy(godot_pool_string_array *p_self);

// vector2

void godot_pool_vector2_array_new(godot_pool_vector2_array *r_dest);
void godot_pool_vector2_array_new_copy(godot_pool_vector2_array *r_dest, const godot_pool_vector2_array *p_src);
void godot_pool_vector2_array_new_with_array(godot_pool_vector2_array *r_dest, const godot_array *p_a);

void godot_pool_vector2_array_append(godot_pool_vector2_array *p_self, const godot_vector2 *p_data);

void godot_pool_vector2_array_append_array(godot_pool_vector2_array *p_self, const godot_pool_vector2_array *p_array);

godot_error godot_pool_vector2_array_insert(godot_pool_vector2_array *p_self, const godot_int p_idx, const godot_vector2 *p_data);

void godot_pool_vector2_array_invert(godot_pool_vector2_array *p_self);

void godot_pool_vector2_array_push_back(godot_pool_vector2_array *p_self, const godot_vector2 *p_data);

void godot_pool_vector2_array_remove(godot_pool_vector2_array *p_self, const godot_int p_idx);

void godot_pool_vector2_array_resize(godot_pool_vector2_array *p_self, const godot_int p_size);

void godot_pool_vector2_array_set(godot_pool_vector2_array *p_self, const godot_int p_idx, const godot_vector2 *p_data);
godot_vector2 godot_pool_vector2_array_get(const godot_pool_vector2_array *p_self, const godot_int p_idx);

godot_int godot_pool_vector2_array_size(const godot_pool_vector2_array *p_self);

void godot_pool_vector2_array_destroy(godot_pool_vector2_array *p_self);

// vector3

void godot_pool_vector3_array_new(godot_pool_vector3_array *r_dest);
void godot_pool_vector3_array_new_copy(godot_pool_vector3_array *r_dest, const godot_pool_vector3_array *p_src);
void godot_pool_vector3_array_new_with_array(godot_pool_vector3_array *r_dest, const godot_array *p_a);

void godot_pool_vector3_array_append(godot_pool_vector3_array *p_self, const godot_vector3 *p_data);

void godot_pool_vector3_array_append_array(godot_pool_vector3_array *p_self, const godot_pool_vector3_array *p_array);

godot_error godot_pool_vector3_array_insert(godot_pool_vector3_array *p_self, const godot_int p_idx, const godot_vector3 *p_data);

void godot_pool_vector3_array_invert(godot_pool_vector3_array *p_self);

void godot_pool_vector3_array_push_back(godot_pool_vector3_array *p_self, const godot_vector3 *p_data);

void godot_pool_vector3_array_remove(godot_pool_vector3_array *p_self, const godot_int p_idx);

void godot_pool_vector3_array_resize(godot_pool_vector3_array *p_self, const godot_int p_size);

void godot_pool_vector3_array_set(godot_pool_vector3_array *p_self, const godot_int p_idx, const godot_vector3 *p_data);
godot_vector3 godot_pool_vector3_array_get(const godot_pool_vector3_array *p_self, const godot_int p_idx);

godot_int godot_pool_vector3_array_size(const godot_pool_vector3_array *p_self);

void godot_pool_vector3_array_destroy(godot_pool_vector3_array *p_self);

// color

void godot_pool_color_array_new(godot_pool_color_array *r_dest);
void godot_pool_color_array_new_copy(godot_pool_color_array *r_dest, const godot_pool_color_array *p_src);
void godot_pool_color_array_new_with_array(godot_pool_color_array *r_dest, const godot_array *p_a);

void godot_pool_color_array_append(godot_pool_color_array *p_self, const godot_color *p_data);

void godot_pool_color_array_append_array(godot_pool_color_array *p_self, const godot_pool_color_array *p_array);

godot_error godot_pool_color_array_insert(godot_pool_color_array *p_self, const godot_int p_idx, const godot_color *p_data);

void godot_pool_color_array_invert(godot_pool_color_array *p_self);

void godot_pool_color_array_push_back(godot_pool_color_array *p_self, const godot_color *p_data);

void godot_pool_color_array_remove(godot_pool_color_array *p_self, const godot_int p_idx);

void godot_pool_color_array_resize(godot_pool_color_array *p_self, const godot_int p_size);

void godot_pool_color_array_set(godot_pool_color_array *p_self, const godot_int p_idx, const godot_color *p_data);
godot_color godot_pool_color_array_get(const godot_pool_color_array *p_self, const godot_int p_idx);

godot_int godot_pool_color_array_size(const godot_pool_color_array *p_self);

void godot_pool_color_array_destroy(godot_pool_color_array *p_self);

