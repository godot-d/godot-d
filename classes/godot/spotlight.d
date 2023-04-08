/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spotlight;
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
import godot.light;
import godot.visualinstance;
/**

*/
@GodotBaseClass struct SpotLight
{
	package(godot) enum string _GODOT_internal_name = "SpotLight";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Light _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in SpotLight other) const
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
	/// Construct a new instance of SpotLight.
	/// Note: use `memnew!SpotLight` instead.
	static SpotLight _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpotLight");
		if(constructor is null) return typeof(this).init;
		return cast(SpotLight)(constructor());
	}
	/**
	
	*/
	@property double spotAngle()
	{
		return getParam(6);
	}
	/// ditto
	@property void spotAngle(double v)
	{
		setParam(6, v);
	}
	/**
	
	*/
	@property double spotAngleAttenuation()
	{
		return getParam(7);
	}
	/// ditto
	@property void spotAngleAttenuation(double v)
	{
		setParam(7, v);
	}
	/**
	
	*/
	@property double spotAttenuation()
	{
		return getParam(5);
	}
	/// ditto
	@property void spotAttenuation(double v)
	{
		setParam(5, v);
	}
	/**
	
	*/
	@property double spotRange()
	{
		return getParam(4);
	}
	/// ditto
	@property void spotRange(double v)
	{
		setParam(4, v);
	}
}
