/**
General purpose progress bar.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.progressbar;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.range;
/**
General purpose progress bar.

Shows fill percentage from right to left.
*/
@GodotBaseClass struct ProgressBar
{
	static immutable string _GODOT_internal_name = "ProgressBar";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ProgressBar other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ProgressBar opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ProgressBar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ProgressBar");
		if(constructor is null) return typeof(this).init;
		return cast(ProgressBar)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, bool) _GODOT_set_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_percent_visible") = _GODOT_set_percent_visible;
	/**
	
	*/
	void setPercentVisible(in bool visible)
	{
		_GODOT_set_percent_visible.bind("ProgressBar", "set_percent_visible");
		ptrcall!(void)(_GODOT_set_percent_visible, _godot_object, visible);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_percent_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_percent_visible") = _GODOT_is_percent_visible;
	/**
	
	*/
	bool isPercentVisible() const
	{
		_GODOT_is_percent_visible.bind("ProgressBar", "is_percent_visible");
		return ptrcall!(bool)(_GODOT_is_percent_visible, _godot_object);
	}
	/**
	
	*/
	@property bool percentVisible()
	{
		return isPercentVisible();
	}
	/// ditto
	@property void percentVisible(bool v)
	{
		setPercentVisible(v);
	}
}
