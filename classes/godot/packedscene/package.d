/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.packedscene;
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
import godot.resource;
import godot.scenestate;
import godot.node;
/**

*/
@GodotBaseClass struct PackedScene
{
	package(godot) enum string _GODOT_internal_name = "PackedScene";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_bundled_scene") GodotMethod!(Dictionary) _getBundledScene;
		@GodotName("_set_bundled_scene") GodotMethod!(void, Dictionary) _setBundledScene;
		@GodotName("can_instance") GodotMethod!(bool) canInstance;
		@GodotName("get_state") GodotMethod!(SceneState) getState;
		@GodotName("instance") GodotMethod!(Node, long) instance;
		@GodotName("pack") GodotMethod!(GodotError, Node) pack;
	}
	/// 
	pragma(inline, true) bool opEquals(in PackedScene other) const
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
	/// Construct a new instance of PackedScene.
	/// Note: use `memnew!PackedScene` instead.
	static PackedScene _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PackedScene");
		if(constructor is null) return typeof(this).init;
		return cast(PackedScene)(constructor());
	}
	/// 
	enum GenEditState : int
	{
		/** */
		genEditStateDisabled = 0,
		/** */
		genEditStateInstance = 1,
		/** */
		genEditStateMain = 2,
		/** */
		genEditStateMainInherited = 3,
	}
	/// 
	enum Constants : int
	{
		genEditStateDisabled = 0,
		genEditStateInstance = 1,
		genEditStateMain = 2,
		genEditStateMainInherited = 3,
	}
	/**
	
	*/
	Dictionary _getBundledScene() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_bundled_scene");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	void _setBundledScene(in Dictionary arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_bundled_scene");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	bool canInstance() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.canInstance, _godot_object);
	}
	/**
	
	*/
	Ref!SceneState getState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(SceneState)(GDNativeClassBinding.getState, _godot_object);
	}
	/**
	
	*/
	Node instance(in long edit_state = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.instance, _godot_object, edit_state);
	}
	/**
	
	*/
	GodotError pack(Node path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.pack, _godot_object, path);
	}
	/**
	
	*/
	@property Dictionary _bundled()
	{
		return _getBundledScene();
	}
	/// ditto
	@property void _bundled(Dictionary v)
	{
		_setBundledScene(v);
	}
}
