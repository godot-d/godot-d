/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packedscenegltf;
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
import godot.packedscene;
import godot.resource;
import godot.node;
import godot.gltfstate;
/**

*/
@GodotBaseClass struct PackedSceneGLTF
{
	package(godot) enum string _GODOT_internal_name = "PackedSceneGLTF";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PackedScene _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("export_gltf") GodotMethod!(GodotError, Node, String, long, double) exportGltf;
		@GodotName("import_gltf_scene") GodotMethod!(Node, String, long, double, long, GLTFState) importGltfScene;
		@GodotName("pack_gltf") GodotMethod!(void, String, long, double, long, GLTFState) packGltf;
	}
	/// 
	pragma(inline, true) bool opEquals(in PackedSceneGLTF other) const
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
	/// Construct a new instance of PackedSceneGLTF.
	/// Note: use `memnew!PackedSceneGLTF` instead.
	static PackedSceneGLTF _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PackedSceneGLTF");
		if(constructor is null) return typeof(this).init;
		return cast(PackedSceneGLTF)(constructor());
	}
	/**
	
	*/
	GodotError exportGltf(Node node, in String path, in long flags = 0, in double bake_fps = 1000)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.exportGltf, _godot_object, node, path, flags, bake_fps);
	}
	/**
	
	*/
	Node importGltfScene(in String path, in long flags = 0, in double bake_fps = 1000, in long compress_flags = 2194432, GLTFState state = GLTFState.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.importGltfScene, _godot_object, path, flags, bake_fps, compress_flags, state);
	}
	/**
	
	*/
	void packGltf(in String path, in long flags = 0, in double bake_fps = 1000, in long compress_flags = 2194432, GLTFState state = GLTFState.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.packGltf, _godot_object, path, flags, bake_fps, compress_flags, state);
	}
}
