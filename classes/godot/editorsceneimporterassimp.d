/**
FBX 3D asset importer based on $(D url=http://assimp.org/)Assimp$(D /url).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorsceneimporterassimp;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.editorsceneimporter;
import godot.reference;
/**
FBX 3D asset importer based on $(D url=http://assimp.org/)Assimp$(D /url).

This is an FBX 3D asset importer based on $(D url=http://assimp.org/)Assimp$(D /url). It currently has many known limitations and works best with static meshes. Most animated meshes won't import correctly.
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
@GodotBaseClass struct EditorSceneImporterAssimp
{
	package(godot) enum string _GODOT_internal_name = "EditorSceneImporterAssimp";
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
	pragma(inline, true) bool opEquals(in EditorSceneImporterAssimp other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) EditorSceneImporterAssimp opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of EditorSceneImporterAssimp.
	/// Note: use `memnew!EditorSceneImporterAssimp` instead.
	static EditorSceneImporterAssimp _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSceneImporterAssimp");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSceneImporterAssimp)(constructor());
	}
	@disable new(size_t s);
}
