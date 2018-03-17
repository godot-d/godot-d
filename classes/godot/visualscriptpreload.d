/**
Creates a new $(D Resource) or loads one from the filesystem.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptpreload;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
import godot.resource;
/**
Creates a new $(D Resource) or loads one from the filesystem.

$(B Input Ports:)
none
$(B Output Ports:)
- Data (object): `res`
*/
@GodotBaseClass struct VisualScriptPreload
{
	static immutable string _GODOT_internal_name = "VisualScriptPreload";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptPreload other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptPreload opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptPreload _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptPreload");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptPreload)(constructor());
	}
	package(godot) static GodotMethod!(void, Resource) _GODOT_set_preload;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_preload") = _GODOT_set_preload;
	/**
	
	*/
	void setPreload(Resource resource)
	{
		_GODOT_set_preload.bind("VisualScriptPreload", "set_preload");
		ptrcall!(void)(_GODOT_set_preload, _godot_object, resource);
	}
	package(godot) static GodotMethod!(Resource) _GODOT_get_preload;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_preload") = _GODOT_get_preload;
	/**
	
	*/
	Ref!Resource getPreload() const
	{
		_GODOT_get_preload.bind("VisualScriptPreload", "get_preload");
		return ptrcall!(Resource)(_GODOT_get_preload, _godot_object);
	}
	/**
	The $(D Resource) to load.
	*/
	@property Resource resource()
	{
		return getPreload();
	}
	/// ditto
	@property void resource(Resource v)
	{
		setPreload(v);
	}
}
