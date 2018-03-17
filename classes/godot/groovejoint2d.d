/**
Groove constraint for 2D physics.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.groovejoint2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.joint2d;
/**
Groove constraint for 2D physics.

This is useful for making a body "slide" through a segment placed in another.
*/
@GodotBaseClass struct GrooveJoint2D
{
	static immutable string _GODOT_internal_name = "GrooveJoint2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Joint2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in GrooveJoint2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	GrooveJoint2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static GrooveJoint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GrooveJoint2D");
		if(constructor is null) return typeof(this).init;
		return cast(GrooveJoint2D)(constructor());
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_length") = _GODOT_set_length;
	/**
	
	*/
	void setLength(in double length)
	{
		_GODOT_set_length.bind("GrooveJoint2D", "set_length");
		ptrcall!(void)(_GODOT_set_length, _godot_object, length);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_length") = _GODOT_get_length;
	/**
	
	*/
	double getLength() const
	{
		_GODOT_get_length.bind("GrooveJoint2D", "get_length");
		return ptrcall!(double)(_GODOT_get_length, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_initial_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_initial_offset") = _GODOT_set_initial_offset;
	/**
	
	*/
	void setInitialOffset(in double offset)
	{
		_GODOT_set_initial_offset.bind("GrooveJoint2D", "set_initial_offset");
		ptrcall!(void)(_GODOT_set_initial_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_initial_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_initial_offset") = _GODOT_get_initial_offset;
	/**
	
	*/
	double getInitialOffset() const
	{
		_GODOT_get_initial_offset.bind("GrooveJoint2D", "get_initial_offset");
		return ptrcall!(double)(_GODOT_get_initial_offset, _godot_object);
	}
	/**
	The groove's length. The groove is from the joint's origin towards $(D length) along the joint's local y axis. Default value: `50`
	*/
	@property double length()
	{
		return getLength();
	}
	/// ditto
	@property void length(double v)
	{
		setLength(v);
	}
	/**
	The body B's initial anchor position defined by the joint's origin and a local offset $(D initialOffset) along the joint's y axis (along the groove). Default value: `25`
	*/
	@property double initialOffset()
	{
		return getInitialOffset();
	}
	/// ditto
	@property void initialOffset(double v)
	{
		setInitialOffset(v);
	}
}
