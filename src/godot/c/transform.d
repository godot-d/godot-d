module godot.c.transform;

@nogc nothrow:
extern(C):

struct godot_transform {
	ubyte[48] _dont_touch_that;
}

import godot.c;

void godot_transform_new(godot_transform* p_trans);
void godot_transform_new_with_basis(godot_transform* p_trans, const godot_basis* p_basis);
void godot_transform_new_with_basis_origin(godot_transform* p_trans, const godot_basis* p_basis, const godot_vector3* p_origin);

godot_basis* godot_transform_get_basis(godot_transform* p_trans);
godot_vector3* godot_transform_get_origin(godot_transform* p_trans);

