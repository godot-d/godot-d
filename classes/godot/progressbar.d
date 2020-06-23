/**
General-purpose progress bar.

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
General-purpose progress bar.

Shows fill percentage from right to left.
*/
@GodotBaseClass struct ProgressBar
{
	package(godot) enum string _GODOT_internal_name = "ProgressBar";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("is_percent_visible") GodotMethod!(bool) isPercentVisible;
		@GodotName("set_percent_visible") GodotMethod!(void, bool) setPercentVisible;
	}
	/// 
	pragma(inline, true) bool opEquals(in ProgressBar other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) ProgressBar opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of ProgressBar.
	/// Note: use `memnew!ProgressBar` instead.
	static ProgressBar _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ProgressBar");
		if(constructor is null) return typeof(this).init;
		return cast(ProgressBar)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool isPercentVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPercentVisible, _godot_object);
	}
	/**
	
	*/
	void setPercentVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPercentVisible, _godot_object, visible);
	}
	/**
	If `true`, the fill percentage is displayed on the bar.
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
