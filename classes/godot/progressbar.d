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
import godot.control;
import godot.canvasitem;
import godot.node;
/**
General purpose progress bar.

Shows fill percentage from right to left.
*/
@GodotBaseClass struct ProgressBar
{
	enum string _GODOT_internal_name = "ProgressBar";
public:
@nogc nothrow:
	union { godot_object _godot_object; Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_percent_visible") GodotMethod!(void, bool) setPercentVisible;
		@GodotName("is_percent_visible") GodotMethod!(bool) isPercentVisible;
	}
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
	/**
	
	*/
	void setPercentVisible(in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPercentVisible, _godot_object, visible);
	}
	/**
	
	*/
	bool isPercentVisible() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPercentVisible, _godot_object);
	}
	/**
	If `true` the fill percentage is displayed on the bar. Default value: `true`.
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
