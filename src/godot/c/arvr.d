module godot.c.arvr;

import godot.c.core;

@nogc nothrow:
extern(C):

struct godot_arvr_interface_gdnative
{
	void* function(godot_object) constructor;
	void function(void*) destructor;
	godot_string function(const void*) get_name;
	godot_int function(const void*) get_capabilities;
	godot_bool function(const void*) get_anchor_detection_is_enabled;
	void function(void*, godot_bool) set_anchor_detection_is_enabled;
	godot_bool function(const void*) is_stereo;
	godot_bool function(const void*) is_initialized;
	godot_bool function(void*) initialize;
	void function(void*) uninitialize;
	godot_vector2 function(const void*) get_recommended_render_target_size;
	godot_transform function(void*, godot_int, godot_transform*) get_transform_for_eye;
	void function(void*, godot_real*, godot_int, godot_real, godot_real, godot_real) fill_projection_for_eye;
	void function(void*, godot_int, godot_rid*, godot_rect2*) commit_for_eye;
	void function(void*) process;
}



