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

void godot_pool_byte_array_new(godot_pool_byte_array* p_pba);
void godot_pool_byte_array_new_with_array(godot_pool_byte_array* p_pba, const godot_array* p_a);

void godot_pool_byte_array_append(godot_pool_byte_array* p_pba, const ubyte p_data);

void godot_pool_byte_array_append_array(godot_pool_byte_array* p_pba, const godot_pool_byte_array* p_array);

int godot_pool_byte_array_insert(godot_pool_byte_array* p_pba, const godot_int p_idx, const ubyte p_data);

void godot_pool_byte_array_invert(godot_pool_byte_array* p_pba);

void godot_pool_byte_array_push_back(godot_pool_byte_array* p_pba, const ubyte p_data);

void godot_pool_byte_array_remove(godot_pool_byte_array* p_pba, const godot_int p_idx);

void godot_pool_byte_array_resize(godot_pool_byte_array* p_pba, const godot_int p_size);

void godot_pool_byte_array_set(godot_pool_byte_array* p_pba, const godot_int p_idx, const ubyte p_data);
ubyte godot_pool_byte_array_get(godot_pool_byte_array* p_pba, const godot_int p_idx);

godot_int godot_pool_byte_array_size(godot_pool_byte_array* p_pba);

void godot_pool_byte_array_destroy(godot_pool_byte_array* p_pba);

// int

void godot_pool_int_array_new(godot_pool_int_array* p_pia);
void godot_pool_int_array_new_with_array(godot_pool_int_array* p_pia, const godot_array* p_a);

void godot_pool_int_array_append(godot_pool_int_array* p_pia, const godot_int p_data);

void godot_pool_int_array_append_array(godot_pool_int_array* p_pia, const godot_pool_int_array* p_array);

int godot_pool_int_array_insert(godot_pool_int_array* p_pia, const godot_int p_idx, const godot_int p_data);

void godot_pool_int_array_invert(godot_pool_int_array* p_pia);

void godot_pool_int_array_push_back(godot_pool_int_array* p_pia, const godot_int p_data);

void godot_pool_int_array_remove(godot_pool_int_array* p_pia, const godot_int p_idx);

void godot_pool_int_array_resize(godot_pool_int_array* p_pia, const godot_int p_size);

void godot_pool_int_array_set(godot_pool_int_array* p_pia, const godot_int p_idx, const godot_int p_data);
godot_int godot_pool_int_array_get(godot_pool_int_array* p_pia, const godot_int p_idx);

godot_int godot_pool_int_array_size(godot_pool_int_array* p_pia);

void godot_pool_int_array_destroy(godot_pool_int_array* p_pia);

// real

void godot_pool_real_array_new(godot_pool_real_array* p_pra);
void godot_pool_real_array_new_with_array(godot_pool_real_array* p_pra, const godot_array* p_a);

void godot_pool_real_array_append(godot_pool_real_array* p_pra, const godot_real p_data);

void godot_pool_real_array_append_array(godot_pool_real_array* p_pra, const godot_pool_real_array* p_array);

int godot_pool_real_array_insert(godot_pool_real_array* p_pra, const godot_int p_idx, const godot_real p_data);

void godot_pool_real_array_invert(godot_pool_real_array* p_pra);

void godot_pool_real_array_push_back(godot_pool_real_array* p_pra, const godot_real p_data);

void godot_pool_real_array_remove(godot_pool_real_array* p_pra, const godot_int p_idx);

void godot_pool_real_array_resize(godot_pool_real_array* p_pra, const godot_int p_size);

void godot_pool_real_array_set(godot_pool_real_array* p_pra, const godot_int p_idx, const godot_real p_data);
godot_real godot_pool_real_array_get(godot_pool_real_array* p_pra, const godot_int p_idx);

godot_int godot_pool_real_array_size(godot_pool_real_array* p_pra);

void godot_pool_real_array_destroy(godot_pool_real_array* p_pra);

// string

void godot_pool_string_array_new(godot_pool_string_array* p_psa);
void godot_pool_string_array_new_with_array(godot_pool_string_array* p_psa, const godot_array* p_a);

void godot_pool_string_array_append(godot_pool_string_array* p_psa, const godot_string* p_data);

void godot_pool_string_array_append_array(godot_pool_string_array* p_psa, const godot_pool_string_array* p_array);

int godot_pool_string_array_insert(godot_pool_string_array* p_psa, const godot_int p_idx, const godot_string* p_data);

void godot_pool_string_array_invert(godot_pool_string_array* p_psa);

void godot_pool_string_array_push_back(godot_pool_string_array* p_psa, const godot_string* p_data);

void godot_pool_string_array_remove(godot_pool_string_array* p_psa, const godot_int p_idx);

void godot_pool_string_array_resize(godot_pool_string_array* p_psa, const godot_int p_size);

void godot_pool_string_array_set(godot_pool_string_array* p_psa, const godot_int p_idx, const godot_string* p_data);
godot_string godot_pool_string_array_get(godot_pool_string_array* p_psa, const godot_int p_idx);

godot_int godot_pool_string_array_size(godot_pool_string_array* p_psa);

void godot_pool_string_array_destroy(godot_pool_string_array* p_psa);

// vector2

void godot_pool_vector2_array_new(godot_pool_vector2_array* p_pv2a);
void godot_pool_vector2_array_new_with_array(godot_pool_vector2_array* p_pv2a, const godot_array* p_a);

void godot_pool_vector2_array_append(godot_pool_vector2_array* p_pv2a, const godot_vector2* p_data);

void godot_pool_vector2_array_append_array(godot_pool_vector2_array* p_pv2a, const godot_pool_vector2_array* p_array);

int godot_pool_vector2_array_insert(godot_pool_vector2_array* p_pv2a, const godot_int p_idx, const godot_vector2* p_data);

void godot_pool_vector2_array_invert(godot_pool_vector2_array* p_pv2a);

void godot_pool_vector2_array_push_back(godot_pool_vector2_array* p_pv2a, const godot_vector2* p_data);

void godot_pool_vector2_array_remove(godot_pool_vector2_array* p_pv2a, const godot_int p_idx);

void godot_pool_vector2_array_resize(godot_pool_vector2_array* p_pv2a, const godot_int p_size);

void godot_pool_vector2_array_set(godot_pool_vector2_array* p_pv2a, const godot_int p_idx, const godot_vector2* p_data);
godot_vector2 godot_pool_vector2_array_get(godot_pool_vector2_array* p_pv2a, const godot_int p_idx);

godot_int godot_pool_vector2_array_size(godot_pool_vector2_array* p_pv2a);

void godot_pool_vector2_array_destroy(godot_pool_vector2_array* p_pv2a);

// vector3

void godot_pool_vector3_array_new(godot_pool_vector3_array* p_pv3a);
void godot_pool_vector3_array_new_with_array(godot_pool_vector3_array* p_pv3a, const godot_array* p_a);

void godot_pool_vector3_array_append(godot_pool_vector3_array* p_pv3a, const godot_vector3* p_data);

void godot_pool_vector3_array_append_array(godot_pool_vector3_array* p_pv3a, const godot_pool_vector3_array* p_array);

int godot_pool_vector3_array_insert(godot_pool_vector3_array* p_pv3a, const godot_int p_idx, const godot_vector3* p_data);

void godot_pool_vector3_array_invert(godot_pool_vector3_array* p_pv3a);

void godot_pool_vector3_array_push_back(godot_pool_vector3_array* p_pv3a, const godot_vector3* p_data);

void godot_pool_vector3_array_remove(godot_pool_vector3_array* p_pv3a, const godot_int p_idx);

void godot_pool_vector3_array_resize(godot_pool_vector3_array* p_pv3a, const godot_int p_size);

void godot_pool_vector3_array_set(godot_pool_vector3_array* p_pv3a, const godot_int p_idx, const godot_vector3* p_data);
godot_vector3 godot_pool_vector3_array_get(godot_pool_vector3_array* p_pv3a, const godot_int p_idx);

godot_int godot_pool_vector3_array_size(godot_pool_vector3_array* p_pv3a);

void godot_pool_vector3_array_destroy(godot_pool_vector3_array* p_pv3a);

// color

void godot_pool_color_array_new(godot_pool_color_array* p_pca);
void godot_pool_color_array_new_with_array(godot_pool_color_array* p_pca, const godot_array* p_a);

void godot_pool_color_array_append(godot_pool_color_array* p_pca, const godot_color* p_data);

void godot_pool_color_array_append_array(godot_pool_color_array* p_pca, const godot_pool_color_array* p_array);

int godot_pool_color_array_insert(godot_pool_color_array* p_pca, const godot_int p_idx, const godot_color* p_data);

void godot_pool_color_array_invert(godot_pool_color_array* p_pca);

void godot_pool_color_array_push_back(godot_pool_color_array* p_pca, const godot_color* p_data);

void godot_pool_color_array_remove(godot_pool_color_array* p_pca, const godot_int p_idx);

void godot_pool_color_array_resize(godot_pool_color_array* p_pca, const godot_int p_size);

void godot_pool_color_array_set(godot_pool_color_array* p_pca, const godot_int p_idx, const godot_color* p_data);
godot_color godot_pool_color_array_get(godot_pool_color_array* p_pca, const godot_int p_idx);

godot_int godot_pool_color_array_size(godot_pool_color_array* p_pca);

void godot_pool_color_array_destroy(godot_pool_color_array* p_pca);

