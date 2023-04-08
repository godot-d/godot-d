/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.circleshape2d;
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
@GodotBaseClass struct CircleShape2D
{
	package(godot) enum string _GODOT_internal_name = "CircleShape2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_radius") GodotMethod!(double) getRadius;
		@GodotName("set_radius") GodotMethod!(void, double) setRadius;
	}
	/// 
	pragma(inline, true) bool opEquals(in CircleShape2D other) const
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
	/// Construct a new instance of CircleShape2D.
	/// Note: use `memnew!CircleShape2D` instead.
	static CircleShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CircleShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(CircleShape2D)(constructor());
	}
	/**
	
	*/
	double getRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRadius, _godot_object);
	}
	/**
	
	*/
	void setRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRadius, _godot_object, radius);
	}
	/**
	
	*/
	@property double radius()
	{
		return getRadius();
	}
	/// ditto
	@property void radius(double v)
	{
		setRadius(v);
	}
}
