/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.groovejoint2d;
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
/**

*/
@GodotBaseClass struct GrooveJoint2D
{
	package(godot) enum string _GODOT_internal_name = "GrooveJoint2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Joint2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_initial_offset") GodotMethod!(double) getInitialOffset;
		@GodotName("get_length") GodotMethod!(double) getLength;
		@GodotName("set_initial_offset") GodotMethod!(void, double) setInitialOffset;
		@GodotName("set_length") GodotMethod!(void, double) setLength;
	}
	/// 
	pragma(inline, true) bool opEquals(in GrooveJoint2D other) const
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
	/// Construct a new instance of GrooveJoint2D.
	/// Note: use `memnew!GrooveJoint2D` instead.
	static GrooveJoint2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GrooveJoint2D");
		if(constructor is null) return typeof(this).init;
		return cast(GrooveJoint2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getInitialOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInitialOffset, _godot_object);
	}
	/**
	
	*/
	double getLength() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLength, _godot_object);
	}
	/**
	
	*/
	void setInitialOffset(in double offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInitialOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setLength(in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLength, _godot_object, length);
	}
	/**
	
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
	/**
	
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
}
