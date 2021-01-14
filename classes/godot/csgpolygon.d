/**
Extrudes a 2D polygon shape to create a 3D mesh.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.csgpolygon;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.csgprimitive;
import godot.material;
/**
Extrudes a 2D polygon shape to create a 3D mesh.

This node takes a 2D polygon shape and extrudes it to create a 3D mesh.
*/
@GodotBaseClass struct CSGPolygon
{
	package(godot) enum string _GODOT_internal_name = "CSGPolygon";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_has_editable_3d_polygon_no_depth") GodotMethod!(bool) _hasEditable3dPolygonNoDepth;
		@GodotName("_is_editable_3d_polygon") GodotMethod!(bool) _isEditable3dPolygon;
		@GodotName("_path_changed") GodotMethod!(void) _pathChanged;
		@GodotName("_path_exited") GodotMethod!(void) _pathExited;
		@GodotName("get_depth") GodotMethod!(double) getDepth;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("get_mode") GodotMethod!(CSGPolygon.Mode) getMode;
		@GodotName("get_path_interval") GodotMethod!(double) getPathInterval;
		@GodotName("get_path_node") GodotMethod!(NodePath) getPathNode;
		@GodotName("get_path_rotation") GodotMethod!(CSGPolygon.PathRotation) getPathRotation;
		@GodotName("get_polygon") GodotMethod!(PoolVector2Array) getPolygon;
		@GodotName("get_smooth_faces") GodotMethod!(bool) getSmoothFaces;
		@GodotName("get_spin_degrees") GodotMethod!(double) getSpinDegrees;
		@GodotName("get_spin_sides") GodotMethod!(long) getSpinSides;
		@GodotName("is_path_continuous_u") GodotMethod!(bool) isPathContinuousU;
		@GodotName("is_path_joined") GodotMethod!(bool) isPathJoined;
		@GodotName("is_path_local") GodotMethod!(bool) isPathLocal;
		@GodotName("set_depth") GodotMethod!(void, double) setDepth;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("set_path_continuous_u") GodotMethod!(void, bool) setPathContinuousU;
		@GodotName("set_path_interval") GodotMethod!(void, double) setPathInterval;
		@GodotName("set_path_joined") GodotMethod!(void, bool) setPathJoined;
		@GodotName("set_path_local") GodotMethod!(void, bool) setPathLocal;
		@GodotName("set_path_node") GodotMethod!(void, NodePath) setPathNode;
		@GodotName("set_path_rotation") GodotMethod!(void, long) setPathRotation;
		@GodotName("set_polygon") GodotMethod!(void, PoolVector2Array) setPolygon;
		@GodotName("set_smooth_faces") GodotMethod!(void, bool) setSmoothFaces;
		@GodotName("set_spin_degrees") GodotMethod!(void, double) setSpinDegrees;
		@GodotName("set_spin_sides") GodotMethod!(void, long) setSpinSides;
	}
	/// 
	pragma(inline, true) bool opEquals(in CSGPolygon other) const
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
	/// Construct a new instance of CSGPolygon.
	/// Note: use `memnew!CSGPolygon` instead.
	static CSGPolygon _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CSGPolygon");
		if(constructor is null) return typeof(this).init;
		return cast(CSGPolygon)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum PathRotation : int
	{
		/**
		Slice is not rotated.
		*/
		pathRotationPolygon = 0,
		/**
		Slice is rotated around the up vector of the path.
		*/
		pathRotationPath = 1,
		/**
		Slice is rotate to match the path exactly.
		*/
		pathRotationPathFollow = 2,
	}
	/// 
	enum Mode : int
	{
		/**
		Shape is extruded to $(D depth).
		*/
		modeDepth = 0,
		/**
		Shape is extruded by rotating it around an axis.
		*/
		modeSpin = 1,
		/**
		Shape is extruded along a path set by a $(D Shape) set in $(D pathNode).
		*/
		modePath = 2,
	}
	/// 
	enum Constants : int
	{
		modeDepth = 0,
		pathRotationPolygon = 0,
		pathRotationPath = 1,
		modeSpin = 1,
		pathRotationPathFollow = 2,
		modePath = 2,
	}
	/**
	
	*/
	bool _hasEditable3dPolygonNoDepth() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_has_editable_3d_polygon_no_depth");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool _isEditable3dPolygon() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_is_editable_3d_polygon");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _pathChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_path_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _pathExited()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_path_exited");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDepth, _godot_object);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(GDNativeClassBinding.getMaterial, _godot_object);
	}
	/**
	
	*/
	CSGPolygon.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CSGPolygon.Mode)(GDNativeClassBinding.getMode, _godot_object);
	}
	/**
	
	*/
	double getPathInterval() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getPathInterval, _godot_object);
	}
	/**
	
	*/
	NodePath getPathNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(GDNativeClassBinding.getPathNode, _godot_object);
	}
	/**
	
	*/
	CSGPolygon.PathRotation getPathRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CSGPolygon.PathRotation)(GDNativeClassBinding.getPathRotation, _godot_object);
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
	bool getSmoothFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getSmoothFaces, _godot_object);
	}
	/**
	
	*/
	double getSpinDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSpinDegrees, _godot_object);
	}
	/**
	
	*/
	long getSpinSides() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSpinSides, _godot_object);
	}
	/**
	
	*/
	bool isPathContinuousU() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPathContinuousU, _godot_object);
	}
	/**
	
	*/
	bool isPathJoined() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPathJoined, _godot_object);
	}
	/**
	
	*/
	bool isPathLocal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPathLocal, _godot_object);
	}
	/**
	
	*/
	void setDepth(in double depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDepth, _godot_object, depth);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaterial, _godot_object, material);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	void setPathContinuousU(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPathContinuousU, _godot_object, enable);
	}
	/**
	
	*/
	void setPathInterval(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPathInterval, _godot_object, distance);
	}
	/**
	
	*/
	void setPathJoined(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPathJoined, _godot_object, enable);
	}
	/**
	
	*/
	void setPathLocal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPathLocal, _godot_object, enable);
	}
	/**
	
	*/
	void setPathNode(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPathNode, _godot_object, path);
	}
	/**
	
	*/
	void setPathRotation(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPathRotation, _godot_object, mode);
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
	void setSmoothFaces(in bool smooth_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSmoothFaces, _godot_object, smooth_faces);
	}
	/**
	
	*/
	void setSpinDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpinDegrees, _godot_object, degrees);
	}
	/**
	
	*/
	void setSpinSides(in long spin_sides)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSpinSides, _godot_object, spin_sides);
	}
	/**
	Extrusion depth when $(D mode) is $(D constant MODE_DEPTH).
	*/
	@property double depth()
	{
		return getDepth();
	}
	/// ditto
	@property void depth(double v)
	{
		setDepth(v);
	}
	/**
	Extrusion mode.
	*/
	@property CSGPolygon.Mode mode()
	{
		return getMode();
	}
	/// ditto
	@property void mode(long v)
	{
		setMode(v);
	}
	/**
	If `true` the u component of our uv will continuously increase in unison with the distance traveled along our path when $(D mode) is $(D constant MODE_PATH).
	*/
	@property bool pathContinuousU()
	{
		return isPathContinuousU();
	}
	/// ditto
	@property void pathContinuousU(bool v)
	{
		setPathContinuousU(v);
	}
	/**
	Interval at which a new extrusion slice is added along the path when $(D mode) is $(D constant MODE_PATH).
	*/
	@property double pathInterval()
	{
		return getPathInterval();
	}
	/// ditto
	@property void pathInterval(double v)
	{
		setPathInterval(v);
	}
	/**
	If `true` the start and end of our path are joined together ensuring there is no seam when $(D mode) is $(D constant MODE_PATH).
	*/
	@property bool pathJoined()
	{
		return isPathJoined();
	}
	/// ditto
	@property void pathJoined(bool v)
	{
		setPathJoined(v);
	}
	/**
	If `false` we extrude centered on our path, if `true` we extrude in relation to the position of our CSGPolygon when $(D mode) is $(D constant MODE_PATH).
	*/
	@property bool pathLocal()
	{
		return isPathLocal();
	}
	/// ditto
	@property void pathLocal(bool v)
	{
		setPathLocal(v);
	}
	/**
	The $(D Shape) object containing the path along which we extrude when $(D mode) is $(D constant MODE_PATH).
	*/
	@property NodePath pathNode()
	{
		return getPathNode();
	}
	/// ditto
	@property void pathNode(NodePath v)
	{
		setPathNode(v);
	}
	/**
	The method by which each slice is rotated along the path when $(D mode) is $(D constant MODE_PATH).
	*/
	@property CSGPolygon.PathRotation pathRotation()
	{
		return getPathRotation();
	}
	/// ditto
	@property void pathRotation(long v)
	{
		setPathRotation(v);
	}
	/**
	Point array that defines the shape that we'll extrude.
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
	Generates smooth normals so smooth shading is applied to our mesh.
	*/
	@property bool smoothFaces()
	{
		return getSmoothFaces();
	}
	/// ditto
	@property void smoothFaces(bool v)
	{
		setSmoothFaces(v);
	}
	/**
	Degrees to rotate our extrusion for each slice when $(D mode) is $(D constant MODE_SPIN).
	*/
	@property double spinDegrees()
	{
		return getSpinDegrees();
	}
	/// ditto
	@property void spinDegrees(double v)
	{
		setSpinDegrees(v);
	}
	/**
	Number of extrusion when $(D mode) is $(D constant MODE_SPIN).
	*/
	@property long spinSides()
	{
		return getSpinSides();
	}
	/// ditto
	@property void spinSides(long v)
	{
		setSpinSides(v);
	}
}
