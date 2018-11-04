/**
A .stex texture.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.streamtexture;
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
import godot.resource;
import godot.reference;
/**
A .stex texture.

A texture that is loaded from a .stex file.
*/
@GodotBaseClass struct StreamTexture
{
	enum string _GODOT_internal_name = "StreamTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("load") GodotMethod!(GodotError, String) load;
		@GodotName("get_load_path") GodotMethod!(String) getLoadPath;
	}
	bool opEquals(in StreamTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	StreamTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static StreamTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StreamTexture");
		if(constructor is null) return typeof(this).init;
		return cast(StreamTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	GodotError load(in String path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.load, _godot_object, path);
	}
	/**
	
	*/
	String getLoadPath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLoadPath, _godot_object);
	}
	/**
	The StreamTexture's filepath to a .stex file.
	*/
	@property String loadPath()
	{
		return getLoadPath();
	}
	/// ditto
	@property void loadPath(String v)
	{
		load(v);
	}
}
