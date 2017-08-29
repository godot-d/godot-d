module godot.core.rid;

import godot.c;
import godot.object;
import godot.resource;

struct RID
{
	@nogc nothrow:
	
	package(godot) godot_rid _godot_rid;
	
	this(in Resource resource)
	{
		godot_rid_new_with_resource(&_godot_rid, cast(const godot_object)(cast(void*)resource));
	}
	
	int get_id() const
	{
		return godot_rid_get_id(&_godot_rid);
	}
}
