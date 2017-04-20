module godot.core.rid;

import godot.c;

struct RID
{
	package(godot) godot_rid _godot_rid;
	
	@disable this(this);
	@disable this();
	
    /+this(Object p)
    {
	    godot_rid_new(&_godot_rid, &p);
    }+/
    
    int get_id() const
    {
	    return godot_rid_get_rid(&_godot_rid);
    }
    
    ~this()
    {
	    godot_rid_destroy(&_godot_rid);
    }
}
