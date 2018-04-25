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

CenterContainer Keeps children controls centered. This container keeps all children to their minimum size, in the center.
*/
@GodotBaseClass struct CenterContainer
{
	static immutable string _GODOT_internal_name = "CenterContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(void, bool) _GODOT_set_use_top_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_use_top_left") = _GODOT_set_use_top_left;
	/**
	
	*/
	void setUseTopLeft(in bool enable)
	{
		_GODOT_set_use_top_left.bind("CenterContainer", "set_use_top_left");
		ptrcall!(void)(_GODOT_set_use_top_left, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_using_top_left;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_using_top_left") = _GODOT_is_using_top_left;
	/**
	
	*/
	bool isUsingTopLeft() const
	{
		_GODOT_is_using_top_left.bind("CenterContainer", "is_using_top_left");
		return ptrcall!(bool)(_GODOT_is_using_top_left, _godot_object);
	}
	/**
	If `true` centers children relative to the `CenterContainer`'s top left corner. Default value: `false`.
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
