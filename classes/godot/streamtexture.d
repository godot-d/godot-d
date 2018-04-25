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
/**
A .stex texture.

A texture that is loaded from a .stex file.
*/
@GodotBaseClass struct StreamTexture
{
	static immutable string _GODOT_internal_name = "StreamTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
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
	package(godot) static GodotMethod!(GodotError, String) _GODOT_load;
	package(godot) alias _GODOT_methodBindInfo(string name : "load") = _GODOT_load;
	/**
	
	*/
	GodotError load(StringArg0)(in StringArg0 path)
	{
		_GODOT_load.bind("StreamTexture", "load");
		return ptrcall!(GodotError)(_GODOT_load, _godot_object, path);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_load_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_load_path") = _GODOT_get_load_path;
	/**
	
	*/
	String getLoadPath() const
	{
		_GODOT_get_load_path.bind("StreamTexture", "get_load_path");
		return ptrcall!(String)(_GODOT_get_load_path, _godot_object);
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
