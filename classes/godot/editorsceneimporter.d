/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorsceneimporter;
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
import godot.node;
import godot.animation;
/**

*/
@GodotBaseClass struct EditorSceneImporter
{
	static immutable string _GODOT_internal_name = "EditorSceneImporter";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in EditorSceneImporter other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorSceneImporter opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorSceneImporter _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSceneImporter");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSceneImporter)(constructor());
	}
	/// 
	enum Constants : int
	{
		/**
		
		*/
		importScene = 1,
		/**
		
		*/
		importAnimation = 2,
		/**
		
		*/
		importAnimationDetectLoop = 4,
		/**
		
		*/
		importAnimationOptimize = 8,
		/**
		
		*/
		importAnimationForceAllTracksInAllClips = 16,
		/**
		
		*/
		importAnimationKeepValueTracks = 32,
		/**
		
		*/
		importGenerateTangentArrays = 256,
		/**
		
		*/
		importFailOnMissingDependencies = 512,
		/**
		
		*/
		importMaterialsInInstances = 1024,
		/**
		
		*/
		importUseCompression = 2048,
	}
	package(godot) static GodotMethod!(long) _GODOT__get_import_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_import_flags") = _GODOT__get_import_flags;
	/**
	
	*/
	long _getImportFlags()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_import_flags");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!long);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_extensions;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_extensions") = _GODOT__get_extensions;
	/**
	
	*/
	Array _getExtensions()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_extensions");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(Node, String, long, long) _GODOT__import_scene;
	package(godot) alias _GODOT_methodBindInfo(string name : "_import_scene") = _GODOT__import_scene;
	/**
	
	*/
	Node _importScene(StringArg0)(in StringArg0 path, in long flags, in long bake_fps)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		_GODOT_args.append(flags);
		_GODOT_args.append(bake_fps);
		String _GODOT_method_name = String("_import_scene");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Node);
	}
	package(godot) static GodotMethod!(Animation, String, long, long) _GODOT__import_animation;
	package(godot) alias _GODOT_methodBindInfo(string name : "_import_animation") = _GODOT__import_animation;
	/**
	
	*/
	Ref!Animation _importAnimation(StringArg0)(in StringArg0 path, in long flags, in long bake_fps)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(path);
		_GODOT_args.append(flags);
		_GODOT_args.append(bake_fps);
		String _GODOT_method_name = String("_import_animation");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Animation);
	}
	package(godot) static GodotMethod!(Node, String, long, long) _GODOT_import_scene_from_other_importer;
	package(godot) alias _GODOT_methodBindInfo(string name : "import_scene_from_other_importer") = _GODOT_import_scene_from_other_importer;
	/**
	
	*/
	Node importSceneFromOtherImporter(StringArg0)(in StringArg0 path, in long flags, in long bake_fps)
	{
		_GODOT_import_scene_from_other_importer.bind("EditorSceneImporter", "import_scene_from_other_importer");
		return ptrcall!(Node)(_GODOT_import_scene_from_other_importer, _godot_object, path, flags, bake_fps);
	}
	package(godot) static GodotMethod!(Animation, String, long, long) _GODOT_import_animation_from_other_importer;
	package(godot) alias _GODOT_methodBindInfo(string name : "import_animation_from_other_importer") = _GODOT_import_animation_from_other_importer;
	/**
	
	*/
	Ref!Animation importAnimationFromOtherImporter(StringArg0)(in StringArg0 path, in long flags, in long bake_fps)
	{
		_GODOT_import_animation_from_other_importer.bind("EditorSceneImporter", "import_animation_from_other_importer");
		return ptrcall!(Animation)(_GODOT_import_animation_from_other_importer, _godot_object, path, flags, bake_fps);
	}
}
