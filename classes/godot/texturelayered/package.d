/**
Base class for 3D texture types.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.texturelayered;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.reference;
import godot.image;
/**
Base class for 3D texture types.

Base class for $(D Texture3D) and $(D TextureArray). Cannot be used directly, but contains all the functions necessary for accessing and using $(D Texture3D) and $(D TextureArray). Data is set on a per-layer basis. For $(D Texture3D)s, the layer specifies the depth or Z-index, they can be treated as a bunch of 2D slices. Similarly, for $(D TextureArray)s, the layer specifies the array layer.
*/
@GodotBaseClass struct TextureLayered
{
	package(godot) enum string _GODOT_internal_name = "TextureLayered";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("create") GodotMethod!(void, long, long, long, long, long) create;
		@GodotName("get_depth") GodotMethod!(long) getDepth;
		@GodotName("get_flags") GodotMethod!(long) getFlags;
		@GodotName("get_format") GodotMethod!(Image.Format) getFormat;
		@GodotName("get_height") GodotMethod!(long) getHeight;
		@GodotName("get_layer_data") GodotMethod!(Image, long) getLayerData;
		@GodotName("get_width") GodotMethod!(long) getWidth;
		@GodotName("set_data_partial") GodotMethod!(void, Image, long, long, long, long) setDataPartial;
		@GodotName("set_flags") GodotMethod!(void, long) setFlags;
		@GodotName("set_layer_data") GodotMethod!(void, Image, long) setLayerData;
	}
	/// 
	pragma(inline, true) bool opEquals(in TextureLayered other) const
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
	/// Construct a new instance of TextureLayered.
	/// Note: use `memnew!TextureLayered` instead.
	static TextureLayered _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TextureLayered");
		if(constructor is null) return typeof(this).init;
		return cast(TextureLayered)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Flags : int
	{
		/**
		Texture will generate mipmaps on creation.
		*/
		flagMipmaps = 1,
		/**
		Texture will repeat when UV used is outside the 0-1 range.
		*/
		flagRepeat = 2,
		/**
		Use filtering when reading from texture. Filtering smooths out pixels. Turning filtering off is slightly faster and more appropriate when you need access to individual pixels.
		*/
		flagFilter = 4,
		/**
		Equivalent to $(D constant FLAG_FILTER).
		*/
		flagsDefault = 4,
	}
	/// 
	enum Constants : int
	{
		flagMipmaps = 1,
		flagRepeat = 2,
		flagFilter = 4,
		flagsDefault = 4,
	}
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	void _setData(in Dictionary data)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(data);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Creates the $(D Texture3D) or $(D TextureArray) with specified `width`, `height`, and `depth`. See $(D Image.format) for `format` options. See $(D flags) enumerator for `flags` options.
	*/
	void create(in long width, in long height, in long depth, in long format, in long flags = 4)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.create, _godot_object, width, height, depth, format, flags);
	}
	/**
	Returns the depth of the texture. Depth is the 3rd dimension (typically Z-axis).
	*/
	long getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getDepth, _godot_object);
	}
	/**
	
	*/
	long getFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getFlags, _godot_object);
	}
	/**
	Returns the current format being used by this texture. See $(D Image.format) for details.
	*/
	Image.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.Format)(GDNativeClassBinding.getFormat, _godot_object);
	}
	/**
	Returns the height of the texture. Height is typically represented by the Y-axis.
	*/
	long getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getHeight, _godot_object);
	}
	/**
	Returns an $(D Image) resource with the data from specified `layer`.
	*/
	Ref!Image getLayerData(in long layer) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.getLayerData, _godot_object, layer);
	}
	/**
	Returns the width of the texture. Width is typically represented by the X-axis.
	*/
	long getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getWidth, _godot_object);
	}
	/**
	Partially sets the data for a specified `layer` by overwriting using the data of the specified `image`. `x_offset` and `y_offset` determine where the $(D Image) is "stamped" over the texture. The `image` must fit within the texture.
	*/
	void setDataPartial(Image image, in long x_offset, in long y_offset, in long layer, in long mipmap = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDataPartial, _godot_object, image, x_offset, y_offset, layer, mipmap);
	}
	/**
	
	*/
	void setFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlags, _godot_object, flags);
	}
	/**
	Sets the data for the specified layer. Data takes the form of a 2-dimensional $(D Image) resource.
	*/
	void setLayerData(Image image, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLayerData, _godot_object, image, layer);
	}
	/**
	Returns a dictionary with all the data used by this texture.
	*/
	@property Dictionary data()
	{
		return _getData();
	}
	/// ditto
	@property void data(Dictionary v)
	{
		_setData(v);
	}
	/**
	Specifies which $(D flags) apply to this texture.
	*/
	@property long flags()
	{
		return getFlags();
	}
	/// ditto
	@property void flags(long v)
	{
		setFlags(v);
	}
}
