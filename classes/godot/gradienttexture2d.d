/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gradienttexture2d;
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
import godot.texture;
import godot.gradient;
/**

*/
@GodotBaseClass struct GradientTexture2D
{
	package(godot) enum string _GODOT_internal_name = "GradientTexture2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_queue_update") GodotMethod!(void) _queueUpdate;
		@GodotName("_update") GodotMethod!(void) _update;
		@GodotName("get_fill") GodotMethod!(GradientTexture2D.Fill) getFill;
		@GodotName("get_fill_from") GodotMethod!(Vector2) getFillFrom;
		@GodotName("get_fill_to") GodotMethod!(Vector2) getFillTo;
		@GodotName("get_gradient") GodotMethod!(Gradient) getGradient;
		@GodotName("get_repeat") GodotMethod!(GradientTexture2D.Repeat) getRepeat;
		@GodotName("is_using_hdr") GodotMethod!(bool) isUsingHdr;
		@GodotName("set_fill") GodotMethod!(void, long) setFill;
		@GodotName("set_fill_from") GodotMethod!(void, Vector2) setFillFrom;
		@GodotName("set_fill_to") GodotMethod!(void, Vector2) setFillTo;
		@GodotName("set_gradient") GodotMethod!(void, Gradient) setGradient;
		@GodotName("set_height") GodotMethod!(void, long) setHeight;
		@GodotName("set_repeat") GodotMethod!(void, long) setRepeat;
		@GodotName("set_use_hdr") GodotMethod!(void, bool) setUseHdr;
		@GodotName("set_width") GodotMethod!(void, long) setWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in GradientTexture2D other) const
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
	/// Construct a new instance of GradientTexture2D.
	/// Note: use `memnew!GradientTexture2D` instead.
	static GradientTexture2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GradientTexture2D");
		if(constructor is null) return typeof(this).init;
		return cast(GradientTexture2D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Fill : int
	{
		/** */
		fillLinear = 0,
		/** */
		fillRadial = 1,
	}
	/// 
	enum Repeat : int
	{
		/** */
		repeatNone = 0,
		/** */
		repeat = 1,
		/** */
		repeatMirror = 2,
	}
	/// 
	enum Constants : int
	{
		fillLinear = 0,
		repeatNone = 0,
		fillRadial = 1,
		repeat = 1,
		repeatMirror = 2,
	}
	/**
	
	*/
	void _queueUpdate()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_queue_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _update()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_update");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	GradientTexture2D.Fill getFill() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GradientTexture2D.Fill)(GDNativeClassBinding.getFill, _godot_object);
	}
	/**
	
	*/
	Vector2 getFillFrom() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFillFrom, _godot_object);
	}
	/**
	
	*/
	Vector2 getFillTo() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getFillTo, _godot_object);
	}
	/**
	
	*/
	Ref!Gradient getGradient() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Gradient)(GDNativeClassBinding.getGradient, _godot_object);
	}
	/**
	
	*/
	GradientTexture2D.Repeat getRepeat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GradientTexture2D.Repeat)(GDNativeClassBinding.getRepeat, _godot_object);
	}
	/**
	
	*/
	bool isUsingHdr() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUsingHdr, _godot_object);
	}
	/**
	
	*/
	void setFill(in long fill)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFill, _godot_object, fill);
	}
	/**
	
	*/
	void setFillFrom(in Vector2 fill_from)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFillFrom, _godot_object, fill_from);
	}
	/**
	
	*/
	void setFillTo(in Vector2 fill_to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFillTo, _godot_object, fill_to);
	}
	/**
	
	*/
	void setGradient(Gradient gradient)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGradient, _godot_object, gradient);
	}
	/**
	
	*/
	void setHeight(in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHeight, _godot_object, height);
	}
	/**
	
	*/
	void setRepeat(in long repeat)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRepeat, _godot_object, repeat);
	}
	/**
	
	*/
	void setUseHdr(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseHdr, _godot_object, enabled);
	}
	/**
	
	*/
	void setWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWidth, _godot_object, width);
	}
	/**
	
	*/
	@property GradientTexture2D.Fill fill()
	{
		return getFill();
	}
	/// ditto
	@property void fill(long v)
	{
		setFill(v);
	}
	/**
	
	*/
	@property Vector2 fillFrom()
	{
		return getFillFrom();
	}
	/// ditto
	@property void fillFrom(Vector2 v)
	{
		setFillFrom(v);
	}
	/**
	
	*/
	@property Vector2 fillTo()
	{
		return getFillTo();
	}
	/// ditto
	@property void fillTo(Vector2 v)
	{
		setFillTo(v);
	}
	/**
	
	*/
	@property Gradient gradient()
	{
		return getGradient();
	}
	/// ditto
	@property void gradient(Gradient v)
	{
		setGradient(v);
	}
	/**
	
	*/
	@property long height()
	{
		return getHeight();
	}
	/// ditto
	@property void height(long v)
	{
		setHeight(v);
	}
	/**
	
	*/
	@property GradientTexture2D.Repeat repeat()
	{
		return getRepeat();
	}
	/// ditto
	@property void repeat(long v)
	{
		setRepeat(v);
	}
	/**
	
	*/
	@property bool useHdr()
	{
		return isUsingHdr();
	}
	/// ditto
	@property void useHdr(bool v)
	{
		setUseHdr(v);
	}
	/**
	
	*/
	@property long width()
	{
		return getWidth();
	}
	/// ditto
	@property void width(long v)
	{
		setWidth(v);
	}
}
