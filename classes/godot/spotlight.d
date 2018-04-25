/**
Spotlight $(D Light), such as a reflector spotlight or a lantern.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spotlight;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.light;
/**
Spotlight $(D Light), such as a reflector spotlight or a lantern.

A SpotLight light is a type of $(D Light) node that emits lights in a specific direction, in the shape of a cone. The light is attenuated through the distance and this attenuation can be configured by changing the energy, radius and attenuation parameters of $(D Light). TODO: Image of a spotlight.
*/
@GodotBaseClass struct SpotLight
{
	static immutable string _GODOT_internal_name = "SpotLight";
public:
@nogc nothrow:
	union { godot_object _godot_object; Light _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in SpotLight other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpotLight opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpotLight _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpotLight");
		if(constructor is null) return typeof(this).init;
		return cast(SpotLight)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	@property double spotRange()
	{
		return getParam(3);
	}
	/// ditto
	@property void spotRange(double v)
	{
		setParam(3, v);
	}
	/**
	
	*/
	@property double spotAttenuation()
	{
		return getParam(4);
	}
	/// ditto
	@property void spotAttenuation(double v)
	{
		setParam(4, v);
	}
	/**
	
	*/
	@property double spotAngle()
	{
		return getParam(5);
	}
	/// ditto
	@property void spotAngle(double v)
	{
		setParam(5, v);
	}
	/**
	
	*/
	@property double spotAngleAttenuation()
	{
		return getParam(6);
	}
	/// ditto
	@property void spotAngleAttenuation(double v)
	{
		setParam(6, v);
	}
}
