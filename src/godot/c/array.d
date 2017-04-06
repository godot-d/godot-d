module godot.c.array;

@nogc nothrow:
extern(C):

struct godot_array {
	ubyte[8] _dont_touch_that;
}

import godot.c;

import godot.c.pool_arrays;
import godot.c.variant;

void godot_array_new(godot_array* p_arr);
void godot_array_new_pool_color_array(godot_array* p_arr, const godot_pool_color_array* p_pca);
void godot_array_new_pool_vector3_array(godot_array* p_arr, const godot_pool_vector3_array* p_pv3a);
void godot_array_new_pool_vector2_array(godot_array* p_arr, const godot_pool_vector2_array* p_pv2a);
void godot_array_new_pool_string_array(godot_array* p_arr, const godot_pool_string_array* p_psa);
void godot_array_new_pool_real_array(godot_array* p_arr, const godot_pool_real_array* p_pra);
void godot_array_new_pool_int_array(godot_array* p_arr, const godot_pool_int_array* p_pia);
void godot_array_new_pool_byte_array(godot_array* p_arr, const godot_pool_byte_array* p_pba);

void godot_array_set(godot_array* p_arr, const godot_int p_idx, const godot_variant* p_value);

godot_variant* godot_array_get(godot_array* p_arr, const godot_int p_idx);

void godot_array_append(godot_array* p_arr, const godot_variant* p_value);

void godot_array_clear(godot_array* p_arr);

godot_int godot_array_count(godot_array* p_arr, const godot_variant* p_value);

godot_bool godot_array_empty(const godot_array* p_arr);

void godot_array_erase(godot_array* p_arr, const godot_variant* p_value);

godot_variant godot_array_front(const godot_array* p_arr);

godot_variant godot_array_back(const godot_array* p_arr);

godot_int godot_array_find(const godot_array* p_arr, const godot_variant* p_what, const godot_int p_from);

godot_int godot_array_find_last(const godot_array* p_arr, const godot_variant* p_what);

godot_bool godot_array_has(const godot_array* p_arr, const godot_variant* p_value);

uint godot_array_hash(const godot_array* p_arr);

void godot_array_insert(godot_array* p_arr, const godot_int p_pos, const godot_variant* p_value);

void godot_array_invert(godot_array* p_arr);

godot_bool godot_array_is_shared(const godot_array* p_arr);

godot_variant godot_array_pop_back(godot_array* p_arr);

godot_variant godot_array_pop_front(godot_array* p_arr);

void godot_array_push_back(godot_array* p_arr, const godot_variant* p_value);

void godot_array_push_front(godot_array* p_arr, const godot_variant* p_value);

void godot_array_remove(godot_array* p_arr, const godot_int p_idx);

void godot_array_resize(godot_array* p_arr, const godot_int p_size);

godot_int godot_array_rfind(const godot_array* p_arr, const godot_variant* p_what, const godot_int p_from);

godot_int godot_array_size(const godot_array* p_arr);

void godot_array_sort(godot_array* p_arr);

void godot_array_sort_custom(godot_array* p_arr, godot_object* p_obj, const godot_string* p_func);

void godot_array_destroy(godot_array* p_arr);

