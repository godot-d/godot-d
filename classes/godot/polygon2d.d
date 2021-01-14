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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.canvasitem;
import godot.node;
import godot.texture;
/**
A 2D polygon.

A Polygon2D is defined by a set of points. Each point is connected to the next, with the final point being connected to the first, resulting in a closed polygon. Polygon2Ds can be filled with color (solid or gradient) or filled with a given texture.
$(B Note:) By default, Godot can only draw up to 4,096 polygon points at a time. To increase this limit, open the Project Settings and increase $(D ProjectSettings.rendering/limits/buffers/canvasPolygonBufferSizeKb) and $(D ProjectSettings.rendering/limits/buffers/canvasPolygonIndexBufferSizeKb).
*/
@GodotBaseClass struct Polygon2D
{
	package(godot) enum string _GODOT_internal_name = "Polygon2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_bones") GodotMethod!(Array) _getBones;
		@GodotName("_set_bones") GodotMethod!(void, Array) _setBones;
		@GodotName("_skeleton_bone_setup_changed") GodotMethod!(void) _skeletonBoneSetupChanged;
		@GodotName("add_bone") GodotMethod!(void, NodePath, PoolRealArray) addBone;
		@GodotName("clear_bones") GodotMethod!(void) clearBones;
		@GodotName("erase_bone") GodotMethod!(void, long) eraseBone;
		@GodotName("get_antialiased") GodotMethod!(bool) getAntialiased;
		@GodotName("get_bone_count") GodotMethod!(long) getBoneCount;
		@GodotName("get_bone_path") GodotMethod!(NodePath, long) getBonePath;
		@GodotName("get_bone_weights") GodotMethod!(PoolRealArray, long) getBoneWeights;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("get_internal_vertex_count") GodotMethod!(long) getInternalVertexCount;
		@GodotName("get_invert") GodotMethod!(bool) getInvert;
		@GodotName("get_invert_border") GodotMethod!(double) getInvertBorder;
		@GodotName("get_offset") GodotMethod!(Vector2) getOffset;
		@GodotName("get_polygon") GodotMethod!(PoolVector2Array) getPolygon;
		@GodotName("get_polygons") GodotMethod!(Array) getPolygons;
		@GodotName("get_skeleton") GodotMethod!(NodePath) getSkeleton;
		@GodotName("get_texture") GodotMethod!(Texture) getTexture;
		@GodotName("get_texture_offset") GodotMethod!(Vector2) getTextureOffset;
		@GodotName("get_texture_rotation") GodotMethod!(double) getTextureRotation;
		@GodotName("get_texture_rotation_degrees") GodotMethod!(double) getTextureRotationDegrees;
		@GodotName("get_texture_scale") GodotMethod!(Vector2) getTextureScale;
		@GodotName("get_uv") GodotMethod!(PoolVector2Array) getUv;
		@GodotName("get_vertex_colors") GodotMethod!(PoolColorArray) getVertexColors;
		@GodotName("set_antialiased") GodotMethod!(void, bool) setAntialiased;
		@GodotName("set_bone_path") GodotMethod!(void, long, NodePath) setBonePath;
		@GodotName("set_bone_weights") GodotMethod!(void, long, PoolRealArray) setBoneWeights;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("set_internal_vertex_count") GodotMethod!(void, long) setInternalVertexCount;
		@GodotName("set_invert") GodotMethod!(void, bool) setInvert;
		@GodotName("set_invert_border") GodotMethod!(void, double) setInvertBorder;
		@GodotName("set_offset") GodotMethod!(void, Vector2) setOffset;
		@GodotName("set_polygon") GodotMethod!(void, PoolVector2Array) setPolygon;
		@GodotName("set_polygons") GodotMethod!(void, Array) setPolygons;
		@GodotName("set_skeleton") GodotMethod!(void, NodePath) setSkeleton;
		@GodotName("set_texture") GodotMethod!(void, Texture) setTexture;
		@GodotName("set_texture_offset") GodotMethod!(void, Vector2) setTextureOffset;
		@GodotName("set_texture_rotation") GodotMethod!(void, double) setTextureRotation;
		@GodotName("set_texture_rotation_degrees") GodotMethod!(void, double) setTextureRotationDegrees;
		@GodotName("set_texture_scale") GodotMethod!(void, Vector2) setTextureScale;
		@GodotName("set_uv") GodotMethod!(void, PoolVector2Array) setUv;
		@GodotName("set_vertex_colors") GodotMethod!(void, PoolColorArray) setVertexColors;
	}
	/// 
	pragma(inline, true) bool opEquals(in Polygon2D other) const
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
	/// Construct a new instance of Polygon2D.
	/// Note: use `memnew!Polygon2D` instead.
	static Polygon2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Polygon2D");
		if(constructor is null) return typeof(this).init;
		return cast(Polygon2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array _getBones() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_bones");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setBones(in Array bones)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(bones);
		String _GODOT_method_name = String("_set_bones");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _skeletonBoneSetupChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_skeleton_bone_setup_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a bone with the specified `path` and `weights`.
	*/
	void addBone(NodePathArg0)(in NodePathArg0 path, in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBone, _godot_object, path, weights);
	}
	/**
	Removes all bones from this $(D Polygon2D).
	*/
	void clearBones()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clearBones, _godot_object);
	}
	/**
	Removes the specified bone from this $(D Polygon2D).
	*/
	void eraseBone(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.eraseBone, _godot_object, index);
	}
	/**
	
	*/
	bool getAntialiased() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getAntialiased, _godot_object);
	}
	/**
	Returns the number of bones in this $(D Polygon2D).
	*/
	long getBoneCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBoneCount, _godot_object);
	}
	/**
	Returns the path to the node associated with the specified bone.
	*/
	NodePath getBonePath(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getBonePath, _godot_object, index);
	}
	/**
	Returns the height values of the specified bone.
	*/
	PoolRealArray getBoneWeights(in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(GDNativeClassBinding.getBoneWeights, _godot_object, index);
	}
	/**
	
	*/
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getColor, _godot_object);
	}
	/**
	
	*/
	long getInternalVertexCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInternalVertexCount, _godot_object);
	}
	/**
	
	*/
	bool getInvert() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getInvert, _godot_object);
	}
	/**
	
	*/
	double getInvertBorder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getInvertBorder, _godot_object);
	}
	/**
	
	*/
	Vector2 getOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getOffset, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getPolygon, _godot_object);
	}
	/**
	
	*/
	Array getPolygons() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getPolygons, _godot_object);
	}
	/**
	
	*/
	NodePath getSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getSkeleton, _godot_object);
	}
	/**
	
	*/
	Ref!Texture getTexture() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(GDNativeClassBinding.getTexture, _godot_object);
	}
	/**
	
	*/
	Vector2 getTextureOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getTextureOffset, _godot_object);
	}
	/**
	
	*/
	double getTextureRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTextureRotation, _godot_object);
	}
	/**
	
	*/
	double getTextureRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getTextureRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Vector2 getTextureScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getTextureScale, _godot_object);
	}
	/**
	
	*/
	PoolVector2Array getUv() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(GDNativeClassBinding.getUv, _godot_object);
	}
	/**
	
	*/
	PoolColorArray getVertexColors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolColorArray)(GDNativeClassBinding.getVertexColors, _godot_object);
	}
	/**
	
	*/
	void setAntialiased(in bool antialiased)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAntialiased, _godot_object, antialiased);
	}
	/**
	Sets the path to the node associated with the specified bone.
	*/
	void setBonePath(NodePathArg1)(in long index, in NodePathArg1 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBonePath, _godot_object, index, path);
	}
	/**
	Sets the weight values for the specified bone.
	*/
	void setBoneWeights(in long index, in PoolRealArray weights)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBoneWeights, _godot_object, index, weights);
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
	void setInternalVertexCount(in long internal_vertex_count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInternalVertexCount, _godot_object, internal_vertex_count);
	}
	/**
	
	*/
	void setInvert(in bool invert)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInvert, _godot_object, invert);
	}
	/**
	
	*/
	void setInvertBorder(in double invert_border)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setInvertBorder, _godot_object, invert_border);
	}
	/**
	
	*/
	void setOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOffset, _godot_object, offset);
	}
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	void setPolygons(in Array polygons)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPolygons, _godot_object, polygons);
	}
	/**
	
	*/
	void setSkeleton(NodePathArg0)(in NodePathArg0 skeleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSkeleton, _godot_object, skeleton);
	}
	/**
	
	*/
	void setTexture(Texture texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTexture, _godot_object, texture);
	}
	/**
	
	*/
	void setTextureOffset(in Vector2 texture_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureOffset, _godot_object, texture_offset);
	}
	/**
	
	*/
	void setTextureRotation(in double texture_rotation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureRotation, _godot_object, texture_rotation);
	}
	/**
	
	*/
	void setTextureRotationDegrees(in double texture_rotation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureRotationDegrees, _godot_object, texture_rotation);
	}
	/**
	
	*/
	void setTextureScale(in Vector2 texture_scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTextureScale, _godot_object, texture_scale);
	}
	/**
	
	*/
	void setUv(in PoolVector2Array uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUv, _godot_object, uv);
	}
	/**
	
	*/
	void setVertexColors(in PoolColorArray vertex_colors)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setVertexColors, _godot_object, vertex_colors);
	}
	/**
	If `true`, polygon edges will be anti-aliased.
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
	
	*/
	@property Array bones()
	{
		return _getBones();
	}
	/// ditto
	@property void bones(Array v)
	{
		_setBones(v);
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
	
	*/
	@property long internalVertexCount()
	{
		return getInternalVertexCount();
	}
	/// ditto
	@property void internalVertexCount(long v)
	{
		setInternalVertexCount(v);
	}
	/**
	Added padding applied to the bounding box when using `invert`. Setting this value too small may result in a "Bad Polygon" error.
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
	/**
	If `true`, polygon will be inverted, containing the area outside the defined points and extending to the `invert_border`.
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
	The polygon's list of vertices. The final point will be connected to the first.
	$(B Note:) This returns a copy of the $(D PoolVector2Array) rather than a reference.
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
	
	*/
	@property Array polygons()
	{
		return getPolygons();
	}
	/// ditto
	@property void polygons(Array v)
	{
		setPolygons(v);
	}
	/**
	
	*/
	@property NodePath skeleton()
	{
		return getSkeleton();
	}
	/// ditto
	@property void skeleton(NodePath v)
	{
		setSkeleton(v);
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
}
