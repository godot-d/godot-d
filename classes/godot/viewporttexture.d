/**
Texture which displays the content of a $(D Viewport).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.viewporttexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.resource;
import godot.reference;
/**
Texture which displays the content of a $(D Viewport).

Displays the content of a $(D Viewport) node as a dynamic $(D Texture). This can be used to mix controls, 2D, and 3D elements in the same scene.
To create a ViewportTexture in code, use the $(D Viewport.getTexture) method on the target viewport.
*/
@GodotBaseClass struct ViewportTexture
{
	enum string _GODOT_internal_name = "ViewportTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_viewport_path_in_scene") GodotMethod!(void, NodePath) setViewportPathInScene;
		@GodotName("get_viewport_path_in_scene") GodotMethod!(NodePath) getViewportPathInScene;
	}
	bool opEquals(in ViewportTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ViewportTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ViewportTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ViewportTexture");
		if(constructor is null) return typeof(this).init;
		return cast(ViewportTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setViewportPathInScene(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setViewportPathInScene, _godot_object, path);
	}
	/**
	
	*/
	NodePath getViewportPathInScene() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getViewportPathInScene, _godot_object);
	}
	/**
	The path to the $(D Viewport) node to display. This is relative to the scene root, not to the node which uses the texture.
	*/
	@property NodePath viewportPath()
	{
		return getViewportPathInScene();
	}
	/// ditto
	@property void viewportPath(NodePath v)
	{
		setViewportPathInScene(v);
	}
}
