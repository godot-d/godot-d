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
	static immutable string _GODOT_internal_name = "InstancePlaceholder";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in InstancePlaceholder other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InstancePlaceholder opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InstancePlaceholder _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InstancePlaceholder");
		if(constructor is null) return typeof(this).init;
		return cast(InstancePlaceholder)(constructor());
	}
	package(godot) static GodotMethod!(Dictionary, bool) _GODOT_get_stored_values;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_stored_values") = _GODOT_get_stored_values;
	/**
	
	*/
	Dictionary getStoredValues(in bool with_order = false)
	{
		_GODOT_get_stored_values.bind("InstancePlaceholder", "get_stored_values");
		return ptrcall!(Dictionary)(_GODOT_get_stored_values, _godot_object, with_order);
	}
	package(godot) static GodotMethod!(void, PackedScene) _GODOT_replace_by_instance;
	package(godot) alias _GODOT_methodBindInfo(string name : "replace_by_instance") = _GODOT_replace_by_instance;
	/**
	Replace this placeholder by the scene handed as an argument, or the original scene if no argument is given. As for all resources, the scene is loaded only if it's not loaded already. By manually loading the scene beforehand, delays caused by this function can be avoided.
	*/
	void replaceByInstance(PackedScene custom_scene = PackedScene.init)
	{
		_GODOT_replace_by_instance.bind("InstancePlaceholder", "replace_by_instance");
		ptrcall!(void)(_GODOT_replace_by_instance, _godot_object, custom_scene);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_instance_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_instance_path") = _GODOT_get_instance_path;
	/**
	Retrieve the path to the $(D PackedScene) resource file that is loaded by default when calling $(D replaceByInstance).
	*/
	String getInstancePath() const
	{
		_GODOT_get_instance_path.bind("InstancePlaceholder", "get_instance_path");
		return ptrcall!(String)(_GODOT_get_instance_path, _godot_object);
	}
}
