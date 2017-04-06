module godot.c.basis;

@nogc nothrow:
extern(C):

struct godot_basis {
	ubyte[36] _dont_touch_that;
}

import godot.c;

void godot_basis_new(godot_basis* p_basis);
void godot_basis_new_with_euler_quat(godot_basis* p_basis, const godot_quat* p_euler);
void godot_basis_new_with_euler(godot_basis* p_basis, const godot_vector3* p_euler);

godot_quat godot_basis_as_quat(const godot_basis* p_basis);
godot_vector3 godot_basis_get_euler(const godot_basis* p_basis);

/*
 * p_elements is a pointer to an array of 3 (!!) vector3
 */
void godot_basis_get_elements(godot_basis* p_basis, godot_vector3* p_elements);

