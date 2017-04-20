module godot.c.plane;

@nogc nothrow:
extern(C):

struct godot_plane {
	//ubyte[16] _dont_touch_that;
	ulong[2] _opaque; /// temporary workaround for SysV ABI violation (bugs 5570 & 13207)
}

import godot.c.vector3;

import godot.c;

void godot_plane_new(godot_plane* p_pl);
void godot_plane_new_with_normal(godot_plane* p_pl, const godot_vector3* p_normal, const godot_real p_d);

// @Incomplete
// These are additional valid constructors
// _FORCE_INLINE_ Plane(const Vector3 &p_normal, real_t p_d);
// _FORCE_INLINE_ Plane(const Vector3 &p_point, const Vector3& p_normal);
// _FORCE_INLINE_ Plane(const Vector3 &p_point1, const Vector3 &p_point2,const Vector3 &p_point3,ClockDirection p_dir = CLOCKWISE);

void godot_plane_set_normal(godot_plane* p_pl, const godot_vector3* p_normal);
godot_vector3 godot_plane_get_normal(const godot_plane* p_pl);

godot_real godot_plane_get_d(const godot_plane* p_pl);
void godot_plane_set_d(godot_plane* p_pl, const godot_real p_d);

