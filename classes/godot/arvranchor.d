/**


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
	/**
	
	*/
	long getAnchorId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAnchorId, _godot_object);
	}
	/**
	
	*/
	String getAnchorName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAnchorName, _godot_object);
	}
	/**
	
	*/
	bool getIsActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getIsActive, _godot_object);
	}
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(GDNativeClassBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	Plane getPlane() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Plane)(GDNativeClassBinding.getPlane, _godot_object);
	}
	/**
	
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
