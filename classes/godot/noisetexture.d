/**
$(D OpenSimplexNoise) filled texture.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.noisetexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.opensimplexnoise;
import godot.image;
import godot.resource;
import godot.reference;
/**
$(D OpenSimplexNoise) filled texture.

Uses an $(D OpenSimplexNoise) to fill the texture data. You can specify the texture size but keep in mind that larger textures will take longer to generate and seamless noise only works with square sized textures.
NoiseTexture can also generate normalmap textures.
*/
@GodotBaseClass struct NoiseTexture
{
	enum string _GODOT_internal_name = "NoiseTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_width") GodotMethod!(void, long) setWidth;
		@GodotName("set_height") GodotMethod!(void, long) setHeight;
		@GodotName("set_noise") GodotMethod!(void, OpenSimplexNoise) setNoise;
		@GodotName("get_noise") GodotMethod!(OpenSimplexNoise) getNoise;
		@GodotName("set_seamless") GodotMethod!(void, bool) setSeamless;
		@GodotName("get_seamless") GodotMethod!(bool) getSeamless;
		@GodotName("set_as_normalmap") GodotMethod!(void, bool) setAsNormalmap;
		@GodotName("is_normalmap") GodotMethod!(bool) isNormalmap;
		@GodotName("_update_texture") GodotMethod!(void) _updateTexture;
		@GodotName("_generate_texture") GodotMethod!(Image) _generateTexture;
		@GodotName("_thread_done") GodotMethod!(void, Image) _threadDone;
	}
	bool opEquals(in NoiseTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	NoiseTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static NoiseTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("NoiseTexture");
		if(constructor is null) return typeof(this).init;
		return cast(NoiseTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setWidth, _godot_object, width);
	}
	/**
	
	*/
	void setHeight(in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setHeight, _godot_object, height);
	}
	/**
	
	*/
	void setNoise(OpenSimplexNoise noise)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNoise, _godot_object, noise);
	}
	/**
	
	*/
	Ref!OpenSimplexNoise getNoise()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(OpenSimplexNoise)(_classBinding.getNoise, _godot_object);
	}
	/**
	
	*/
	void setSeamless(in bool seamless)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSeamless, _godot_object, seamless);
	}
	/**
	
	*/
	bool getSeamless()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getSeamless, _godot_object);
	}
	/**
	
	*/
	void setAsNormalmap(in bool as_normalmap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAsNormalmap, _godot_object, as_normalmap);
	}
	/**
	
	*/
	bool isNormalmap()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isNormalmap, _godot_object);
	}
	/**
	
	*/
	void _updateTexture()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_texture");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Ref!Image _generateTexture()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_generate_texture");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Image);
	}
	/**
	
	*/
	void _threadDone(Image image)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(image);
		String _GODOT_method_name = String("_thread_done");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Width of the generated texture.
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
	/**
	Height of the generated texture.
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
	Whether the texture can be tiled without visible seams or not. Seamless textures take longer to generate.
	*/
	@property bool seamless()
	{
		return getSeamless();
	}
	/// ditto
	@property void seamless(bool v)
	{
		setSeamless(v);
	}
	/**
	If true, the resulting texture contains a normal map created from the original noise interpreted as a bump map.
	*/
	@property bool asNormalmap()
	{
		return isNormalmap();
	}
	/// ditto
	@property void asNormalmap(bool v)
	{
		setAsNormalmap(v);
	}
	/**
	The $(D OpenSimplexNoise) instance used to generate the noise.
	*/
	@property OpenSimplexNoise noise()
	{
		return getNoise();
	}
	/// ditto
	@property void noise(OpenSimplexNoise v)
	{
		setNoise(v);
	}
}
