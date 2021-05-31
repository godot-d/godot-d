/**
FBX 3D asset importer.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorsceneimporterfbx;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.editorsceneimporter;
import godot.reference;
/**
FBX 3D asset importer.

This is an FBX 3D asset importer with full support for most FBX features.
If exporting a FBX scene from Autodesk Maya, use these FBX export settings:


- Smoothing Groups
- Smooth Mesh
- Triangluate (for meshes with blend shapes)
- Bake Animation
- Resample All
- Deformed Models
- Skins
- Blend Shapes
- Curve Filters
- Constant Key Reducer
- Auto Tangents Only
- *Do not check* Constraints (as it will break the file)
- Can check Embed Media (embeds textures into the exported FBX file)
  - Note that when importing embedded media, the texture and mesh will be a single immutable file.
  - You will have to re-export then re-import the FBX if the texture has changed.
- Units: Centimeters
- Up Axis: Y
- Binary format in FBX 2017


*/
@GodotBaseClass struct EditorSceneImporterFBX
{
	package(godot) enum string _GODOT_internal_name = "EditorSceneImporterFBX";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ EditorSceneImporter _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorSceneImporterFBX other) const
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
	/// Construct a new instance of EditorSceneImporterFBX.
	/// Note: use `memnew!EditorSceneImporterFBX` instead.
	static EditorSceneImporterFBX _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSceneImporterFBX");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSceneImporterFBX)(constructor());
	}
	@disable new(size_t s);
}
