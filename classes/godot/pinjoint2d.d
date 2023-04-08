/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.pinjoint2d;
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
import godot.joint2d;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct PinJoint2D
{
	package(godot) enum string _GODOT_internal_name = "PinJoint2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Joint2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_softness") GodotMethod!(double) getSoftness;
		@GodotName("set_softness") GodotMethod!(void, double) setSoftness;
	}
	/// 
	pragma(inline, true) bool opEquals(in PinJoint2D other) const
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
	/// Construct a new instance of PinJoint2D.
	/// Note: use `memnew!PinJoint2D` instead.
	static PinJoint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PinJoint2D");
		if(constructor is null) return typeof(this).init;
		return cast(PinJoint2D)(constructor());
	}
	/**
	
	*/
	double getSoftness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSoftness, _godot_object);
	}
	/**
	
	*/
	void setSoftness(in double softness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSoftness, _godot_object, softness);
	}
	/**
	
	*/
	@property double softness()
	{
		return getSoftness();
	}
	/// ditto
	@property void softness(double v)
	{
		setSoftness(v);
	}
}
