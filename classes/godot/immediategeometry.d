/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.immediategeometry;
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
import godot.geometryinstance;
import godot.visualinstance;
import godot.texture;
/**

*/
@GodotBaseClass struct ImmediateGeometry
{
	package(godot) enum string _GODOT_internal_name = "ImmediateGeometry";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("add_sphere") GodotMethod!(void, long, long, double, bool) addSphere;
		@GodotName("add_vertex") GodotMethod!(void, Vector3) addVertex;
		@GodotName("begin") GodotMethod!(void, long, Texture) begin;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("end") GodotMethod!(void) end;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_normal") GodotMethod!(void, Vector3) setNormal;
		@GodotName("set_tangent") GodotMethod!(void, Plane) setTangent;
		@GodotName("set_uv") GodotMethod!(void, Vector2) setUv;
		@GodotName("set_uv2") GodotMethod!(void, Vector2) setUv2;
	}
	/// 
	pragma(inline, true) bool opEquals(in ImmediateGeometry other) const
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
	/// Construct a new instance of ImmediateGeometry.
	/// Note: use `memnew!ImmediateGeometry` instead.
	static ImmediateGeometry _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ImmediateGeometry");
		if(constructor is null) return typeof(this).init;
		return cast(ImmediateGeometry)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void addSphere(in long lats, in long lons, in double radius, in bool add_uv = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addSphere, _godot_object, lats, lons, radius, add_uv);
	}
	/**
	
	*/
	void addVertex(in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addVertex, _godot_object, position);
	}
	/**
	
	*/
	void begin(in long primitive, Texture texture = Texture.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.begin, _godot_object, primitive, texture);
	}
	/**
	
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	
	*/
	void end()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.end, _godot_object);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	void setNormal(in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormal, _godot_object, normal);
	}
	/**
	
	*/
	void setTangent(in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTangent, _godot_object, tangent);
	}
	/**
	
	*/
	void setUv(in Vector2 uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv, _godot_object, uv);
	}
	/**
	
	*/
	void setUv2(in Vector2 uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv2, _godot_object, uv);
	}
}
