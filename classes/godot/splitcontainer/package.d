/**
Container for splitting and adjusting.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.splitcontainer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.container;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
/**
Container for splitting and adjusting.

Container for splitting two $(D Control)s vertically or horizontally, with a grabber that allows adjusting the split offset or ratio.
*/
@GodotBaseClass struct SplitContainer
{
	package(godot) enum string _GODOT_internal_name = "SplitContainer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("clamp_split_offset") GodotMethod!(void) clampSplitOffset;
		@GodotName("get_dragger_visibility") GodotMethod!(SplitContainer.DraggerVisibility) getDraggerVisibility;
		@GodotName("get_split_offset") GodotMethod!(long) getSplitOffset;
		@GodotName("is_collapsed") GodotMethod!(bool) isCollapsed;
		@GodotName("set_collapsed") GodotMethod!(void, bool) setCollapsed;
		@GodotName("set_dragger_visibility") GodotMethod!(void, long) setDraggerVisibility;
		@GodotName("set_split_offset") GodotMethod!(void, long) setSplitOffset;
	}
	/// 
	pragma(inline, true) bool opEquals(in SplitContainer other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) SplitContainer opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of SplitContainer.
	/// Note: use `memnew!SplitContainer` instead.
	static SplitContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SplitContainer");
		if(constructor is null) return typeof(this).init;
		return cast(SplitContainer)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum DraggerVisibility : int
	{
		/**
		The split dragger is visible when the cursor hovers it.
		*/
		draggerVisible = 0,
		/**
		The split dragger is never visible.
		*/
		draggerHidden = 1,
		/**
		The split dragger is never visible and its space collapsed.
		*/
		draggerHiddenCollapsed = 2,
	}
	/// 
	enum Constants : int
	{
		draggerVisible = 0,
		draggerHidden = 1,
		draggerHiddenCollapsed = 2,
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Clamps the $(D splitOffset) value to not go outside the currently possible minimal and maximum values.
	*/
	void clampSplitOffset()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clampSplitOffset, _godot_object);
	}
	/**
	
	*/
	SplitContainer.DraggerVisibility getDraggerVisibility() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SplitContainer.DraggerVisibility)(GDNativeClassBinding.getDraggerVisibility, _godot_object);
	}
	/**
	
	*/
	long getSplitOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSplitOffset, _godot_object);
	}
	/**
	
	*/
	bool isCollapsed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCollapsed, _godot_object);
	}
	/**
	
	*/
	void setCollapsed(in bool collapsed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCollapsed, _godot_object, collapsed);
	}
	/**
	
	*/
	void setDraggerVisibility(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDraggerVisibility, _godot_object, mode);
	}
	/**
	
	*/
	void setSplitOffset(in long offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSplitOffset, _godot_object, offset);
	}
	/**
	If `true`, the area of the first $(D Control) will be collapsed and the dragger will be disabled.
	*/
	@property bool collapsed()
	{
		return isCollapsed();
	}
	/// ditto
	@property void collapsed(bool v)
	{
		setCollapsed(v);
	}
	/**
	Determines the dragger's visibility. See $(D draggervisibility) for details.
	*/
	@property SplitContainer.DraggerVisibility draggerVisibility()
	{
		return getDraggerVisibility();
	}
	/// ditto
	@property void draggerVisibility(long v)
	{
		setDraggerVisibility(v);
	}
	/**
	The initial offset of the splitting between the two $(D Control)s, with `0` being at the end of the first $(D Control).
	*/
	@property long splitOffset()
	{
		return getSplitOffset();
	}
	/// ditto
	@property void splitOffset(long v)
	{
		setSplitOffset(v);
	}
}
