/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editornavigationmeshgenerator;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.navigationmesh;
import godot.node;
/**

*/
@GodotBaseClass struct EditorNavigationMeshGenerator
{
	package(godot) enum string _GODOT_internal_name = "EditorNavigationMeshGenerator";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("bake") GodotMethod!(void, NavigationMesh, Node) bake;
		@GodotName("clear") GodotMethod!(void, NavigationMesh) clear;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorNavigationMeshGenerator other) const
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
	/// Construct a new instance of EditorNavigationMeshGenerator.
	/// Note: use `memnew!EditorNavigationMeshGenerator` instead.
	static EditorNavigationMeshGenerator _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorNavigationMeshGenerator");
		if(constructor is null) return typeof(this).init;
		return cast(EditorNavigationMeshGenerator)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void bake(NavigationMesh nav_mesh, Node root_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.bake, _godot_object, nav_mesh, root_node);
	}
	/**
	
	*/
	void clear(NavigationMesh nav_mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object, nav_mesh);
	}
}
