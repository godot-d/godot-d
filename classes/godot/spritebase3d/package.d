/**
2D sprite node in 3D environment.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.spritebase3d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.geometryinstance;
import godot.visualinstance;
import godot.trianglemesh;
import godot.spatialmaterial;
/**
2D sprite node in 3D environment.

A node that displays 2D texture information in a 3D environment.
*/
@GodotBaseClass struct SpriteBase3D
{
	enum string _GODOT_internal_name = "SpriteBase3D";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
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
	}
	bool opEquals(in SpriteBase3D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SpriteBase3D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SpriteBase3D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SpriteBase3D");
		if(constructor is null) return typeof(this).init;
		return cast(SpriteBase3D)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum DrawFlags : int
	{
		/**
		If set, the texture's transparency and the opacity are used to make those parts of the sprite invisible.
		*/
		flagTransparent = 0,
		/**
		If set, lights in the environment affect the sprite.
		*/
		flagShaded = 1,
		/**
		If set, texture can be seen from the back as well, if not, it is invisible when looking at it from behind.
		*/
		flagDoubleSided = 2,
		/**
		Represents the size of the $(D drawflags) enum.
		*/
		flagMax = 3,
	}
	/// 
	enum AlphaCutMode : int
	{
		/**
		
		*/
		alphaCutDisabled = 0,
		/**
		
		*/
		alphaCutDiscard = 1,
		/**
		
		*/
		alphaCutOpaquePrepass = 2,
	}
	/// 
	enum Constants : int
	{
		flagTransparent = 0,
		alphaCutDisabled = 0,
		alphaCutDiscard = 1,
		flagShaded = 1,
		alphaCutOpaquePrepass = 2,
		flagDoubleSided = 2,
		flagMax = 3,
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
		return ptrcall!(TriangleMesh)(_classBinding.generateTriangleMesh, _godot_object);
	}
	/**
	
	*/
	SpriteBase3D.AlphaCutMode getAlphaCutMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpriteBase3D.AlphaCutMode)(_classBinding.getAlphaCutMode, _godot_object);
	}
	/**
	
	*/
	Vector3.Axis getAxis() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3.Axis)(_classBinding.getAxis, _godot_object);
	}
	/**
	
	*/
	SpatialMaterial.BillboardMode getBillboardMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SpatialMaterial.BillboardMode)(_classBinding.getBillboardMode, _godot_object);
	}
	/**
	
	*/
	bool getDrawFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getDrawFlag, _godot_object, flag);
	}
	/**
	
	*/
	Rect2 getItemRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getItemRect, _godot_object);
	}
	/**
	
	*/
	Color getModulate() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getModulate, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	double getOpacity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getOpacity, _godot_object);
	}
	/**
	
	*/
	double getPixelSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPixelSize, _godot_object);
	}
	/**
	
	*/
	bool isCentered() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCentered, _godot_object);
	}
	/**
	
	*/
	bool isFlippedH() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlippedH, _godot_object);
	}
	/**
	
	*/
	bool isFlippedV() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFlippedV, _godot_object);
	}
	/**
	
	*/
	void setAlphaCutMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAlphaCutMode, _godot_object, mode);
	}
	/**
	
	*/
	void setAxis(in long axis)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAxis, _godot_object, axis);
	}
	/**
	
	*/
	void setBillboardMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBillboardMode, _godot_object, mode);
	}
	/**
	
	*/
	void setCentered(in bool centered)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCentered, _godot_object, centered);
	}
	/**
	
	*/
	void setDrawFlag(in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawFlag, _godot_object, flag, enabled);
	}
	/**
	
	*/
	void setFlipH(in bool flip_h)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlipH, _godot_object, flip_h);
	}
	/**
	
	*/
	void setFlipV(in bool flip_v)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlipV, _godot_object, flip_v);
	}
	/**
	
	*/
	void setModulate(in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setModulate, _godot_object, modulate);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setOpacity(in double opacity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOpacity, _godot_object, opacity);
	}
	/**
	
	*/
	void setPixelSize(in double pixel_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPixelSize, _godot_object, pixel_size);
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
	The direction in which the front of the texture faces.
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
	If `true`, texture will be centered.
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
	If `true`, texture can be seen from the back as well, if `false`, it is invisible when looking at it from behind.
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
	If `true`, texture is flipped horizontally.
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
	If `true`, texture is flipped vertically.
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
	A color value that gets multiplied on, could be used for mood-coloring or to simulate the color of light.
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
	The texture's drawing offset.
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
	The objects visibility on a scale from `0` fully invisible to `1` fully visible.
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
	The size of one pixel's width on the sprite to scale it in 3D.
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
	If `true`, the $(D Light) in the $(D Environment) has effects on the sprite.
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
	If `true`, the texture's transparency and the opacity are used to make those parts of the sprite invisible.
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
