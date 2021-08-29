/**
Copies a region of the screen (or the whole screen) to a buffer so it can be accessed in your shader scripts through the `texture(SCREEN_TEXTURE, ...)` function.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.backbuffercopy;
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
import godot.node2d;
/**
Copies a region of the screen (or the whole screen) to a buffer so it can be accessed in your shader scripts through the `texture(SCREEN_TEXTURE, ...)` function.

Node for back-buffering the currently-displayed screen. The region defined in the BackBufferCopy node is buffered with the content of the screen it covers, or the entire screen according to the copy mode set. Use the `texture(SCREEN_TEXTURE, ...)` function in your shader scripts to access the buffer.
$(B Note:) Since this node inherits from $(D Node2D) (and not $(D Control)), anchors and margins won't apply to child $(D Control)-derived nodes. This can be problematic when resizing the window. To avoid this, add $(D Control)-derived nodes as $(I siblings) to the BackBufferCopy node instead of adding them as children.
*/
@GodotBaseClass struct BackBufferCopy
{
	package(godot) enum string _GODOT_internal_name = "BackBufferCopy";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_copy_mode") GodotMethod!(BackBufferCopy.CopyMode) getCopyMode;
		@GodotName("get_rect") GodotMethod!(Rect2) getRect;
		@GodotName("set_copy_mode") GodotMethod!(void, long) setCopyMode;
		@GodotName("set_rect") GodotMethod!(void, Rect2) setRect;
	}
	/// 
	pragma(inline, true) bool opEquals(in BackBufferCopy other) const
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
	/// Construct a new instance of BackBufferCopy.
	/// Note: use `memnew!BackBufferCopy` instead.
	static BackBufferCopy _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BackBufferCopy");
		if(constructor is null) return typeof(this).init;
		return cast(BackBufferCopy)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum CopyMode : int
	{
		/**
		Disables the buffering mode. This means the BackBufferCopy node will directly use the portion of screen it covers.
		*/
		copyModeDisabled = 0,
		/**
		BackBufferCopy buffers a rectangular region.
		*/
		copyModeRect = 1,
		/**
		BackBufferCopy buffers the entire screen.
		*/
		copyModeViewport = 2,
	}
	/// 
	enum Constants : int
	{
		copyModeDisabled = 0,
		copyModeRect = 1,
		copyModeViewport = 2,
	}
	/**
	
	*/
	BackBufferCopy.CopyMode getCopyMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(BackBufferCopy.CopyMode)(GDNativeClassBinding.getCopyMode, _godot_object);
	}
	/**
	
	*/
	Rect2 getRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getRect, _godot_object);
	}
	/**
	
	*/
	void setCopyMode(in long copy_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCopyMode, _godot_object, copy_mode);
	}
	/**
	
	*/
	void setRect(in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRect, _godot_object, rect);
	}
	/**
	Buffer mode. See $(D copymode) constants.
	*/
	@property BackBufferCopy.CopyMode copyMode()
	{
		return getCopyMode();
	}
	/// ditto
	@property void copyMode(long v)
	{
		setCopyMode(v);
	}
	/**
	The area covered by the BackBufferCopy. Only used if $(D copyMode) is $(D constant COPY_MODE_RECT).
	*/
	@property Rect2 rect()
	{
		return getRect();
	}
	/// ditto
	@property void rect(Rect2 v)
	{
		setRect(v);
	}
}
