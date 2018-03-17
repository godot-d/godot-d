/**
Draws simple geometry from code.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.immediategeometry;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.texture;
/**
Draws simple geometry from code.

Uses a drawing mode similar to OpenGL 1.x.
*/
@GodotBaseClass struct ImmediateGeometry
{
	static immutable string _GODOT_internal_name = "ImmediateGeometry";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in ImmediateGeometry other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ImmediateGeometry opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ImmediateGeometry _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ImmediateGeometry");
		if(constructor is null) return typeof(this).init;
		return cast(ImmediateGeometry)(constructor());
	}
	package(godot) static GodotMethod!(void, long, Texture) _GODOT_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "begin") = _GODOT_begin;
	/**
	Begin drawing (And optionally pass a texture override). When done call end(). For more information on how this works, search for glBegin() glEnd() references.
	For the type of primitive, use the $(D Mesh).PRIMITIVE_* enumerations.
	*/
	void begin(in long primitive, Texture texture = Texture.init)
	{
		_GODOT_begin.bind("ImmediateGeometry", "begin");
		ptrcall!(void)(_GODOT_begin, _godot_object, primitive, texture);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_set_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_normal") = _GODOT_set_normal;
	/**
	The next vertex's normal.
	*/
	void setNormal(in Vector3 normal)
	{
		_GODOT_set_normal.bind("ImmediateGeometry", "set_normal");
		ptrcall!(void)(_GODOT_set_normal, _godot_object, normal);
	}
	package(godot) static GodotMethod!(void, Plane) _GODOT_set_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_tangent") = _GODOT_set_tangent;
	/**
	The next vertex's tangent (and binormal facing).
	*/
	void setTangent(in Plane tangent)
	{
		_GODOT_set_tangent.bind("ImmediateGeometry", "set_tangent");
		ptrcall!(void)(_GODOT_set_tangent, _godot_object, tangent);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	The current drawing color.
	*/
	void setColor(in Color color)
	{
		_GODOT_set_color.bind("ImmediateGeometry", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv") = _GODOT_set_uv;
	/**
	The next vertex's UV.
	*/
	void setUv(in Vector2 uv)
	{
		_GODOT_set_uv.bind("ImmediateGeometry", "set_uv");
		ptrcall!(void)(_GODOT_set_uv, _godot_object, uv);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_uv2;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv2") = _GODOT_set_uv2;
	/**
	The next vertex's second layer UV.
	*/
	void setUv2(in Vector2 uv)
	{
		_GODOT_set_uv2.bind("ImmediateGeometry", "set_uv2");
		ptrcall!(void)(_GODOT_set_uv2, _godot_object, uv);
	}
	package(godot) static GodotMethod!(void, Vector3) _GODOT_add_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_vertex") = _GODOT_add_vertex;
	/**
	Adds a vertex with the currently set color/uv/etc.
	*/
	void addVertex(in Vector3 position)
	{
		_GODOT_add_vertex.bind("ImmediateGeometry", "add_vertex");
		ptrcall!(void)(_GODOT_add_vertex, _godot_object, position);
	}
	package(godot) static GodotMethod!(void, long, long, double, bool) _GODOT_add_sphere;
	package(godot) alias _GODOT_methodBindInfo(string name : "add_sphere") = _GODOT_add_sphere;
	/**
	Simple helper to draw a uvsphere, with given latitudes, longitude and radius.
	*/
	void addSphere(in long lats, in long lons, in double radius, in bool add_uv = true)
	{
		_GODOT_add_sphere.bind("ImmediateGeometry", "add_sphere");
		ptrcall!(void)(_GODOT_add_sphere, _godot_object, lats, lons, radius, add_uv);
	}
	package(godot) static GodotMethod!(void) _GODOT_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "end") = _GODOT_end;
	/**
	Ends a drawing context and displays the results.
	*/
	void end()
	{
		_GODOT_end.bind("ImmediateGeometry", "end");
		ptrcall!(void)(_GODOT_end, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "clear") = _GODOT_clear;
	/**
	Clears everything that was drawn using begin/end.
	*/
	void clear()
	{
		_GODOT_clear.bind("ImmediateGeometry", "clear");
		ptrcall!(void)(_GODOT_clear, _godot_object);
	}
}
