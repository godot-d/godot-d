/**
Container that preserves its child controls' aspect ratio.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.aspectratiocontainer;
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
import godot.container;
/**
Container that preserves its child controls' aspect ratio.

Arranges child controls in a way to preserve their aspect ratio automatically whenever the container is resized. Solves the problem where the container size is dynamic and the contents' size needs to adjust accordingly without losing proportions.
*/
@GodotBaseClass struct AspectRatioContainer
{
	package(godot) enum string _GODOT_internal_name = "AspectRatioContainer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_alignment_horizontal") GodotMethod!(AspectRatioContainer.AlignMode) getAlignmentHorizontal;
		@GodotName("get_alignment_vertical") GodotMethod!(AspectRatioContainer.AlignMode) getAlignmentVertical;
		@GodotName("get_ratio") GodotMethod!(double) getRatio;
		@GodotName("get_stretch_mode") GodotMethod!(AspectRatioContainer.StretchMode) getStretchMode;
		@GodotName("set_alignment_horizontal") GodotMethod!(void, long) setAlignmentHorizontal;
		@GodotName("set_alignment_vertical") GodotMethod!(void, long) setAlignmentVertical;
		@GodotName("set_ratio") GodotMethod!(void, double) setRatio;
		@GodotName("set_stretch_mode") GodotMethod!(void, long) setStretchMode;
	}
	/// 
	pragma(inline, true) bool opEquals(in AspectRatioContainer other) const
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
	/// Construct a new instance of AspectRatioContainer.
	/// Note: use `memnew!AspectRatioContainer` instead.
	static AspectRatioContainer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AspectRatioContainer");
		if(constructor is null) return typeof(this).init;
		return cast(AspectRatioContainer)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum AlignMode : int
	{
		/**
		Aligns child controls with the beginning (left or top) of the container.
		*/
		alignBegin = 0,
		/**
		Aligns child controls with the center of the container.
		*/
		alignCenter = 1,
		/**
		Aligns child controls with the end (right or bottom) of the container.
		*/
		alignEnd = 2,
	}
	/// 
	enum StretchMode : int
	{
		/**
		The height of child controls is automatically adjusted based on the width of the container.
		*/
		stretchWidthControlsHeight = 0,
		/**
		The width of child controls is automatically adjusted based on the height of the container.
		*/
		stretchHeightControlsWidth = 1,
		/**
		The bounding rectangle of child controls is automatically adjusted to fit inside the container while keeping the aspect ratio.
		*/
		stretchFit = 2,
		/**
		The width and height of child controls is automatically adjusted to make their bounding rectangle cover the entire area of the container while keeping the aspect ratio.
		When the bounding rectangle of child controls exceed the container's size and $(D Control.rectClipContent) is enabled, this allows to show only the container's area restricted by its own bounding rectangle.
		*/
		stretchCover = 3,
	}
	/// 
	enum Constants : int
	{
		stretchWidthControlsHeight = 0,
		alignBegin = 0,
		stretchHeightControlsWidth = 1,
		alignCenter = 1,
		alignEnd = 2,
		stretchFit = 2,
		stretchCover = 3,
	}
	/**
	
	*/
	AspectRatioContainer.AlignMode getAlignmentHorizontal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AspectRatioContainer.AlignMode)(GDNativeClassBinding.getAlignmentHorizontal, _godot_object);
	}
	/**
	
	*/
	AspectRatioContainer.AlignMode getAlignmentVertical() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AspectRatioContainer.AlignMode)(GDNativeClassBinding.getAlignmentVertical, _godot_object);
	}
	/**
	
	*/
	double getRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRatio, _godot_object);
	}
	/**
	
	*/
	AspectRatioContainer.StretchMode getStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AspectRatioContainer.StretchMode)(GDNativeClassBinding.getStretchMode, _godot_object);
	}
	/**
	
	*/
	void setAlignmentHorizontal(in long alignment_horizontal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlignmentHorizontal, _godot_object, alignment_horizontal);
	}
	/**
	
	*/
	void setAlignmentVertical(in long alignment_vertical)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlignmentVertical, _godot_object, alignment_vertical);
	}
	/**
	
	*/
	void setRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setStretchMode(in long stretch_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStretchMode, _godot_object, stretch_mode);
	}
	/**
	Specifies the horizontal relative position of child controls.
	*/
	@property AspectRatioContainer.AlignMode alignmentHorizontal()
	{
		return getAlignmentHorizontal();
	}
	/// ditto
	@property void alignmentHorizontal(long v)
	{
		setAlignmentHorizontal(v);
	}
	/**
	Specifies the vertical relative position of child controls.
	*/
	@property AspectRatioContainer.AlignMode alignmentVertical()
	{
		return getAlignmentVertical();
	}
	/// ditto
	@property void alignmentVertical(long v)
	{
		setAlignmentVertical(v);
	}
	/**
	The aspect ratio to enforce on child controls. This is the width divided by the height. The ratio depends on the $(D stretchMode).
	*/
	@property double ratio()
	{
		return getRatio();
	}
	/// ditto
	@property void ratio(double v)
	{
		setRatio(v);
	}
	/**
	The stretch mode used to align child controls.
	*/
	@property AspectRatioContainer.StretchMode stretchMode()
	{
		return getStretchMode();
	}
	/// ditto
	@property void stretchMode(long v)
	{
		setStretchMode(v);
	}
}
