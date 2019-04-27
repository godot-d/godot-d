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
import godot.inputevent;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Container for splitting and adjusting.

Container for splitting two controls vertically or horizontally, with a grabber that allows adjusting the split offset or ratio.
*/
@GodotBaseClass struct SplitContainer
{
	enum string _GODOT_internal_name = "SplitContainer";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("set_split_offset") GodotMethod!(void, long) setSplitOffset;
		@GodotName("get_split_offset") GodotMethod!(long) getSplitOffset;
		@GodotName("clamp_split_offset") GodotMethod!(void) clampSplitOffset;
		@GodotName("set_collapsed") GodotMethod!(void, bool) setCollapsed;
		@GodotName("is_collapsed") GodotMethod!(bool) isCollapsed;
		@GodotName("set_dragger_visibility") GodotMethod!(void, long) setDraggerVisibility;
		@GodotName("get_dragger_visibility") GodotMethod!(SplitContainer.DraggerVisibility) getDraggerVisibility;
	}
	bool opEquals(in SplitContainer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SplitContainer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		The split dragger is visible.
		*/
		draggerVisible = 0,
		/**
		The split dragger is invisible.
		*/
		draggerHidden = 1,
		/**
		The split dragger is invisible and collapsed.
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
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void setSplitOffset(in long offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSplitOffset, _godot_object, offset);
	}
	/**
	
	*/
	long getSplitOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSplitOffset, _godot_object);
	}
	/**
	
	*/
	void clampSplitOffset()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clampSplitOffset, _godot_object);
	}
	/**
	
	*/
	void setCollapsed(in bool collapsed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCollapsed, _godot_object, collapsed);
	}
	/**
	
	*/
	bool isCollapsed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCollapsed, _godot_object);
	}
	/**
	
	*/
	void setDraggerVisibility(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDraggerVisibility, _godot_object, mode);
	}
	/**
	
	*/
	SplitContainer.DraggerVisibility getDraggerVisibility() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SplitContainer.DraggerVisibility)(_classBinding.getDraggerVisibility, _godot_object);
	}
	/**
	
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
	/**
	
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
	Determines whether the dragger is visible.
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
}
