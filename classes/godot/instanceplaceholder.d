/**
Placeholder for the root $(D Node) of a $(D PackedScene).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.instanceplaceholder;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.node;
import godot.packedscene;
/**
Placeholder for the root $(D Node) of a $(D PackedScene).

Turning on the option $(B Load As Placeholder) for an instanced scene in the editor causes it to be replaced by an InstancePlaceholder when running the game. This makes it possible to delay actually loading the scene until calling $(D replaceByInstance). This is useful to avoid loading large scenes all at once by loading parts of it selectively.
The InstancePlaceholder does not have a transform. This causes any child nodes to be positioned relatively to the Viewport from point (0,0), rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.
*/
@GodotBaseClass struct InstancePlaceholder
{
	package(godot) enum string _GODOT_internal_name = "InstancePlaceholder";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("create_instance") GodotMethod!(Node, bool, PackedScene) createInstance;
		@GodotName("get_instance_path") GodotMethod!(String) getInstancePath;
		@GodotName("get_stored_values") GodotMethod!(Dictionary, bool) getStoredValues;
		@GodotName("replace_by_instance") GodotMethod!(void, PackedScene) replaceByInstance;
	}
	/// 
	pragma(inline, true) bool opEquals(in InstancePlaceholder other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) InstancePlaceholder opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of InstancePlaceholder.
	/// Note: use `memnew!InstancePlaceholder` instead.
	static InstancePlaceholder _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InstancePlaceholder");
		if(constructor is null) return typeof(this).init;
		return cast(InstancePlaceholder)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Node createInstance(in bool replace = false, PackedScene custom_scene = PackedScene.init)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Node)(GDNativeClassBinding.createInstance, _godot_object, replace, custom_scene);
	}
	/**
	Gets the path to the $(D PackedScene) resource file that is loaded by default when calling $(D replaceByInstance).
	*/
	String getInstancePath() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getInstancePath, _godot_object);
	}
	/**
	
	*/
	Dictionary getStoredValues(in bool with_order = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getStoredValues, _godot_object, with_order);
	}
	/**
	Replaces this placeholder by the scene handed as an argument, or the original scene if no argument is given. As for all resources, the scene is loaded only if it's not loaded already. By manually loading the scene beforehand, delays caused by this function can be avoided.
	*/
	void replaceByInstance(PackedScene custom_scene = PackedScene.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.replaceByInstance, _godot_object, custom_scene);
	}
}
