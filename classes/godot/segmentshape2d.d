/**
Segment shape for 2D collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.segmentshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape2d;
import godot.resource;
import godot.reference;
/**
Segment shape for 2D collisions.

Consists of two points, `a` and `b`.
*/
@GodotBaseClass struct SegmentShape2D
{
	enum string _GODOT_internal_name = "SegmentShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_a") GodotMethod!(void, Vector2) setA;
		@GodotName("get_a") GodotMethod!(Vector2) getA;
		@GodotName("set_b") GodotMethod!(void, Vector2) setB;
		@GodotName("get_b") GodotMethod!(Vector2) getB;
	}
	bool opEquals(in SegmentShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SegmentShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SegmentShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SegmentShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(SegmentShape2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setA(in Vector2 a)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setA, _godot_object, a);
	}
	/**
	
	*/
	Vector2 getA() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getA, _godot_object);
	}
	/**
	
	*/
	void setB(in Vector2 b)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setB, _godot_object, b);
	}
	/**
	
	*/
	Vector2 getB() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getB, _godot_object);
	}
	/**
	The segment's first point position.
	*/
	@property Vector2 a()
	{
		return getA();
	}
	/// ditto
	@property void a(Vector2 v)
	{
		setA(v);
	}
	/**
	The segment's second point position.
	*/
	@property Vector2 b()
	{
		return getB();
	}
	/// ditto
	@property void b(Vector2 v)
	{
		setB(v);
	}
}
