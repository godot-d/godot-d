/**
Anchor point in AR Space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvranchor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
/**
Anchor point in AR Space.

The ARVR Anchor point is a spatial node that maps a real world location identified by the AR platform to a position within the game world. For example, as long as plane detection in ARKit is on, ARKit will identify and update the position of planes (tables, floors, etc) and create anchors for them.
This node is mapped to one of the anchors through its unique id. When you receive a signal that a new anchor is available you should add this node to your scene for that anchor. You can predefine nodes and set the id and the nodes will simply remain on 0,0,0 until a plane is recognised.
Keep in mind that as long as plane detection is enable the size, placing and orientation of an anchor will be updates as the detection logic learns more about the real world out there especially if only part of the surface is in view.
*/
@GodotBaseClass struct ARVRAnchor
{
	static immutable string _GODOT_internal_name = "ARVRAnchor";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ARVRAnchor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ARVRAnchor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ARVRAnchor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRAnchor");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRAnchor)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_anchor_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_anchor_id") = _GODOT_set_anchor_id;
	/**
	
	*/
	void setAnchorId(in long anchor_id)
	{
		_GODOT_set_anchor_id.bind("ARVRAnchor", "set_anchor_id");
		ptrcall!(void)(_GODOT_set_anchor_id, _godot_object, anchor_id);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_anchor_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor_id") = _GODOT_get_anchor_id;
	/**
	
	*/
	long getAnchorId() const
	{
		_GODOT_get_anchor_id.bind("ARVRAnchor", "get_anchor_id");
		return ptrcall!(long)(_GODOT_get_anchor_id, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_anchor_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_anchor_name") = _GODOT_get_anchor_name;
	/**
	Returns the name given to this anchor.
	*/
	String getAnchorName() const
	{
		_GODOT_get_anchor_name.bind("ARVRAnchor", "get_anchor_name");
		return ptrcall!(String)(_GODOT_get_anchor_name, _godot_object);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_is_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_is_active") = _GODOT_get_is_active;
	/**
	Returns true if the anchor is being tracked and false if no anchor with this id is currently known.
	*/
	bool getIsActive() const
	{
		_GODOT_get_is_active.bind("ARVRAnchor", "get_is_active");
		return ptrcall!(bool)(_GODOT_get_is_active, _godot_object);
	}
	package(godot) static GodotMethod!(Vector3) _GODOT_get_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_size") = _GODOT_get_size;
	/**
	Returns the estimated size of the plane that was detected. Say when the anchor relates to a table in the real world, this is the estimated size of the surface of that table.
	*/
	Vector3 getSize() const
	{
		_GODOT_get_size.bind("ARVRAnchor", "get_size");
		return ptrcall!(Vector3)(_GODOT_get_size, _godot_object);
	}
	package(godot) static GodotMethod!(Plane) _GODOT_get_plane;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_plane") = _GODOT_get_plane;
	/**
	Returns a plane aligned with our anchor, handy for intersection testing
	*/
	Plane getPlane() const
	{
		_GODOT_get_plane.bind("ARVRAnchor", "get_plane");
		return ptrcall!(Plane)(_GODOT_get_plane, _godot_object);
	}
	/**
	The anchor's id. You can set this before the anchor itself exists. The first anchor gets an id of `1`, the second an id of `2`, etc. When anchors get removed, the engine can then assign the corresponding id to new anchors. The most common situation where anchors 'disappear' is when the AR server identifies that two anchors represent different parts of the same plane and merges them.
	*/
	@property long anchorId()
	{
		return getAnchorId();
	}
	/// ditto
	@property void anchorId(long v)
	{
		setAnchorId(v);
	}
}
