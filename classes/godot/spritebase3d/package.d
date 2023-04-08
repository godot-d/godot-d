/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spritebase3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.geometryinstance;
import godot.visualinstance;
import godot.trianglemesh;
import godot.spatialmaterial;
/**

*/
@GodotBaseClass struct SpriteBase3D
{
	package(godot) enum string _GODOT_internal_name = "SpriteBase3D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_im_update") GodotMethod!(void) _imUpdate;
		@GodotName("_queue_update") GodotMethod!(void) _queueUpdate;
		@GodotName("generate_triangle_mesh") GodotMethod!(TriangleMesh) generateTriangleMesh;
		@GodotName("get_alpha_cut_mode") GodotMethod!(SpriteBase3D.AlphaCutMode) getAlphaCutMode;
		@GodotName("get_axis") GodotMethod!(Vector3.Axis) getAxis;
		@GodotName("get_billboard_mode") GodotMethod!(SpatialMaterial.BillboardMode) getBillboardMode;
		@GodotName("get_draw_flag") GodotMethod!(bool, long) getDrawFlag;
		@GodotName("get_item_rect") GodotMethod!(Rect2) getItemRect;
		@GodotName("get_modulate") GodotMethod!(Color) getModulate;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_opacity") GodotMethod!(double) getOpacity;
		@GodotName("get_pixel_size") GodotMethod!(double) getPixelSize;
		@GodotName("get_render_priority") GodotMethod!(long) getRenderPriority;
		@GodotName("is_centered") GodotMethod!(bool) isCentered;
		@GodotName("is_flipped_h") GodotMethod!(bool) isFlippedH;
		@GodotName("is_flipped_v") GodotMethod!(bool) isFlippedV;
		@GodotName("set_alpha_cut_mode") GodotMethod!(void, long) setAlphaCutMode;
		@GodotName("set_axis") GodotMethod!(void, long) setAxis;
		@GodotName("set_billboard_mode") GodotMethod!(void, long) setBillboardMode;
		@GodotName("set_centered") GodotMethod!(void, bool) setCentered;
		@GodotName("set_draw_flag") GodotMethod!(void, long, bool) setDrawFlag;
		@GodotName("set_flip_h") GodotMethod!(void, bool) setFlipH;
		@GodotName("set_flip_v") GodotMethod!(void, bool) setFlipV;
		@GodotName("set_modulate") GodotMethod!(void, Color) setModulate;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_opacity") GodotMethod!(void, double) setOpacity;
		@GodotName("set_pixel_size") GodotMethod!(void, double) setPixelSize;
		@GodotName("set_render_priority") GodotMethod!(void, long) setRenderPriority;
	}
	/// 
	pragma(inline, true) bool opEquals(in SpriteBase3D other) const
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
	/// Construct a new instance of SpriteBase3D.
	/// Note: use `memnew!SpriteBase3D` instead.
	static SpriteBase3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpriteBase3D");
		if(constructor is null) return typeof(this).init;
		return cast(SpriteBase3D)(constructor());
	}
	/// 
	enum DrawFlags : int
	{
		/** */
		flagTransparent = 0,
		/** */
		flagShaded = 1,
		/** */
		flagDoubleSided = 2,
		/** */
		flagDisableDepthTest = 3,
		/** */
		flagFixedSize = 4,
		/** */
		flagMax = 5,
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
	enum Constants : int
	{
		flagTransparent = 0,
		alphaCutDisabled = 0,
		flagShaded = 1,
		alphaCutDiscard = 1,
		alphaCutOpaquePrepass = 2,
		flagDoubleSided = 2,
		flagDisableDepthTest = 3,
		flagFixedSize = 4,
		flagMax = 5,
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
	SpriteBase3D.AlphaCutMode getAlphaCutMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpriteBase3D.AlphaCutMode)(GDNativeClassBinding.getAlphaCutMode, _godot_object);
	}
	/**
	
	*/
	Vector3.Axis getAxis() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3.Axis)(GDNativeClassBinding.getAxis, _godot_object);
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
	Rect2 getItemRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getItemRect, _godot_object);
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
	double getOpacity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getOpacity, _godot_object);
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
	bool isCentered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isCentered, _godot_object);
	}
	/**
	
	*/
	bool isFlippedH() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlippedH, _godot_object);
	}
	/**
	
	*/
	bool isFlippedV() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlippedV, _godot_object);
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
	void setAxis(in long axis)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAxis, _godot_object, axis);
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
	void setCentered(in bool centered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCentered, _godot_object, centered);
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
	void setFlipH(in bool flip_h)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipH, _godot_object, flip_h);
	}
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipV, _godot_object, flip_v);
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
	void setOpacity(in double opacity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOpacity, _godot_object, opacity);
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
	@property SpriteBase3D.AlphaCutMode alphaCut()
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
	@property Vector3.Axis axis()
	{
		return getAxis();
	}
	/// ditto
	@property void axis(long v)
	{
		setAxis(v);
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
	@property bool centered()
	{
		return isCentered();
	}
	/// ditto
	@property void centered(bool v)
	{
		setCentered(v);
	}
	/**
	
	*/
	@property bool doubleSided()
	{
		return getDrawFlag(2);
	}
	/// ditto
	@property void doubleSided(bool v)
	{
		setDrawFlag(2, v);
	}
	/**
	
	*/
	@property bool fixedSize()
	{
		return getDrawFlag(4);
	}
	/// ditto
	@property void fixedSize(bool v)
	{
		setDrawFlag(4, v);
	}
	/**
	
	*/
	@property bool flipH()
	{
		return isFlippedH();
	}
	/// ditto
	@property void flipH(bool v)
	{
		setFlipH(v);
	}
	/**
	
	*/
	@property bool flipV()
	{
		return isFlippedV();
	}
	/// ditto
	@property void flipV(bool v)
	{
		setFlipV(v);
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
		return getDrawFlag(3);
	}
	/// ditto
	@property void noDepthTest(bool v)
	{
		setDrawFlag(3, v);
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
	@property double opacity()
	{
		return getOpacity();
	}
	/// ditto
	@property void opacity(double v)
	{
		setOpacity(v);
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
		return getDrawFlag(1);
	}
	/// ditto
	@property void shaded(bool v)
	{
		setDrawFlag(1, v);
	}
	/**
	
	*/
	@property bool transparent()
	{
		return getDrawFlag(0);
	}
	/// ditto
	@property void transparent(bool v)
	{
		setDrawFlag(0, v);
	}
}
