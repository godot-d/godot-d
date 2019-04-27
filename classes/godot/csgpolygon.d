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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.csgprimitive;
import godot.material;
import godot.csgshape;
import godot.visualinstance;
import godot.spatial;
import godot.node;
/**
Extrudes a 2D polygon shape to create a 3D mesh.

This node takes a 2D polygon shape and extrudes it to create a 3D mesh.
*/
@GodotBaseClass struct CSGPolygon
{
	enum string _GODOT_internal_name = "CSGPolygon";
public:
@nogc nothrow:
	union { godot_object _godot_object; CSGPrimitive _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_polygon") GodotMethod!(void, PoolVector2Array) setPolygon;
		@GodotName("get_polygon") GodotMethod!(PoolVector2Array) getPolygon;
		@GodotName("set_mode") GodotMethod!(void, long) setMode;
		@GodotName("get_mode") GodotMethod!(CSGPolygon.Mode) getMode;
		@GodotName("set_depth") GodotMethod!(void, double) setDepth;
		@GodotName("get_depth") GodotMethod!(double) getDepth;
		@GodotName("set_spin_degrees") GodotMethod!(void, double) setSpinDegrees;
		@GodotName("get_spin_degrees") GodotMethod!(double) getSpinDegrees;
		@GodotName("set_spin_sides") GodotMethod!(void, long) setSpinSides;
		@GodotName("get_spin_sides") GodotMethod!(long) getSpinSides;
		@GodotName("set_path_node") GodotMethod!(void, NodePath) setPathNode;
		@GodotName("get_path_node") GodotMethod!(NodePath) getPathNode;
		@GodotName("set_path_interval") GodotMethod!(void, double) setPathInterval;
		@GodotName("get_path_interval") GodotMethod!(double) getPathInterval;
		@GodotName("set_path_rotation") GodotMethod!(void, long) setPathRotation;
		@GodotName("get_path_rotation") GodotMethod!(CSGPolygon.PathRotation) getPathRotation;
		@GodotName("set_path_local") GodotMethod!(void, bool) setPathLocal;
		@GodotName("is_path_local") GodotMethod!(bool) isPathLocal;
		@GodotName("set_path_continuous_u") GodotMethod!(void, bool) setPathContinuousU;
		@GodotName("is_path_continuous_u") GodotMethod!(bool) isPathContinuousU;
		@GodotName("set_path_joined") GodotMethod!(void, bool) setPathJoined;
		@GodotName("is_path_joined") GodotMethod!(bool) isPathJoined;
		@GodotName("set_material") GodotMethod!(void, Material) setMaterial;
		@GodotName("get_material") GodotMethod!(Material) getMaterial;
		@GodotName("set_smooth_faces") GodotMethod!(void, bool) setSmoothFaces;
		@GodotName("get_smooth_faces") GodotMethod!(bool) getSmoothFaces;
		@GodotName("_is_editable_3d_polygon") GodotMethod!(bool) _isEditable3dPolygon;
		@GodotName("_has_editable_3d_polygon_no_depth") GodotMethod!(bool) _hasEditable3dPolygonNoDepth;
		@GodotName("_path_exited") GodotMethod!(void) _pathExited;
		@GodotName("_path_changed") GodotMethod!(void) _pathChanged;
	}
	bool opEquals(in CSGPolygon other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CSGPolygon opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		modePath = 2,
		pathRotationPathFollow = 2,
	}
	/**
	
	*/
	void setPolygon(in PoolVector2Array polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPolygon, _godot_object, polygon);
	}
	/**
	
	*/
	PoolVector2Array getPolygon() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getPolygon, _godot_object);
	}
	/**
	
	*/
	void setMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMode, _godot_object, mode);
	}
	/**
	
	*/
	CSGPolygon.Mode getMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CSGPolygon.Mode)(_classBinding.getMode, _godot_object);
	}
	/**
	
	*/
	void setDepth(in double depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDepth, _godot_object, depth);
	}
	/**
	
	*/
	double getDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getDepth, _godot_object);
	}
	/**
	
	*/
	void setSpinDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpinDegrees, _godot_object, degrees);
	}
	/**
	
	*/
	double getSpinDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpinDegrees, _godot_object);
	}
	/**
	
	*/
	void setSpinSides(in long spin_sides)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpinSides, _godot_object, spin_sides);
	}
	/**
	
	*/
	long getSpinSides() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSpinSides, _godot_object);
	}
	/**
	
	*/
	void setPathNode(NodePathArg0)(in NodePathArg0 path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPathNode, _godot_object, path);
	}
	/**
	
	*/
	NodePath getPathNode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getPathNode, _godot_object);
	}
	/**
	
	*/
	void setPathInterval(in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPathInterval, _godot_object, distance);
	}
	/**
	
	*/
	double getPathInterval() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPathInterval, _godot_object);
	}
	/**
	
	*/
	void setPathRotation(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPathRotation, _godot_object, mode);
	}
	/**
	
	*/
	CSGPolygon.PathRotation getPathRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CSGPolygon.PathRotation)(_classBinding.getPathRotation, _godot_object);
	}
	/**
	
	*/
	void setPathLocal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPathLocal, _godot_object, enable);
	}
	/**
	
	*/
	bool isPathLocal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPathLocal, _godot_object);
	}
	/**
	
	*/
	void setPathContinuousU(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPathContinuousU, _godot_object, enable);
	}
	/**
	
	*/
	bool isPathContinuousU() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPathContinuousU, _godot_object);
	}
	/**
	
	*/
	void setPathJoined(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPathJoined, _godot_object, enable);
	}
	/**
	
	*/
	bool isPathJoined() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPathJoined, _godot_object);
	}
	/**
	
	*/
	void setMaterial(Material material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaterial, _godot_object, material);
	}
	/**
	
	*/
	Ref!Material getMaterial() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Material)(_classBinding.getMaterial, _godot_object);
	}
	/**
	
	*/
	void setSmoothFaces(in bool smooth_faces)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSmoothFaces, _godot_object, smooth_faces);
	}
	/**
	
	*/
	bool getSmoothFaces() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getSmoothFaces, _godot_object);
	}
	/**
	
	*/
	bool _isEditable3dPolygon() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_is_editable_3d_polygon");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	bool _hasEditable3dPolygonNoDepth() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_has_editable_3d_polygon_no_depth");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!bool);
	}
	/**
	
	*/
	void _pathExited()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_path_exited");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _pathChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_path_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
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
}
