/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.textmesh;
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
import godot.primitivemesh;
import godot.mesh;
import godot.resource;
import godot.reference;
import godot.font;
/**

*/
@GodotBaseClass struct TextMesh
{
	package(godot) enum string _GODOT_internal_name = "TextMesh";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_font_changed") GodotMethod!(void) _fontChanged;
		@GodotName("get_curve_step") GodotMethod!(double) getCurveStep;
		@GodotName("get_depth") GodotMethod!(double) getDepth;
		@GodotName("get_font") GodotMethod!(Font) getFont;
		@GodotName("get_horizontal_alignment") GodotMethod!(TextMesh.Align) getHorizontalAlignment;
		@GodotName("get_pixel_size") GodotMethod!(double) getPixelSize;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("is_uppercase") GodotMethod!(bool) isUppercase;
		@GodotName("set_curve_step") GodotMethod!(void, double) setCurveStep;
		@GodotName("set_depth") GodotMethod!(void, double) setDepth;
		@GodotName("set_font") GodotMethod!(void, Font) setFont;
		@GodotName("set_horizontal_alignment") GodotMethod!(void, long) setHorizontalAlignment;
		@GodotName("set_pixel_size") GodotMethod!(void, double) setPixelSize;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("set_uppercase") GodotMethod!(void, bool) setUppercase;
	}
	/// 
	pragma(inline, true) bool opEquals(in TextMesh other) const
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
	/// Construct a new instance of TextMesh.
	/// Note: use `memnew!TextMesh` instead.
	static TextMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextMesh");
		if(constructor is null) return typeof(this).init;
		return cast(TextMesh)(constructor());
	}
	/// 
	enum Align : int
	{
		/** */
		alignLeft = 0,
		/** */
		alignCenter = 1,
		/** */
		alignRight = 2,
	}
	/// 
	enum Constants : int
	{
		alignLeft = 0,
		alignCenter = 1,
		alignRight = 2,
	}
	/**
	
	*/
	void _fontChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_font_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getCurveStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getCurveStep, _godot_object);
	}
	/**
	
	*/
	double getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDepth, _godot_object);
	}
	/**
	
	*/
	Ref!Font getFont() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Font)(GDNativeClassBinding.getFont, _godot_object);
	}
	/**
	
	*/
	TextMesh.Align getHorizontalAlignment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TextMesh.Align)(GDNativeClassBinding.getHorizontalAlignment, _godot_object);
	}
	/**
	
	*/
	double getPixelSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPixelSize, _godot_object);
	}
	/**
	
	*/
	String getText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getText, _godot_object);
	}
	/**
	
	*/
	bool isUppercase() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isUppercase, _godot_object);
	}
	/**
	
	*/
	void setCurveStep(in double curve_step)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCurveStep, _godot_object, curve_step);
	}
	/**
	
	*/
	void setDepth(in double depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepth, _godot_object, depth);
	}
	/**
	
	*/
	void setFont(Font font)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFont, _godot_object, font);
	}
	/**
	
	*/
	void setHorizontalAlignment(in long alignment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHorizontalAlignment, _godot_object, alignment);
	}
	/**
	
	*/
	void setPixelSize(in double pixel_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPixelSize, _godot_object, pixel_size);
	}
	/**
	
	*/
	void setText(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setText, _godot_object, text);
	}
	/**
	
	*/
	void setUppercase(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUppercase, _godot_object, enable);
	}
	/**
	
	*/
	@property double curveStep()
	{
		return getCurveStep();
	}
	/// ditto
	@property void curveStep(double v)
	{
		setCurveStep(v);
	}
	/**
	
	*/
	@property double depth()
	{
		return getDepth();
	}
	/// ditto
	@property void depth(double v)
	{
		setDepth(v);
	}
	/**
	
	*/
	@property Font font()
	{
		return getFont();
	}
	/// ditto
	@property void font(Font v)
	{
		setFont(v);
	}
	/**
	
	*/
	@property TextMesh.Align horizontalAlignment()
	{
		return getHorizontalAlignment();
	}
	/// ditto
	@property void horizontalAlignment(long v)
	{
		setHorizontalAlignment(v);
	}
	/**
	
	*/
	@property double pixelSize()
	{
		return getPixelSize();
	}
	/// ditto
	@property void pixelSize(double v)
	{
		setPixelSize(v);
	}
	/**
	
	*/
	@property String text()
	{
		return getText();
	}
	/// ditto
	@property void text(String v)
	{
		setText(v);
	}
	/**
	
	*/
	@property bool uppercase()
	{
		return isUppercase();
	}
	/// ditto
	@property void uppercase(bool v)
	{
		setUppercase(v);
	}
}
