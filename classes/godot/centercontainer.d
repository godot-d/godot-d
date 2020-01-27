/**
Keeps children controls centered.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.centercontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.container;
/**
Keeps children controls centered.

CenterContainer keeps children controls centered. This container keeps all children to their minimum size, in the center.
*/
@GodotBaseClass struct CenterContainer
{
	enum string _GODOT_internal_name = "CenterContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("is_using_top_left") GodotMethod!(bool) isUsingTopLeft;
		@GodotName("set_use_top_left") GodotMethod!(void, bool) setUseTopLeft;
	}
	bool opEquals(in CenterContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CenterContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CenterContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CenterContainer");
		if(constructor is null) return typeof(this).init;
		return cast(CenterContainer)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool isUsingTopLeft() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingTopLeft, _godot_object);
	}
	/**
	
	*/
	void setUseTopLeft(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseTopLeft, _godot_object, enable);
	}
	/**
	If `true`, centers children relative to the $(D CenterContainer)'s top left corner.
	*/
	@property bool useTopLeft()
	{
		return isUsingTopLeft();
	}
	/// ditto
	@property void useTopLeft(bool v)
	{
		setUseTopLeft(v);
	}
}
