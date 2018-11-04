/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodeblendspace2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.animationrootnode;
import godot.animationnode;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct AnimationNodeBlendSpace2D
{
	enum string _GODOT_internal_name = "AnimationNodeBlendSpace2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; AnimationRootNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_blend_point") GodotMethod!(void, AnimationRootNode, Vector2, long) addBlendPoint;
		@GodotName("set_blend_point_position") GodotMethod!(void, long, Vector2) setBlendPointPosition;
		@GodotName("get_blend_point_position") GodotMethod!(Vector2, long) getBlendPointPosition;
		@GodotName("set_blend_point_node") GodotMethod!(void, long, AnimationRootNode) setBlendPointNode;
		@GodotName("get_blend_point_node") GodotMethod!(AnimationRootNode, long) getBlendPointNode;
		@GodotName("remove_blend_point") GodotMethod!(void, long) removeBlendPoint;
		@GodotName("get_blend_point_count") GodotMethod!(long) getBlendPointCount;
		@GodotName("add_triangle") GodotMethod!(void, long, long, long, long) addTriangle;
		@GodotName("get_triangle_point") GodotMethod!(long, long, long) getTrianglePoint;
		@GodotName("remove_triangle") GodotMethod!(void, long) removeTriangle;
		@GodotName("get_triangle_count") GodotMethod!(long) getTriangleCount;
		@GodotName("set_min_space") GodotMethod!(void, Vector2) setMinSpace;
		@GodotName("get_min_space") GodotMethod!(Vector2) getMinSpace;
		@GodotName("set_max_space") GodotMethod!(void, Vector2) setMaxSpace;
		@GodotName("get_max_space") GodotMethod!(Vector2) getMaxSpace;
		@GodotName("set_snap") GodotMethod!(void, Vector2) setSnap;
		@GodotName("get_snap") GodotMethod!(Vector2) getSnap;
		@GodotName("set_x_label") GodotMethod!(void, String) setXLabel;
		@GodotName("get_x_label") GodotMethod!(String) getXLabel;
		@GodotName("set_y_label") GodotMethod!(void, String) setYLabel;
		@GodotName("get_y_label") GodotMethod!(String) getYLabel;
		@GodotName("_add_blend_point") GodotMethod!(void, long, AnimationRootNode) _addBlendPoint;
		@GodotName("_set_triangles") GodotMethod!(void, PoolIntArray) _setTriangles;
		@GodotName("_get_triangles") GodotMethod!(PoolIntArray) _getTriangles;
		@GodotName("set_auto_triangles") GodotMethod!(void, bool) setAutoTriangles;
		@GodotName("get_auto_triangles") GodotMethod!(bool) getAutoTriangles;
		@GodotName("_tree_changed") GodotMethod!(void) _treeChanged;
	}
	bool opEquals(in AnimationNodeBlendSpace2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeBlendSpace2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationNodeBlendSpace2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeBlendSpace2D");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeBlendSpace2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void addBlendPoint(AnimationRootNode node, in Vector2 pos, in long at_index = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addBlendPoint, _godot_object, node, pos, at_index);
	}
	/**
	
	*/
	void setBlendPointPosition(in long point, in Vector2 pos)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlendPointPosition, _godot_object, point, pos);
	}
	/**
	
	*/
	Vector2 getBlendPointPosition(in long point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getBlendPointPosition, _godot_object, point);
	}
	/**
	
	*/
	void setBlendPointNode(in long point, AnimationRootNode node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBlendPointNode, _godot_object, point, node);
	}
	/**
	
	*/
	Ref!AnimationRootNode getBlendPointNode(in long point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationRootNode)(_classBinding.getBlendPointNode, _godot_object, point);
	}
	/**
	
	*/
	void removeBlendPoint(in long point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeBlendPoint, _godot_object, point);
	}
	/**
	
	*/
	long getBlendPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getBlendPointCount, _godot_object);
	}
	/**
	
	*/
	void addTriangle(in long x, in long y, in long z, in long at_index = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTriangle, _godot_object, x, y, z, at_index);
	}
	/**
	
	*/
	long getTrianglePoint(in long triangle, in long point)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTrianglePoint, _godot_object, triangle, point);
	}
	/**
	
	*/
	void removeTriangle(in long triangle)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeTriangle, _godot_object, triangle);
	}
	/**
	
	*/
	long getTriangleCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getTriangleCount, _godot_object);
	}
	/**
	
	*/
	void setMinSpace(in Vector2 min_space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMinSpace, _godot_object, min_space);
	}
	/**
	
	*/
	Vector2 getMinSpace() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getMinSpace, _godot_object);
	}
	/**
	
	*/
	void setMaxSpace(in Vector2 max_space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxSpace, _godot_object, max_space);
	}
	/**
	
	*/
	Vector2 getMaxSpace() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getMaxSpace, _godot_object);
	}
	/**
	
	*/
	void setSnap(in Vector2 snap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSnap, _godot_object, snap);
	}
	/**
	
	*/
	Vector2 getSnap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getSnap, _godot_object);
	}
	/**
	
	*/
	void setXLabel(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setXLabel, _godot_object, text);
	}
	/**
	
	*/
	String getXLabel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getXLabel, _godot_object);
	}
	/**
	
	*/
	void setYLabel(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setYLabel, _godot_object, text);
	}
	/**
	
	*/
	String getYLabel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getYLabel, _godot_object);
	}
	/**
	
	*/
	void _addBlendPoint(in long index, AnimationRootNode node)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(index);
		_GODOT_args.append(node);
		String _GODOT_method_name = String("_add_blend_point");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setTriangles(in PoolIntArray triangles)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(triangles);
		String _GODOT_method_name = String("_set_triangles");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	PoolIntArray _getTriangles() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_triangles");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolIntArray);
	}
	/**
	
	*/
	void setAutoTriangles(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutoTriangles, _godot_object, enable);
	}
	/**
	
	*/
	bool getAutoTriangles() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAutoTriangles, _godot_object);
	}
	/**
	
	*/
	void _treeChanged()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property bool autoTriangles()
	{
		return getAutoTriangles();
	}
	/// ditto
	@property void autoTriangles(bool v)
	{
		setAutoTriangles(v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint0Node()
	{
		return getBlendPointNode(0);
	}
	/// ditto
	@property void blendPoint0Node(AnimationRootNode v)
	{
		_addBlendPoint(0, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint0Pos()
	{
		return getBlendPointPosition(0);
	}
	/// ditto
	@property void blendPoint0Pos(Vector2 v)
	{
		setBlendPointPosition(0, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint1Node()
	{
		return getBlendPointNode(1);
	}
	/// ditto
	@property void blendPoint1Node(AnimationRootNode v)
	{
		_addBlendPoint(1, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint1Pos()
	{
		return getBlendPointPosition(1);
	}
	/// ditto
	@property void blendPoint1Pos(Vector2 v)
	{
		setBlendPointPosition(1, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint2Node()
	{
		return getBlendPointNode(2);
	}
	/// ditto
	@property void blendPoint2Node(AnimationRootNode v)
	{
		_addBlendPoint(2, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint2Pos()
	{
		return getBlendPointPosition(2);
	}
	/// ditto
	@property void blendPoint2Pos(Vector2 v)
	{
		setBlendPointPosition(2, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint3Node()
	{
		return getBlendPointNode(3);
	}
	/// ditto
	@property void blendPoint3Node(AnimationRootNode v)
	{
		_addBlendPoint(3, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint3Pos()
	{
		return getBlendPointPosition(3);
	}
	/// ditto
	@property void blendPoint3Pos(Vector2 v)
	{
		setBlendPointPosition(3, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint4Node()
	{
		return getBlendPointNode(4);
	}
	/// ditto
	@property void blendPoint4Node(AnimationRootNode v)
	{
		_addBlendPoint(4, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint4Pos()
	{
		return getBlendPointPosition(4);
	}
	/// ditto
	@property void blendPoint4Pos(Vector2 v)
	{
		setBlendPointPosition(4, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint5Node()
	{
		return getBlendPointNode(5);
	}
	/// ditto
	@property void blendPoint5Node(AnimationRootNode v)
	{
		_addBlendPoint(5, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint5Pos()
	{
		return getBlendPointPosition(5);
	}
	/// ditto
	@property void blendPoint5Pos(Vector2 v)
	{
		setBlendPointPosition(5, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint6Node()
	{
		return getBlendPointNode(6);
	}
	/// ditto
	@property void blendPoint6Node(AnimationRootNode v)
	{
		_addBlendPoint(6, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint6Pos()
	{
		return getBlendPointPosition(6);
	}
	/// ditto
	@property void blendPoint6Pos(Vector2 v)
	{
		setBlendPointPosition(6, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint7Node()
	{
		return getBlendPointNode(7);
	}
	/// ditto
	@property void blendPoint7Node(AnimationRootNode v)
	{
		_addBlendPoint(7, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint7Pos()
	{
		return getBlendPointPosition(7);
	}
	/// ditto
	@property void blendPoint7Pos(Vector2 v)
	{
		setBlendPointPosition(7, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint8Node()
	{
		return getBlendPointNode(8);
	}
	/// ditto
	@property void blendPoint8Node(AnimationRootNode v)
	{
		_addBlendPoint(8, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint8Pos()
	{
		return getBlendPointPosition(8);
	}
	/// ditto
	@property void blendPoint8Pos(Vector2 v)
	{
		setBlendPointPosition(8, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint9Node()
	{
		return getBlendPointNode(9);
	}
	/// ditto
	@property void blendPoint9Node(AnimationRootNode v)
	{
		_addBlendPoint(9, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint9Pos()
	{
		return getBlendPointPosition(9);
	}
	/// ditto
	@property void blendPoint9Pos(Vector2 v)
	{
		setBlendPointPosition(9, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint10Node()
	{
		return getBlendPointNode(10);
	}
	/// ditto
	@property void blendPoint10Node(AnimationRootNode v)
	{
		_addBlendPoint(10, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint10Pos()
	{
		return getBlendPointPosition(10);
	}
	/// ditto
	@property void blendPoint10Pos(Vector2 v)
	{
		setBlendPointPosition(10, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint11Node()
	{
		return getBlendPointNode(11);
	}
	/// ditto
	@property void blendPoint11Node(AnimationRootNode v)
	{
		_addBlendPoint(11, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint11Pos()
	{
		return getBlendPointPosition(11);
	}
	/// ditto
	@property void blendPoint11Pos(Vector2 v)
	{
		setBlendPointPosition(11, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint12Node()
	{
		return getBlendPointNode(12);
	}
	/// ditto
	@property void blendPoint12Node(AnimationRootNode v)
	{
		_addBlendPoint(12, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint12Pos()
	{
		return getBlendPointPosition(12);
	}
	/// ditto
	@property void blendPoint12Pos(Vector2 v)
	{
		setBlendPointPosition(12, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint13Node()
	{
		return getBlendPointNode(13);
	}
	/// ditto
	@property void blendPoint13Node(AnimationRootNode v)
	{
		_addBlendPoint(13, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint13Pos()
	{
		return getBlendPointPosition(13);
	}
	/// ditto
	@property void blendPoint13Pos(Vector2 v)
	{
		setBlendPointPosition(13, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint14Node()
	{
		return getBlendPointNode(14);
	}
	/// ditto
	@property void blendPoint14Node(AnimationRootNode v)
	{
		_addBlendPoint(14, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint14Pos()
	{
		return getBlendPointPosition(14);
	}
	/// ditto
	@property void blendPoint14Pos(Vector2 v)
	{
		setBlendPointPosition(14, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint15Node()
	{
		return getBlendPointNode(15);
	}
	/// ditto
	@property void blendPoint15Node(AnimationRootNode v)
	{
		_addBlendPoint(15, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint15Pos()
	{
		return getBlendPointPosition(15);
	}
	/// ditto
	@property void blendPoint15Pos(Vector2 v)
	{
		setBlendPointPosition(15, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint16Node()
	{
		return getBlendPointNode(16);
	}
	/// ditto
	@property void blendPoint16Node(AnimationRootNode v)
	{
		_addBlendPoint(16, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint16Pos()
	{
		return getBlendPointPosition(16);
	}
	/// ditto
	@property void blendPoint16Pos(Vector2 v)
	{
		setBlendPointPosition(16, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint17Node()
	{
		return getBlendPointNode(17);
	}
	/// ditto
	@property void blendPoint17Node(AnimationRootNode v)
	{
		_addBlendPoint(17, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint17Pos()
	{
		return getBlendPointPosition(17);
	}
	/// ditto
	@property void blendPoint17Pos(Vector2 v)
	{
		setBlendPointPosition(17, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint18Node()
	{
		return getBlendPointNode(18);
	}
	/// ditto
	@property void blendPoint18Node(AnimationRootNode v)
	{
		_addBlendPoint(18, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint18Pos()
	{
		return getBlendPointPosition(18);
	}
	/// ditto
	@property void blendPoint18Pos(Vector2 v)
	{
		setBlendPointPosition(18, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint19Node()
	{
		return getBlendPointNode(19);
	}
	/// ditto
	@property void blendPoint19Node(AnimationRootNode v)
	{
		_addBlendPoint(19, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint19Pos()
	{
		return getBlendPointPosition(19);
	}
	/// ditto
	@property void blendPoint19Pos(Vector2 v)
	{
		setBlendPointPosition(19, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint20Node()
	{
		return getBlendPointNode(20);
	}
	/// ditto
	@property void blendPoint20Node(AnimationRootNode v)
	{
		_addBlendPoint(20, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint20Pos()
	{
		return getBlendPointPosition(20);
	}
	/// ditto
	@property void blendPoint20Pos(Vector2 v)
	{
		setBlendPointPosition(20, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint21Node()
	{
		return getBlendPointNode(21);
	}
	/// ditto
	@property void blendPoint21Node(AnimationRootNode v)
	{
		_addBlendPoint(21, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint21Pos()
	{
		return getBlendPointPosition(21);
	}
	/// ditto
	@property void blendPoint21Pos(Vector2 v)
	{
		setBlendPointPosition(21, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint22Node()
	{
		return getBlendPointNode(22);
	}
	/// ditto
	@property void blendPoint22Node(AnimationRootNode v)
	{
		_addBlendPoint(22, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint22Pos()
	{
		return getBlendPointPosition(22);
	}
	/// ditto
	@property void blendPoint22Pos(Vector2 v)
	{
		setBlendPointPosition(22, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint23Node()
	{
		return getBlendPointNode(23);
	}
	/// ditto
	@property void blendPoint23Node(AnimationRootNode v)
	{
		_addBlendPoint(23, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint23Pos()
	{
		return getBlendPointPosition(23);
	}
	/// ditto
	@property void blendPoint23Pos(Vector2 v)
	{
		setBlendPointPosition(23, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint24Node()
	{
		return getBlendPointNode(24);
	}
	/// ditto
	@property void blendPoint24Node(AnimationRootNode v)
	{
		_addBlendPoint(24, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint24Pos()
	{
		return getBlendPointPosition(24);
	}
	/// ditto
	@property void blendPoint24Pos(Vector2 v)
	{
		setBlendPointPosition(24, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint25Node()
	{
		return getBlendPointNode(25);
	}
	/// ditto
	@property void blendPoint25Node(AnimationRootNode v)
	{
		_addBlendPoint(25, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint25Pos()
	{
		return getBlendPointPosition(25);
	}
	/// ditto
	@property void blendPoint25Pos(Vector2 v)
	{
		setBlendPointPosition(25, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint26Node()
	{
		return getBlendPointNode(26);
	}
	/// ditto
	@property void blendPoint26Node(AnimationRootNode v)
	{
		_addBlendPoint(26, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint26Pos()
	{
		return getBlendPointPosition(26);
	}
	/// ditto
	@property void blendPoint26Pos(Vector2 v)
	{
		setBlendPointPosition(26, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint27Node()
	{
		return getBlendPointNode(27);
	}
	/// ditto
	@property void blendPoint27Node(AnimationRootNode v)
	{
		_addBlendPoint(27, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint27Pos()
	{
		return getBlendPointPosition(27);
	}
	/// ditto
	@property void blendPoint27Pos(Vector2 v)
	{
		setBlendPointPosition(27, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint28Node()
	{
		return getBlendPointNode(28);
	}
	/// ditto
	@property void blendPoint28Node(AnimationRootNode v)
	{
		_addBlendPoint(28, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint28Pos()
	{
		return getBlendPointPosition(28);
	}
	/// ditto
	@property void blendPoint28Pos(Vector2 v)
	{
		setBlendPointPosition(28, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint29Node()
	{
		return getBlendPointNode(29);
	}
	/// ditto
	@property void blendPoint29Node(AnimationRootNode v)
	{
		_addBlendPoint(29, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint29Pos()
	{
		return getBlendPointPosition(29);
	}
	/// ditto
	@property void blendPoint29Pos(Vector2 v)
	{
		setBlendPointPosition(29, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint30Node()
	{
		return getBlendPointNode(30);
	}
	/// ditto
	@property void blendPoint30Node(AnimationRootNode v)
	{
		_addBlendPoint(30, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint30Pos()
	{
		return getBlendPointPosition(30);
	}
	/// ditto
	@property void blendPoint30Pos(Vector2 v)
	{
		setBlendPointPosition(30, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint31Node()
	{
		return getBlendPointNode(31);
	}
	/// ditto
	@property void blendPoint31Node(AnimationRootNode v)
	{
		_addBlendPoint(31, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint31Pos()
	{
		return getBlendPointPosition(31);
	}
	/// ditto
	@property void blendPoint31Pos(Vector2 v)
	{
		setBlendPointPosition(31, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint32Node()
	{
		return getBlendPointNode(32);
	}
	/// ditto
	@property void blendPoint32Node(AnimationRootNode v)
	{
		_addBlendPoint(32, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint32Pos()
	{
		return getBlendPointPosition(32);
	}
	/// ditto
	@property void blendPoint32Pos(Vector2 v)
	{
		setBlendPointPosition(32, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint33Node()
	{
		return getBlendPointNode(33);
	}
	/// ditto
	@property void blendPoint33Node(AnimationRootNode v)
	{
		_addBlendPoint(33, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint33Pos()
	{
		return getBlendPointPosition(33);
	}
	/// ditto
	@property void blendPoint33Pos(Vector2 v)
	{
		setBlendPointPosition(33, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint34Node()
	{
		return getBlendPointNode(34);
	}
	/// ditto
	@property void blendPoint34Node(AnimationRootNode v)
	{
		_addBlendPoint(34, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint34Pos()
	{
		return getBlendPointPosition(34);
	}
	/// ditto
	@property void blendPoint34Pos(Vector2 v)
	{
		setBlendPointPosition(34, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint35Node()
	{
		return getBlendPointNode(35);
	}
	/// ditto
	@property void blendPoint35Node(AnimationRootNode v)
	{
		_addBlendPoint(35, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint35Pos()
	{
		return getBlendPointPosition(35);
	}
	/// ditto
	@property void blendPoint35Pos(Vector2 v)
	{
		setBlendPointPosition(35, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint36Node()
	{
		return getBlendPointNode(36);
	}
	/// ditto
	@property void blendPoint36Node(AnimationRootNode v)
	{
		_addBlendPoint(36, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint36Pos()
	{
		return getBlendPointPosition(36);
	}
	/// ditto
	@property void blendPoint36Pos(Vector2 v)
	{
		setBlendPointPosition(36, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint37Node()
	{
		return getBlendPointNode(37);
	}
	/// ditto
	@property void blendPoint37Node(AnimationRootNode v)
	{
		_addBlendPoint(37, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint37Pos()
	{
		return getBlendPointPosition(37);
	}
	/// ditto
	@property void blendPoint37Pos(Vector2 v)
	{
		setBlendPointPosition(37, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint38Node()
	{
		return getBlendPointNode(38);
	}
	/// ditto
	@property void blendPoint38Node(AnimationRootNode v)
	{
		_addBlendPoint(38, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint38Pos()
	{
		return getBlendPointPosition(38);
	}
	/// ditto
	@property void blendPoint38Pos(Vector2 v)
	{
		setBlendPointPosition(38, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint39Node()
	{
		return getBlendPointNode(39);
	}
	/// ditto
	@property void blendPoint39Node(AnimationRootNode v)
	{
		_addBlendPoint(39, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint39Pos()
	{
		return getBlendPointPosition(39);
	}
	/// ditto
	@property void blendPoint39Pos(Vector2 v)
	{
		setBlendPointPosition(39, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint40Node()
	{
		return getBlendPointNode(40);
	}
	/// ditto
	@property void blendPoint40Node(AnimationRootNode v)
	{
		_addBlendPoint(40, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint40Pos()
	{
		return getBlendPointPosition(40);
	}
	/// ditto
	@property void blendPoint40Pos(Vector2 v)
	{
		setBlendPointPosition(40, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint41Node()
	{
		return getBlendPointNode(41);
	}
	/// ditto
	@property void blendPoint41Node(AnimationRootNode v)
	{
		_addBlendPoint(41, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint41Pos()
	{
		return getBlendPointPosition(41);
	}
	/// ditto
	@property void blendPoint41Pos(Vector2 v)
	{
		setBlendPointPosition(41, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint42Node()
	{
		return getBlendPointNode(42);
	}
	/// ditto
	@property void blendPoint42Node(AnimationRootNode v)
	{
		_addBlendPoint(42, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint42Pos()
	{
		return getBlendPointPosition(42);
	}
	/// ditto
	@property void blendPoint42Pos(Vector2 v)
	{
		setBlendPointPosition(42, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint43Node()
	{
		return getBlendPointNode(43);
	}
	/// ditto
	@property void blendPoint43Node(AnimationRootNode v)
	{
		_addBlendPoint(43, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint43Pos()
	{
		return getBlendPointPosition(43);
	}
	/// ditto
	@property void blendPoint43Pos(Vector2 v)
	{
		setBlendPointPosition(43, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint44Node()
	{
		return getBlendPointNode(44);
	}
	/// ditto
	@property void blendPoint44Node(AnimationRootNode v)
	{
		_addBlendPoint(44, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint44Pos()
	{
		return getBlendPointPosition(44);
	}
	/// ditto
	@property void blendPoint44Pos(Vector2 v)
	{
		setBlendPointPosition(44, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint45Node()
	{
		return getBlendPointNode(45);
	}
	/// ditto
	@property void blendPoint45Node(AnimationRootNode v)
	{
		_addBlendPoint(45, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint45Pos()
	{
		return getBlendPointPosition(45);
	}
	/// ditto
	@property void blendPoint45Pos(Vector2 v)
	{
		setBlendPointPosition(45, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint46Node()
	{
		return getBlendPointNode(46);
	}
	/// ditto
	@property void blendPoint46Node(AnimationRootNode v)
	{
		_addBlendPoint(46, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint46Pos()
	{
		return getBlendPointPosition(46);
	}
	/// ditto
	@property void blendPoint46Pos(Vector2 v)
	{
		setBlendPointPosition(46, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint47Node()
	{
		return getBlendPointNode(47);
	}
	/// ditto
	@property void blendPoint47Node(AnimationRootNode v)
	{
		_addBlendPoint(47, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint47Pos()
	{
		return getBlendPointPosition(47);
	}
	/// ditto
	@property void blendPoint47Pos(Vector2 v)
	{
		setBlendPointPosition(47, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint48Node()
	{
		return getBlendPointNode(48);
	}
	/// ditto
	@property void blendPoint48Node(AnimationRootNode v)
	{
		_addBlendPoint(48, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint48Pos()
	{
		return getBlendPointPosition(48);
	}
	/// ditto
	@property void blendPoint48Pos(Vector2 v)
	{
		setBlendPointPosition(48, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint49Node()
	{
		return getBlendPointNode(49);
	}
	/// ditto
	@property void blendPoint49Node(AnimationRootNode v)
	{
		_addBlendPoint(49, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint49Pos()
	{
		return getBlendPointPosition(49);
	}
	/// ditto
	@property void blendPoint49Pos(Vector2 v)
	{
		setBlendPointPosition(49, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint50Node()
	{
		return getBlendPointNode(50);
	}
	/// ditto
	@property void blendPoint50Node(AnimationRootNode v)
	{
		_addBlendPoint(50, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint50Pos()
	{
		return getBlendPointPosition(50);
	}
	/// ditto
	@property void blendPoint50Pos(Vector2 v)
	{
		setBlendPointPosition(50, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint51Node()
	{
		return getBlendPointNode(51);
	}
	/// ditto
	@property void blendPoint51Node(AnimationRootNode v)
	{
		_addBlendPoint(51, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint51Pos()
	{
		return getBlendPointPosition(51);
	}
	/// ditto
	@property void blendPoint51Pos(Vector2 v)
	{
		setBlendPointPosition(51, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint52Node()
	{
		return getBlendPointNode(52);
	}
	/// ditto
	@property void blendPoint52Node(AnimationRootNode v)
	{
		_addBlendPoint(52, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint52Pos()
	{
		return getBlendPointPosition(52);
	}
	/// ditto
	@property void blendPoint52Pos(Vector2 v)
	{
		setBlendPointPosition(52, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint53Node()
	{
		return getBlendPointNode(53);
	}
	/// ditto
	@property void blendPoint53Node(AnimationRootNode v)
	{
		_addBlendPoint(53, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint53Pos()
	{
		return getBlendPointPosition(53);
	}
	/// ditto
	@property void blendPoint53Pos(Vector2 v)
	{
		setBlendPointPosition(53, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint54Node()
	{
		return getBlendPointNode(54);
	}
	/// ditto
	@property void blendPoint54Node(AnimationRootNode v)
	{
		_addBlendPoint(54, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint54Pos()
	{
		return getBlendPointPosition(54);
	}
	/// ditto
	@property void blendPoint54Pos(Vector2 v)
	{
		setBlendPointPosition(54, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint55Node()
	{
		return getBlendPointNode(55);
	}
	/// ditto
	@property void blendPoint55Node(AnimationRootNode v)
	{
		_addBlendPoint(55, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint55Pos()
	{
		return getBlendPointPosition(55);
	}
	/// ditto
	@property void blendPoint55Pos(Vector2 v)
	{
		setBlendPointPosition(55, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint56Node()
	{
		return getBlendPointNode(56);
	}
	/// ditto
	@property void blendPoint56Node(AnimationRootNode v)
	{
		_addBlendPoint(56, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint56Pos()
	{
		return getBlendPointPosition(56);
	}
	/// ditto
	@property void blendPoint56Pos(Vector2 v)
	{
		setBlendPointPosition(56, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint57Node()
	{
		return getBlendPointNode(57);
	}
	/// ditto
	@property void blendPoint57Node(AnimationRootNode v)
	{
		_addBlendPoint(57, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint57Pos()
	{
		return getBlendPointPosition(57);
	}
	/// ditto
	@property void blendPoint57Pos(Vector2 v)
	{
		setBlendPointPosition(57, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint58Node()
	{
		return getBlendPointNode(58);
	}
	/// ditto
	@property void blendPoint58Node(AnimationRootNode v)
	{
		_addBlendPoint(58, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint58Pos()
	{
		return getBlendPointPosition(58);
	}
	/// ditto
	@property void blendPoint58Pos(Vector2 v)
	{
		setBlendPointPosition(58, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint59Node()
	{
		return getBlendPointNode(59);
	}
	/// ditto
	@property void blendPoint59Node(AnimationRootNode v)
	{
		_addBlendPoint(59, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint59Pos()
	{
		return getBlendPointPosition(59);
	}
	/// ditto
	@property void blendPoint59Pos(Vector2 v)
	{
		setBlendPointPosition(59, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint60Node()
	{
		return getBlendPointNode(60);
	}
	/// ditto
	@property void blendPoint60Node(AnimationRootNode v)
	{
		_addBlendPoint(60, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint60Pos()
	{
		return getBlendPointPosition(60);
	}
	/// ditto
	@property void blendPoint60Pos(Vector2 v)
	{
		setBlendPointPosition(60, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint61Node()
	{
		return getBlendPointNode(61);
	}
	/// ditto
	@property void blendPoint61Node(AnimationRootNode v)
	{
		_addBlendPoint(61, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint61Pos()
	{
		return getBlendPointPosition(61);
	}
	/// ditto
	@property void blendPoint61Pos(Vector2 v)
	{
		setBlendPointPosition(61, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint62Node()
	{
		return getBlendPointNode(62);
	}
	/// ditto
	@property void blendPoint62Node(AnimationRootNode v)
	{
		_addBlendPoint(62, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint62Pos()
	{
		return getBlendPointPosition(62);
	}
	/// ditto
	@property void blendPoint62Pos(Vector2 v)
	{
		setBlendPointPosition(62, v);
	}
	/**
	
	*/
	@property AnimationRootNode blendPoint63Node()
	{
		return getBlendPointNode(63);
	}
	/// ditto
	@property void blendPoint63Node(AnimationRootNode v)
	{
		_addBlendPoint(63, v);
	}
	/**
	
	*/
	@property Vector2 blendPoint63Pos()
	{
		return getBlendPointPosition(63);
	}
	/// ditto
	@property void blendPoint63Pos(Vector2 v)
	{
		setBlendPointPosition(63, v);
	}
	/**
	
	*/
	@property PoolIntArray triangles()
	{
		return _getTriangles();
	}
	/// ditto
	@property void triangles(PoolIntArray v)
	{
		_setTriangles(v);
	}
	/**
	
	*/
	@property Vector2 minSpace()
	{
		return getMinSpace();
	}
	/// ditto
	@property void minSpace(Vector2 v)
	{
		setMinSpace(v);
	}
	/**
	
	*/
	@property Vector2 maxSpace()
	{
		return getMaxSpace();
	}
	/// ditto
	@property void maxSpace(Vector2 v)
	{
		setMaxSpace(v);
	}
	/**
	
	*/
	@property Vector2 snap()
	{
		return getSnap();
	}
	/// ditto
	@property void snap(Vector2 v)
	{
		setSnap(v);
	}
	/**
	
	*/
	@property String xLabel()
	{
		return getXLabel();
	}
	/// ditto
	@property void xLabel(String v)
	{
		setXLabel(v);
	}
	/**
	
	*/
	@property String yLabel()
	{
		return getYLabel();
	}
	/// ditto
	@property void yLabel(String v)
	{
		setYLabel(v);
	}
}
