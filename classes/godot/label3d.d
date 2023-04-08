/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.label3d;
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
import godot.geometryinstance;
import godot.visualinstance;
import godot.trianglemesh;
import godot.spatialmaterial;
import godot.font;
/**

*/
@GodotBaseClass struct Label3D
{
	package(godot) enum string _GODOT_internal_name = "Label3D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_font_changed") GodotMethod!(void) _fontChanged;
		@GodotName("_im_update") GodotMethod!(void) _imUpdate;
		@GodotName("_queue_update") GodotMethod!(void) _queueUpdate;
		@GodotName("generate_triangle_mesh") GodotMethod!(TriangleMesh) generateTriangleMesh;
		@GodotName("get_alpha_cut_mode") GodotMethod!(Label3D.AlphaCutMode) getAlphaCutMode;
		@GodotName("get_alpha_scissor_threshold") GodotMethod!(double) getAlphaScissorThreshold;
		@GodotName("get_autowrap") GodotMethod!(bool) getAutowrap;
		@GodotName("get_billboard_mode") GodotMethod!(SpatialMaterial.BillboardMode) getBillboardMode;
		@GodotName("get_draw_flag") GodotMethod!(bool, long) getDrawFlag;
		@GodotName("get_font") GodotMethod!(Font) getFont;
		@GodotName("get_horizontal_alignment") GodotMethod!(Label3D.Align) getHorizontalAlignment;
		@GodotName("get_line_spacing") GodotMethod!(double) getLineSpacing;
		@GodotName("get_modulate") GodotMethod!(Color) getModulate;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_outline_modulate") GodotMethod!(Color) getOutlineModulate;
		@GodotName("get_outline_render_priority") GodotMethod!(long) getOutlineRenderPriority;
		@GodotName("get_pixel_size") GodotMethod!(double) getPixelSize;
		@GodotName("get_render_priority") GodotMethod!(long) getRenderPriority;
		@GodotName("get_text") GodotMethod!(String) getText;
		@GodotName("get_vertical_alignment") GodotMethod!(Label3D.VAlign) getVerticalAlignment;
		@GodotName("get_width") GodotMethod!(double) getWidth;
		@GodotName("is_uppercase") GodotMethod!(bool) isUppercase;
		@GodotName("set_alpha_cut_mode") GodotMethod!(void, long) setAlphaCutMode;
		@GodotName("set_alpha_scissor_threshold") GodotMethod!(void, double) setAlphaScissorThreshold;
		@GodotName("set_autowrap") GodotMethod!(void, bool) setAutowrap;
		@GodotName("set_billboard_mode") GodotMethod!(void, long) setBillboardMode;
		@GodotName("set_draw_flag") GodotMethod!(void, long, bool) setDrawFlag;
		@GodotName("set_font") GodotMethod!(void, Font) setFont;
		@GodotName("set_horizontal_alignment") GodotMethod!(void, long) setHorizontalAlignment;
		@GodotName("set_line_spacing") GodotMethod!(void, double) setLineSpacing;
		@GodotName("set_modulate") GodotMethod!(void, Color) setModulate;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_outline_modulate") GodotMethod!(void, Color) setOutlineModulate;
		@GodotName("set_outline_render_priority") GodotMethod!(void, long) setOutlineRenderPriority;
		@GodotName("set_pixel_size") GodotMethod!(void, double) setPixelSize;
		@GodotName("set_render_priority") GodotMethod!(void, long) setRenderPriority;
		@GodotName("set_text") GodotMethod!(void, String) setText;
		@GodotName("set_uppercase") GodotMethod!(void, bool) setUppercase;
		@GodotName("set_vertical_alignment") GodotMethod!(void, long) setVerticalAlignment;
		@GodotName("set_width") GodotMethod!(void, double) setWidth;
	}
	/// 
	pragma(inline, true) bool opEquals(in Label3D other) const
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
	/// Construct a new instance of Label3D.
	/// Note: use `memnew!Label3D` instead.
	static Label3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Label3D");
		if(constructor is null) return typeof(this).init;
		return cast(Label3D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Align : int
	{
		/** */
		alignLeft = 0,
		/** */
		alignCenter = 1,
		/** */
		alignRight = 2,
		/** */
		alignFill = 3,
	}
	/// 
	enum DrawFlags : int
	{
		/** */
		flagShaded = 0,
		/** */
		flagDoubleSided = 1,
		/** */
		flagDisableDepthTest = 2,
		/** */
		flagFixedSize = 3,
		/** */
		flagMax = 4,
	}
	/// 
	enum AlphaCutMode : int
	{
		/** */
		alphaCutDisabled = 0,
		/** */
		alphaCutDiscard = 1,
		/** */
		alphaCutOpaquePrepass = 2,
	}
	/// 
	enum VAlign : int
	{
		/** */
		valignTop = 0,
		/** */
		valignCenter = 1,
		/** */
		valignBottom = 2,
		/** */
		valignFill = 3,
	}
	/// 
	enum Constants : int
	{
		flagShaded = 0,
		alphaCutDisabled = 0,
		alignLeft = 0,
		valignTop = 0,
		alignCenter = 1,
		alphaCutDiscard = 1,
		valignCenter = 1,
		flagDoubleSided = 1,
		valignBottom = 2,
		alphaCutOpaquePrepass = 2,
		alignRight = 2,
		flagDisableDepthTest = 2,
		valignFill = 3,
		alignFill = 3,
		flagFixedSize = 3,
		flagMax = 4,
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
	void _imUpdate()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_im_update");
		this.callv(_GODOT_method_name, _GODOT_args);
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
	Ref!TriangleMesh generateTriangleMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TriangleMesh)(GDNativeClassBinding.generateTriangleMesh, _godot_object);
	}
	/**
	
	*/
	Label3D.AlphaCutMode getAlphaCutMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label3D.AlphaCutMode)(GDNativeClassBinding.getAlphaCutMode, _godot_object);
	}
	/**
	
	*/
	double getAlphaScissorThreshold() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAlphaScissorThreshold, _godot_object);
	}
	/**
	
	*/
	bool getAutowrap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAutowrap, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.BillboardMode getBillboardMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.BillboardMode)(GDNativeClassBinding.getBillboardMode, _godot_object);
	}
	/**
	
	*/
	bool getDrawFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getDrawFlag, _godot_object, flag);
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
	Label3D.Align getHorizontalAlignment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label3D.Align)(GDNativeClassBinding.getHorizontalAlignment, _godot_object);
	}
	/**
	
	*/
	double getLineSpacing() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getLineSpacing, _godot_object);
	}
	/**
	
	*/
	Color getModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getModulate, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	Color getOutlineModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getOutlineModulate, _godot_object);
	}
	/**
	
	*/
	long getOutlineRenderPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getOutlineRenderPriority, _godot_object);
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
	long getRenderPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRenderPriority, _godot_object);
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
	Label3D.VAlign getVerticalAlignment() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Label3D.VAlign)(GDNativeClassBinding.getVerticalAlignment, _godot_object);
	}
	/**
	
	*/
	double getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getWidth, _godot_object);
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
	void setAlphaCutMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlphaCutMode, _godot_object, mode);
	}
	/**
	
	*/
	void setAlphaScissorThreshold(in double threshold)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAlphaScissorThreshold, _godot_object, threshold);
	}
	/**
	
	*/
	void setAutowrap(in bool autowrap_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAutowrap, _godot_object, autowrap_mode);
	}
	/**
	
	*/
	void setBillboardMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBillboardMode, _godot_object, mode);
	}
	/**
	
	*/
	void setDrawFlag(in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDrawFlag, _godot_object, flag, enabled);
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
	void setLineSpacing(in double line_spacing)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLineSpacing, _godot_object, line_spacing);
	}
	/**
	
	*/
	void setModulate(in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setModulate, _godot_object, modulate);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setOutlineModulate(in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutlineModulate, _godot_object, modulate);
	}
	/**
	
	*/
	void setOutlineRenderPriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOutlineRenderPriority, _godot_object, priority);
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
	void setRenderPriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRenderPriority, _godot_object, priority);
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
	void setVerticalAlignment(in long alignment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVerticalAlignment, _godot_object, alignment);
	}
	/**
	
	*/
	void setWidth(in double width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setWidth, _godot_object, width);
	}
	/**
	
	*/
	@property Label3D.AlphaCutMode alphaCut()
	{
		return getAlphaCutMode();
	}
	/// ditto
	@property void alphaCut(long v)
	{
		setAlphaCutMode(v);
	}
	/**
	
	*/
	@property double alphaScissorThreshold()
	{
		return getAlphaScissorThreshold();
	}
	/// ditto
	@property void alphaScissorThreshold(double v)
	{
		setAlphaScissorThreshold(v);
	}
	/**
	
	*/
	@property bool autowrap()
	{
		return getAutowrap();
	}
	/// ditto
	@property void autowrap(bool v)
	{
		setAutowrap(v);
	}
	/**
	
	*/
	@property SpatialMaterial.BillboardMode billboard()
	{
		return getBillboardMode();
	}
	/// ditto
	@property void billboard(long v)
	{
		setBillboardMode(v);
	}
	/**
	
	*/
	@property bool doubleSided()
	{
		return getDrawFlag(1);
	}
	/// ditto
	@property void doubleSided(bool v)
	{
		setDrawFlag(1, v);
	}
	/**
	
	*/
	@property bool fixedSize()
	{
		return getDrawFlag(3);
	}
	/// ditto
	@property void fixedSize(bool v)
	{
		setDrawFlag(3, v);
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
	@property Label3D.Align horizontalAlignment()
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
	@property double lineSpacing()
	{
		return getLineSpacing();
	}
	/// ditto
	@property void lineSpacing(double v)
	{
		setLineSpacing(v);
	}
	/**
	
	*/
	@property Color modulate()
	{
		return getModulate();
	}
	/// ditto
	@property void modulate(Color v)
	{
		setModulate(v);
	}
	/**
	
	*/
	@property bool noDepthTest()
	{
		return getDrawFlag(2);
	}
	/// ditto
	@property void noDepthTest(bool v)
	{
		setDrawFlag(2, v);
	}
	/**
	
	*/
	@property Vector2 offset()
	{
		return getOffset();
	}
	/// ditto
	@property void offset(Vector2 v)
	{
		setOffset(v);
	}
	/**
	
	*/
	@property Color outlineModulate()
	{
		return getOutlineModulate();
	}
	/// ditto
	@property void outlineModulate(Color v)
	{
		setOutlineModulate(v);
	}
	/**
	
	*/
	@property long outlineRenderPriority()
	{
		return getOutlineRenderPriority();
	}
	/// ditto
	@property void outlineRenderPriority(long v)
	{
		setOutlineRenderPriority(v);
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
	@property long renderPriority()
	{
		return getRenderPriority();
	}
	/// ditto
	@property void renderPriority(long v)
	{
		setRenderPriority(v);
	}
	/**
	
	*/
	@property bool shaded()
	{
		return getDrawFlag(0);
	}
	/// ditto
	@property void shaded(bool v)
	{
		setDrawFlag(0, v);
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
	/**
	
	*/
	@property Label3D.VAlign verticalAlignment()
	{
		return getVerticalAlignment();
	}
	/// ditto
	@property void verticalAlignment(long v)
	{
		setVerticalAlignment(v);
	}
	/**
	
	*/
	@property double width()
	{
		return getWidth();
	}
	/// ditto
	@property void width(double v)
	{
		setWidth(v);
	}
}
