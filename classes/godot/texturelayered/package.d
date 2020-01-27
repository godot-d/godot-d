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
import godot.d.meta;
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

Base class for $(D Texture3D) and $(D TextureArray). Cannot be used directly.
*/
@GodotBaseClass struct TextureLayered
{
	enum string _GODOT_internal_name = "TextureLayered";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
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
	bool opEquals(in TextureLayered other) const { return _godot_object.ptr is other._godot_object.ptr; }
	TextureLayered opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		flagMipmaps = 1,
		/**
		
		*/
		flagRepeat = 2,
		/**
		
		*/
		flagFilter = 4,
		/**
		
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
	
	*/
	void create(in long width, in long height, in long depth, in long format, in long flags = 4)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.create, _godot_object, width, height, depth, format, flags);
	}
	/**
	
	*/
	long getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDepth, _godot_object);
	}
	/**
	
	*/
	long getFlags() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFlags, _godot_object);
	}
	/**
	
	*/
	Image.Format getFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.Format)(_classBinding.getFormat, _godot_object);
	}
	/**
	
	*/
	long getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getHeight, _godot_object);
	}
	/**
	
	*/
	Ref!Image getLayerData(in long layer) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(_classBinding.getLayerData, _godot_object, layer);
	}
	/**
	
	*/
	long getWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getWidth, _godot_object);
	}
	/**
	
	*/
	void setDataPartial(Image image, in long x_offset, in long y_offset, in long layer, in long mipmap = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDataPartial, _godot_object, image, x_offset, y_offset, layer, mipmap);
	}
	/**
	
	*/
	void setFlags(in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlags, _godot_object, flags);
	}
	/**
	
	*/
	void setLayerData(Image image, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLayerData, _godot_object, image, layer);
	}
	/**
	
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
