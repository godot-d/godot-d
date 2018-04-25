/**
Abstract base $(D Resource) for coloring and shading geometry.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.material;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Abstract base $(D Resource) for coloring and shading geometry.

Material is a base $(D Resource) used for coloring and shading geometry. All materials inherit from it and almost all $(D VisualInstance) derived nodes carry a Material. A few flags and parameters are shared between all material types and are configured here.
*/
@GodotBaseClass struct Material
{
	static immutable string _GODOT_internal_name = "Material";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Material other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Material opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Material _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Material");
		if(constructor is null) return typeof(this).init;
		return cast(Material)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		
		*/
		renderPriorityMin = -128,
		/**
		
		*/
		renderPriorityMax = 127,
	}
	package(godot) static GodotMethod!(void, Material) _GODOT_set_next_pass;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_next_pass") = _GODOT_set_next_pass;
	/**
	
	*/
	void setNextPass(Material next_pass)
	{
		_GODOT_set_next_pass.bind("Material", "set_next_pass");
		ptrcall!(void)(_GODOT_set_next_pass, _godot_object, next_pass);
	}
	package(godot) static GodotMethod!(Material) _GODOT_get_next_pass;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_next_pass") = _GODOT_get_next_pass;
	/**
	
	*/
	Ref!Material getNextPass() const
	{
		_GODOT_get_next_pass.bind("Material", "get_next_pass");
		return ptrcall!(Material)(_GODOT_get_next_pass, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_render_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_render_priority") = _GODOT_set_render_priority;
	/**
	
	*/
	void setRenderPriority(in long priority)
	{
		_GODOT_set_render_priority.bind("Material", "set_render_priority");
		ptrcall!(void)(_GODOT_set_render_priority, _godot_object, priority);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_render_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_render_priority") = _GODOT_get_render_priority;
	/**
	
	*/
	long getRenderPriority() const
	{
		_GODOT_get_render_priority.bind("Material", "get_render_priority");
		return ptrcall!(long)(_GODOT_get_render_priority, _godot_object);
	}
	/**
	
	*/
	@property long renderPriority()
	{
		return getRenderPriority();
	}
	/// ditto
	@property void renderPriority(long v)
	{
		setRenderPriority(v);
	}
	/**
	
	*/
	@property Material nextPass()
	{
		return getNextPass();
	}
	/// ditto
	@property void nextPass(Material v)
	{
		setNextPass(v);
	}
}
