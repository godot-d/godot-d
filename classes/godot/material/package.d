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
	package(godot) enum string _GODOT_internal_name = "Material";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_next_pass") GodotMethod!(Material) getNextPass;
		@GodotName("get_render_priority") GodotMethod!(long) getRenderPriority;
		@GodotName("set_next_pass") GodotMethod!(void, Material) setNextPass;
		@GodotName("set_render_priority") GodotMethod!(void, long) setRenderPriority;
	}
	/// 
	pragma(inline, true) bool opEquals(in Material other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) Material opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of Material.
	/// Note: use `memnew!Material` instead.
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
		Minimum value for the $(D renderPriority) parameter.
		*/
		renderPriorityMin = -128,
		/**
		Maximum value for the $(D renderPriority) parameter.
		*/
		renderPriorityMax = 127,
	}
	/**
	
	*/
	Ref!Material getNextPass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getNextPass, _godot_object);
	}
	/**
	
	*/
	long getRenderPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRenderPriority, _godot_object);
	}
	/**
	
	*/
	void setNextPass(Material next_pass)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNextPass, _godot_object, next_pass);
	}
	/**
	
	*/
	void setRenderPriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRenderPriority, _godot_object, priority);
	}
	/**
	Sets the $(D Material) to be used for the next pass. This renders the object again using a different material.
	$(B Note:) only applies to $(D SpatialMaterial)s and $(D ShaderMaterial)s with type "Spatial".
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
	/**
	Sets the render priority for transparent objects in 3D scenes. Higher priority objects will be sorted in front of lower priority objects.
	$(B Note:) this only applies to sorting of transparent objects. This will not impact how transparent objects are sorted relative to opaque objects. This is because opaque objects are not sorted, while transparent objects are sorted from back to front (subject to priority).
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
}
