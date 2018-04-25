/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.videostreamwebm;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.videostream;
/**

*/
@GodotBaseClass struct VideoStreamWebm
{
	static immutable string _GODOT_internal_name = "VideoStreamWebm";
public:
@nogc nothrow:
	union { godot_object _godot_object; VideoStream _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VideoStreamWebm other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VideoStreamWebm opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VideoStreamWebm _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VideoStreamWebm");
		if(constructor is null) return typeof(this).init;
		return cast(VideoStreamWebm)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, String) _GODOT_set_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_file") = _GODOT_set_file;
	/**
	
	*/
	void setFile(StringArg0)(in StringArg0 file)
	{
		_GODOT_set_file.bind("VideoStreamWebm", "set_file");
		ptrcall!(void)(_GODOT_set_file, _godot_object, file);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_file;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_file") = _GODOT_get_file;
	/**
	
	*/
	String getFile()
	{
		_GODOT_get_file.bind("VideoStreamWebm", "get_file");
		return ptrcall!(String)(_GODOT_get_file, _godot_object);
	}
	/**
	
	*/
	@property String file()
	{
		return getFile();
	}
	/// ditto
	@property void file(String v)
	{
		setFile(v);
	}
}
