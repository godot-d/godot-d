/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorresourcepreviewgenerator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.reference;
import godot.texture;
import godot.resource;
/**

*/
@GodotBaseClass struct EditorResourcePreviewGenerator
{
	package(godot) enum string _GODOT_internal_name = "EditorResourcePreviewGenerator";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("can_generate_small_preview") GodotMethod!(bool) canGenerateSmallPreview;
		@GodotName("generate") GodotMethod!(Texture, Resource, Vector2) generate;
		@GodotName("generate_from_path") GodotMethod!(Texture, String, Vector2) generateFromPath;
		@GodotName("generate_small_preview_automatically") GodotMethod!(bool) generateSmallPreviewAutomatically;
		@GodotName("handles") GodotMethod!(bool, String) handles;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorResourcePreviewGenerator other) const
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
	/// Construct a new instance of EditorResourcePreviewGenerator.
	/// Note: use `memnew!EditorResourcePreviewGenerator` instead.
	static EditorResourcePreviewGenerator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorResourcePreviewGenerator");
		if(constructor is null) return typeof(this).init;
		return cast(EditorResourcePreviewGenerator)(constructor());
	}
	/**
	
	*/
	bool canGenerateSmallPreview()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("can_generate_small_preview");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	Ref!Texture generate(Resource from, in Vector2 size)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(from);
		_GODOT_args.append(size);
		String _GODOT_method_name = String("generate");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Texture);
	}
	/**
	
	*/
	Ref!Texture generateFromPath(in String path, in Vector2 size)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(path);
		_GODOT_args.append(size);
		String _GODOT_method_name = String("generate_from_path");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Texture);
	}
	/**
	
	*/
	bool generateSmallPreviewAutomatically()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("generate_small_preview_automatically");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool handles(in String type)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(type);
		String _GODOT_method_name = String("handles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
}
