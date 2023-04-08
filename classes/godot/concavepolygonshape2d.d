/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.concavepolygonshape2d;
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
import godot.shape2d;
/**

*/
@GodotBaseClass struct ConcavePolygonShape2D
{
	package(godot) enum string _GODOT_internal_name = "ConcavePolygonShape2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_segments") GodotMethod!(PoolVector2Array) getSegments;
		@GodotName("set_segments") GodotMethod!(void, PoolVector2Array) setSegments;
	}
	/// 
	pragma(inline, true) bool opEquals(in ConcavePolygonShape2D other) const
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
	/// Construct a new instance of ConcavePolygonShape2D.
	/// Note: use `memnew!ConcavePolygonShape2D` instead.
	static ConcavePolygonShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConcavePolygonShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(ConcavePolygonShape2D)(constructor());
	}
	/**
	
	*/
	PoolVector2Array getSegments() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getSegments, _godot_object);
	}
	/**
	
	*/
	void setSegments(in PoolVector2Array segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSegments, _godot_object, segments);
	}
	/**
	
	*/
	@property PoolVector2Array segments()
	{
		return getSegments();
	}
	/// ditto
	@property void segments(PoolVector2Array v)
	{
		setSegments(v);
	}
}
