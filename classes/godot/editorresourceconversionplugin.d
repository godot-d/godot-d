/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorresourceconversionplugin;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.resource;
/**

*/
@GodotBaseClass struct EditorResourceConversionPlugin
{
	static immutable string _GODOT_internal_name = "EditorResourceConversionPlugin";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorResourceConversionPlugin other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorResourceConversionPlugin opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorResourceConversionPlugin _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorResourceConversionPlugin");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourceConversionPlugin)(constructor());
	}
	package(godot) static GodotMethod!(Resource, Resource) _GODOT__convert;
	package(godot) alias _GODOT_methodBindInfo(string name : "_convert") = _GODOT__convert;
	/**
	
	*/
	Ref!Resource _convert(Resource resource)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(resource);
		String _GODOT_method_name = String("_convert");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Resource);
	}
	package(godot) static GodotMethod!(String) _GODOT__converts_to;
	package(godot) alias _GODOT_methodBindInfo(string name : "_converts_to") = _GODOT__converts_to;
	/**
	
	*/
	String _convertsTo()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_converts_to");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
}
