/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.texturerect;
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
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.texture;
/**

*/
@GodotBaseClass struct TextureRect
{
	package(godot) enum string _GODOT_internal_name = "TextureRect";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_texture_changed") GodotMethod!(void) _textureChanged;
		@GodotName("get_stretch_mode") GodotMethod!(TextureRect.StretchMode) getStretchMode;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("has_expand") GodotMethod!(bool) hasExpand;
		@GodotName("is_flipped_h") GodotMethod!(bool) isFlippedH;
		@GodotName("is_flipped_v") GodotMethod!(bool) isFlippedV;
		@GodotName("set_expand") GodotMethod!(void, bool) setExpand;
		@GodotName("set_flip_h") GodotMethod!(void, bool) setFlipH;
		@GodotName("set_flip_v") GodotMethod!(void, bool) setFlipV;
		@GodotName("set_stretch_mode") GodotMethod!(void, long) setStretchMode;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
	}
	/// 
	pragma(inline, true) bool opEquals(in TextureRect other) const
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
	/// Construct a new instance of TextureRect.
	/// Note: use `memnew!TextureRect` instead.
	static TextureRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextureRect");
		if(constructor is null) return typeof(this).init;
		return cast(TextureRect)(constructor());
	}
	/// 
	enum StretchMode : int
	{
		/** */
		stretchScaleOnExpand = 0,
		/** */
		stretchScale = 1,
		/** */
		stretchTile = 2,
		/** */
		stretchKeep = 3,
		/** */
		stretchKeepCentered = 4,
		/** */
		stretchKeepAspect = 5,
		/** */
		stretchKeepAspectCentered = 6,
		/** */
		stretchKeepAspectCovered = 7,
	}
	/// 
	enum Constants : int
	{
		stretchScaleOnExpand = 0,
		stretchScale = 1,
		stretchTile = 2,
		stretchKeep = 3,
		stretchKeepCentered = 4,
		stretchKeepAspect = 5,
		stretchKeepAspectCentered = 6,
		stretchKeepAspectCovered = 7,
	}
	/**
	
	*/
	void _textureChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_texture_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	TextureRect.StretchMode getStretchMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(TextureRect.StretchMode)(GDNativeClassBinding.getStretchMode, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	bool hasExpand() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasExpand, _godot_object);
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
	void setExpand(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExpand, _godot_object, enable);
	}
	/**
	
	*/
	void setFlipH(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipH, _godot_object, enable);
	}
	/**
	
	*/
	void setFlipV(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlipV, _godot_object, enable);
	}
	/**
	
	*/
	void setStretchMode(in long stretch_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setStretchMode, _godot_object, stretch_mode);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	@property bool expand()
	{
		return hasExpand();
	}
	/// ditto
	@property void expand(bool v)
	{
		setExpand(v);
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
	@property TextureRect.StretchMode stretchMode()
	{
		return getStretchMode();
	}
	/// ditto
	@property void stretchMode(long v)
	{
		setStretchMode(v);
	}
	/**
	
	*/
	@property Texture texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Texture v)
	{
		setTexture(v);
	}
}
