/**
A 2D polygon.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.polygon2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.texture;
/**
A 2D polygon.

A Polygon2D is defined by a set of points. Each point is connected to the next, with the final point being connected to the first, resulting in a closed polygon. Polygon2Ds can be filled with color (solid or gradient) or filled with a given texture.
*/
@GodotBaseClass struct Polygon2D
{
	static immutable string _GODOT_internal_name = "Polygon2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Polygon2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Polygon2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Polygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Polygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(Polygon2D)(constructor());
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_polygon") = _GODOT_set_polygon;
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		_GODOT_set_polygon.bind("Polygon2D", "set_polygon");
		ptrcall!(void)(_GODOT_set_polygon, _godot_object, polygon);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_polygon") = _GODOT_get_polygon;
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		_GODOT_get_polygon.bind("Polygon2D", "get_polygon");
		return ptrcall!(PoolVector2Array)(_GODOT_get_polygon, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolVector2Array) _GODOT_set_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_uv") = _GODOT_set_uv;
	/**
	
	*/
	void setUv(in PoolVector2Array uv)
	{
		_GODOT_set_uv.bind("Polygon2D", "set_uv");
		ptrcall!(void)(_GODOT_set_uv, _godot_object, uv);
	}
	package(godot) static GodotMethod!(PoolVector2Array) _GODOT_get_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_uv") = _GODOT_get_uv;
	/**
	
	*/
	PoolVector2Array getUv() const
	{
		_GODOT_get_uv.bind("Polygon2D", "get_uv");
		return ptrcall!(PoolVector2Array)(_GODOT_get_uv, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	
	*/
	void setColor(in Color color)
	{
		_GODOT_set_color.bind("Polygon2D", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	
	*/
	Color getColor() const
	{
		_GODOT_get_color.bind("Polygon2D", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolIntArray) _GODOT_set_splits;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_splits") = _GODOT_set_splits;
	/**
	
	*/
	void setSplits(in PoolIntArray splits)
	{
		_GODOT_set_splits.bind("Polygon2D", "set_splits");
		ptrcall!(void)(_GODOT_set_splits, _godot_object, splits);
	}
	package(godot) static GodotMethod!(PoolIntArray) _GODOT_get_splits;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_splits") = _GODOT_get_splits;
	/**
	
	*/
	PoolIntArray getSplits() const
	{
		_GODOT_get_splits.bind("Polygon2D", "get_splits");
		return ptrcall!(PoolIntArray)(_GODOT_get_splits, _godot_object);
	}
	package(godot) static GodotMethod!(void, PoolColorArray) _GODOT_set_vertex_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_vertex_colors") = _GODOT_set_vertex_colors;
	/**
	
	*/
	void setVertexColors(in PoolColorArray vertex_colors)
	{
		_GODOT_set_vertex_colors.bind("Polygon2D", "set_vertex_colors");
		ptrcall!(void)(_GODOT_set_vertex_colors, _godot_object, vertex_colors);
	}
	package(godot) static GodotMethod!(PoolColorArray) _GODOT_get_vertex_colors;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_vertex_colors") = _GODOT_get_vertex_colors;
	/**
	
	*/
	PoolColorArray getVertexColors() const
	{
		_GODOT_get_vertex_colors.bind("Polygon2D", "get_vertex_colors");
		return ptrcall!(PoolColorArray)(_GODOT_get_vertex_colors, _godot_object);
	}
	package(godot) static GodotMethod!(void, Texture) _GODOT_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture") = _GODOT_set_texture;
	/**
	
	*/
	void setTexture(Texture texture)
	{
		_GODOT_set_texture.bind("Polygon2D", "set_texture");
		ptrcall!(void)(_GODOT_set_texture, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Texture) _GODOT_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture") = _GODOT_get_texture;
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		_GODOT_get_texture.bind("Polygon2D", "get_texture");
		return ptrcall!(Texture)(_GODOT_get_texture, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_offset") = _GODOT_set_texture_offset;
	/**
	
	*/
	void setTextureOffset(in Vector2 texture_offset)
	{
		_GODOT_set_texture_offset.bind("Polygon2D", "set_texture_offset");
		ptrcall!(void)(_GODOT_set_texture_offset, _godot_object, texture_offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_offset") = _GODOT_get_texture_offset;
	/**
	
	*/
	Vector2 getTextureOffset() const
	{
		_GODOT_get_texture_offset.bind("Polygon2D", "get_texture_offset");
		return ptrcall!(Vector2)(_GODOT_get_texture_offset, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_texture_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_rotation") = _GODOT_set_texture_rotation;
	/**
	
	*/
	void setTextureRotation(in double texture_rotation)
	{
		_GODOT_set_texture_rotation.bind("Polygon2D", "set_texture_rotation");
		ptrcall!(void)(_GODOT_set_texture_rotation, _godot_object, texture_rotation);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_texture_rotation;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_rotation") = _GODOT_get_texture_rotation;
	/**
	
	*/
	double getTextureRotation() const
	{
		_GODOT_get_texture_rotation.bind("Polygon2D", "get_texture_rotation");
		return ptrcall!(double)(_GODOT_get_texture_rotation, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_texture_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_rotation_degrees") = _GODOT_set_texture_rotation_degrees;
	/**
	
	*/
	void setTextureRotationDegrees(in double texture_rotation)
	{
		_GODOT_set_texture_rotation_degrees.bind("Polygon2D", "set_texture_rotation_degrees");
		ptrcall!(void)(_GODOT_set_texture_rotation_degrees, _godot_object, texture_rotation);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_texture_rotation_degrees;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_rotation_degrees") = _GODOT_get_texture_rotation_degrees;
	/**
	
	*/
	double getTextureRotationDegrees() const
	{
		_GODOT_get_texture_rotation_degrees.bind("Polygon2D", "get_texture_rotation_degrees");
		return ptrcall!(double)(_GODOT_get_texture_rotation_degrees, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_texture_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_texture_scale") = _GODOT_set_texture_scale;
	/**
	
	*/
	void setTextureScale(in Vector2 texture_scale)
	{
		_GODOT_set_texture_scale.bind("Polygon2D", "set_texture_scale");
		ptrcall!(void)(_GODOT_set_texture_scale, _godot_object, texture_scale);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_texture_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_texture_scale") = _GODOT_get_texture_scale;
	/**
	
	*/
	Vector2 getTextureScale() const
	{
		_GODOT_get_texture_scale.bind("Polygon2D", "get_texture_scale");
		return ptrcall!(Vector2)(_GODOT_get_texture_scale, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_invert;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_invert") = _GODOT_set_invert;
	/**
	
	*/
	void setInvert(in bool invert)
	{
		_GODOT_set_invert.bind("Polygon2D", "set_invert");
		ptrcall!(void)(_GODOT_set_invert, _godot_object, invert);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_invert;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_invert") = _GODOT_get_invert;
	/**
	
	*/
	bool getInvert() const
	{
		_GODOT_get_invert.bind("Polygon2D", "get_invert");
		return ptrcall!(bool)(_GODOT_get_invert, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_antialiased;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_antialiased") = _GODOT_set_antialiased;
	/**
	
	*/
	void setAntialiased(in bool antialiased)
	{
		_GODOT_set_antialiased.bind("Polygon2D", "set_antialiased");
		ptrcall!(void)(_GODOT_set_antialiased, _godot_object, antialiased);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_antialiased;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_antialiased") = _GODOT_get_antialiased;
	/**
	
	*/
	bool getAntialiased() const
	{
		_GODOT_get_antialiased.bind("Polygon2D", "get_antialiased");
		return ptrcall!(bool)(_GODOT_get_antialiased, _godot_object);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_set_invert_border;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_invert_border") = _GODOT_set_invert_border;
	/**
	
	*/
	void setInvertBorder(in double invert_border)
	{
		_GODOT_set_invert_border.bind("Polygon2D", "set_invert_border");
		ptrcall!(void)(_GODOT_set_invert_border, _godot_object, invert_border);
	}
	package(godot) static GodotMethod!(double) _GODOT_get_invert_border;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_invert_border") = _GODOT_get_invert_border;
	/**
	
	*/
	double getInvertBorder() const
	{
		_GODOT_get_invert_border.bind("Polygon2D", "get_invert_border");
		return ptrcall!(double)(_GODOT_get_invert_border, _godot_object);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_set_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_offset") = _GODOT_set_offset;
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		_GODOT_set_offset.bind("Polygon2D", "set_offset");
		ptrcall!(void)(_GODOT_set_offset, _godot_object, offset);
	}
	package(godot) static GodotMethod!(Vector2) _GODOT_get_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_offset") = _GODOT_get_offset;
	/**
	
	*/
	Vector2 getOffset() const
	{
		_GODOT_get_offset.bind("Polygon2D", "get_offset");
		return ptrcall!(Vector2)(_GODOT_get_offset, _godot_object);
	}
	/**
	The polygon's list of vertices. The final point will be connected to the first.
	*/
	@property PoolVector2Array polygon()
	{
		return getPolygon();
	}
	/// ditto
	@property void polygon(PoolVector2Array v)
	{
		setPolygon(v);
	}
	/**
	Texture coordinates for each vertex of the polygon. There should be one `uv` per polygon vertex. If there are fewer, undefined vertices will use `(0, 0)`.
	*/
	@property PoolVector2Array uv()
	{
		return getUv();
	}
	/// ditto
	@property void uv(PoolVector2Array v)
	{
		setUv(v);
	}
	/**
	
	*/
	@property PoolIntArray splits()
	{
		return getSplits();
	}
	/// ditto
	@property void splits(PoolIntArray v)
	{
		setSplits(v);
	}
	/**
	The polygon's fill color. If `texture` is defined, it will be multiplied by this color. It will also be the default color for vertices not set in `vertex_colors`.
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
	/**
	Color for each vertex. Colors are interpolated between vertices, resulting in smooth gradients. There should be one per polygon vertex. If there are fewer, undefined vertices will use `color`.
	*/
	@property PoolColorArray vertexColors()
	{
		return getVertexColors();
	}
	/// ditto
	@property void vertexColors(PoolColorArray v)
	{
		setVertexColors(v);
	}
	/**
	The offset applied to each vertex.
	*/
	@property Vector2 offset()
	{
		return getOffset();
	}
	/// ditto
	@property void offset(Vector2 v)
	{
		setOffset(v);
	}
	/**
	If `true` polygon edges will be anti-aliased. Default value: `false`.
	*/
	@property bool antialiased()
	{
		return getAntialiased();
	}
	/// ditto
	@property void antialiased(bool v)
	{
		setAntialiased(v);
	}
	/**
	The polygon's fill texture. Use `uv` to set texture coordinates.
	*/
	@property Texture texture()
	{
		return getTexture();
	}
	/// ditto
	@property void texture(Texture v)
	{
		setTexture(v);
	}
	/**
	Amount to offset the polygon's `texture`. If `(0, 0)` the texture's origin (its top-left corner) will be placed at the polygon's `position`.
	*/
	@property Vector2 textureOffset()
	{
		return getTextureOffset();
	}
	/// ditto
	@property void textureOffset(Vector2 v)
	{
		setTextureOffset(v);
	}
	/**
	Amount to multiply the `uv` coordinates when using a `texture`. Larger values make the texture smaller, and vice versa.
	*/
	@property Vector2 textureScale()
	{
		return getTextureScale();
	}
	/// ditto
	@property void textureScale(Vector2 v)
	{
		setTextureScale(v);
	}
	/**
	The texture's rotation in degrees.
	*/
	@property double textureRotationDegrees()
	{
		return getTextureRotationDegrees();
	}
	/// ditto
	@property void textureRotationDegrees(double v)
	{
		setTextureRotationDegrees(v);
	}
	/**
	The texture's rotation in radians.
	*/
	@property double textureRotation()
	{
		return getTextureRotation();
	}
	/// ditto
	@property void textureRotation(double v)
	{
		setTextureRotation(v);
	}
	/**
	If `true` polygon will be inverted, containing the area outside the defined points and extending to the `invert_border`. Default value: `false`.
	*/
	@property bool invertEnable()
	{
		return getInvert();
	}
	/// ditto
	@property void invertEnable(bool v)
	{
		setInvert(v);
	}
	/**
	Added padding applied to the bounding box when using `invert`. Setting this value too small may result in a "Bad Polygon" error. Default value: `100`.
	*/
	@property double invertBorder()
	{
		return getInvertBorder();
	}
	/// ditto
	@property void invertBorder(double v)
	{
		setInvertBorder(v);
	}
}
