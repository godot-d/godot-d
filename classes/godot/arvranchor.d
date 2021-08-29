/**
An anchor point in AR space.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.arvranchor;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.spatial;
import godot.mesh;
/**
An anchor point in AR space.

The $(D ARVRAnchor) point is a spatial node that maps a real world location identified by the AR platform to a position within the game world. For example, as long as plane detection in ARKit is on, ARKit will identify and update the position of planes (tables, floors, etc) and create anchors for them.
This node is mapped to one of the anchors through its unique ID. When you receive a signal that a new anchor is available, you should add this node to your scene for that anchor. You can predefine nodes and set the ID; the nodes will simply remain on 0,0,0 until a plane is recognized.
Keep in mind that, as long as plane detection is enabled, the size, placing and orientation of an anchor will be updated as the detection logic learns more about the real world out there especially if only part of the surface is in view.
*/
@GodotBaseClass struct ARVRAnchor
{
	package(godot) enum string _GODOT_internal_name = "ARVRAnchor";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_anchor_id") GodotMethod!(long) getAnchorId;
		@GodotName("get_anchor_name") GodotMethod!(String) getAnchorName;
		@GodotName("get_is_active") GodotMethod!(bool) getIsActive;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("get_plane") GodotMethod!(Plane) getPlane;
		@GodotName("get_size") GodotMethod!(Vector3) getSize;
		@GodotName("set_anchor_id") GodotMethod!(void, long) setAnchorId;
	}
	/// 
	pragma(inline, true) bool opEquals(in ARVRAnchor other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ARVRAnchor.
	/// Note: use `memnew!ARVRAnchor` instead.
	static ARVRAnchor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ARVRAnchor");
		if(constructor is null) return typeof(this).init;
		return cast(ARVRAnchor)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getAnchorId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAnchorId, _godot_object);
	}
	/**
	Returns the name given to this anchor.
	*/
	String getAnchorName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAnchorName, _godot_object);
	}
	/**
	Returns `true` if the anchor is being tracked and `false` if no anchor with this ID is currently known.
	*/
	bool getIsActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getIsActive, _godot_object);
	}
	/**
	If provided by the $(D ARVRInterface), this returns a mesh object for the anchor. For an anchor, this can be a shape related to the object being tracked or it can be a mesh that provides topology related to the anchor and can be used to create shadows/reflections on surfaces or for generating collision shapes.
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	Returns a plane aligned with our anchor; handy for intersection testing.
	*/
	Plane getPlane() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Plane)(GDNativeClassBinding.getPlane, _godot_object);
	}
	/**
	Returns the estimated size of the plane that was detected. Say when the anchor relates to a table in the real world, this is the estimated size of the surface of that table.
	*/
	Vector3 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getSize, _godot_object);
	}
	/**
	
	*/
	void setAnchorId(in long anchor_id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAnchorId, _godot_object, anchor_id);
	}
	/**
	The anchor's ID. You can set this before the anchor itself exists. The first anchor gets an ID of `1`, the second an ID of `2`, etc. When anchors get removed, the engine can then assign the corresponding ID to new anchors. The most common situation where anchors "disappear" is when the AR server identifies that two anchors represent different parts of the same plane and merges them.
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
