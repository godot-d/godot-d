/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.resourceformatloader;
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
import godot.reference;
/**

*/
@GodotBaseClass struct ResourceFormatLoader
{
	package(godot) enum string _GODOT_internal_name = "ResourceFormatLoader";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_dependencies") GodotMethod!(void, String, String) getDependencies;
		@GodotName("get_recognized_extensions") GodotMethod!(PoolStringArray) getRecognizedExtensions;
		@GodotName("get_resource_type") GodotMethod!(String, String) getResourceType;
		@GodotName("handles_type") GodotMethod!(bool, String) handlesType;
		@GodotName("load") GodotMethod!(Variant, String, String) load;
		@GodotName("rename_dependencies") GodotMethod!(long, String, String) renameDependencies;
	}
	/// 
	pragma(inline, true) bool opEquals(in ResourceFormatLoader other) const
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
	/// Construct a new instance of ResourceFormatLoader.
	/// Note: use `memnew!ResourceFormatLoader` instead.
	static ResourceFormatLoader _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ResourceFormatLoader");
		if(constructor is null) return typeof(this).init;
		return cast(ResourceFormatLoader)(constructor());
	}
	/**
	
	*/
	void getDependencies(in String path, in String add_types)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		_GODOT_args.append(add_types);
		String _GODOT_method_name = String("get_dependencies");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	PoolStringArray getRecognizedExtensions()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_recognized_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolStringArray);
	}
	/**
	
	*/
	String getResourceType(in String path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		String _GODOT_method_name = String("get_resource_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	bool handlesType(in String typename)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(typename);
		String _GODOT_method_name = String("handles_type");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	Variant load(in String path, in String original_path)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		_GODOT_args.append(original_path);
		String _GODOT_method_name = String("load");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	long renameDependencies(in String path, in String renames)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		_GODOT_args.append(renames);
		String _GODOT_method_name = String("rename_dependencies");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
}
