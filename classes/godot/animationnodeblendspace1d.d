/**
Blends linearly between two of any number of $(D AnimationNode) of any type placed on a virtual axis.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodeblendspace1d;
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
/**
Blends linearly between two of any number of $(D AnimationNode) of any type placed on a virtual axis.

A resource to add to an $(D AnimationNodeBlendTree).
This is a virtual axis on which you can add any type of $(D AnimationNode) using $(D addBlendPoint).
Outputs the linear blend of the two $(D AnimationNode)s closest to the node's current value.
You can set the extents of the axis using the $(D minSpace) and $(D maxSpace).
*/
@GodotBaseClass struct AnimationNodeBlendSpace1D
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeBlendSpace1D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AnimationRootNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_add_blend_point") GodotMethod!(void, long, AnimationRootNode) _addBlendPoint;
		@GodotName("_tree_changed") GodotMethod!(void) _treeChanged;
		@GodotName("add_blend_point") GodotMethod!(void, AnimationRootNode, double, long) addBlendPoint;
		@GodotName("get_blend_point_count") GodotMethod!(long) getBlendPointCount;
		@GodotName("get_blend_point_node") GodotMethod!(AnimationRootNode, long) getBlendPointNode;
		@GodotName("get_blend_point_position") GodotMethod!(double, long) getBlendPointPosition;
		@GodotName("get_max_space") GodotMethod!(double) getMaxSpace;
		@GodotName("get_min_space") GodotMethod!(double) getMinSpace;
		@GodotName("get_snap") GodotMethod!(double) getSnap;
		@GodotName("get_value_label") GodotMethod!(String) getValueLabel;
		@GodotName("remove_blend_point") GodotMethod!(void, long) removeBlendPoint;
		@GodotName("set_blend_point_node") GodotMethod!(void, long, AnimationRootNode) setBlendPointNode;
		@GodotName("set_blend_point_position") GodotMethod!(void, long, double) setBlendPointPosition;
		@GodotName("set_max_space") GodotMethod!(void, double) setMaxSpace;
		@GodotName("set_min_space") GodotMethod!(void, double) setMinSpace;
		@GodotName("set_snap") GodotMethod!(void, double) setSnap;
		@GodotName("set_value_label") GodotMethod!(void, String) setValueLabel;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeBlendSpace1D other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) AnimationNodeBlendSpace1D opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of AnimationNodeBlendSpace1D.
	/// Note: use `memnew!AnimationNodeBlendSpace1D` instead.
	static AnimationNodeBlendSpace1D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeBlendSpace1D");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeBlendSpace1D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _addBlendPoint(in long index, AnimationRootNode node)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(index);
		_GODOT_args.append(node);
		String _GODOT_method_name = String("_add_blend_point");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _treeChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_tree_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds a new point that represents a `node` on the virtual axis at a given position set by `pos`. You can insert it at a specific index using the `at_index` argument. If you use the default value for `at_index`, the point is inserted at the end of the blend points array.
	*/
	void addBlendPoint(AnimationRootNode node, in double pos, in long at_index = -1)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addBlendPoint, _godot_object, node, pos, at_index);
	}
	/**
	Returns the number of points on the blend axis.
	*/
	long getBlendPointCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBlendPointCount, _godot_object);
	}
	/**
	Returns the $(D AnimationNode) referenced by the point at index `point`.
	*/
	Ref!AnimationRootNode getBlendPointNode(in long point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationRootNode)(GDNativeClassBinding.getBlendPointNode, _godot_object, point);
	}
	/**
	Returns the position of the point at index `point`.
	*/
	double getBlendPointPosition(in long point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBlendPointPosition, _godot_object, point);
	}
	/**
	
	*/
	double getMaxSpace() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMaxSpace, _godot_object);
	}
	/**
	
	*/
	double getMinSpace() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMinSpace, _godot_object);
	}
	/**
	
	*/
	double getSnap() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getSnap, _godot_object);
	}
	/**
	
	*/
	String getValueLabel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getValueLabel, _godot_object);
	}
	/**
	Removes the point at index `point` from the blend axis.
	*/
	void removeBlendPoint(in long point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeBlendPoint, _godot_object, point);
	}
	/**
	Changes the $(D AnimationNode) referenced by the point at index `point`.
	*/
	void setBlendPointNode(in long point, AnimationRootNode node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendPointNode, _godot_object, point, node);
	}
	/**
	Updates the position of the point at index `point` on the blend axis.
	*/
	void setBlendPointPosition(in long point, in double pos)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBlendPointPosition, _godot_object, point, pos);
	}
	/**
	
	*/
	void setMaxSpace(in double max_space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMaxSpace, _godot_object, max_space);
	}
	/**
	
	*/
	void setMinSpace(in double min_space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMinSpace, _godot_object, min_space);
	}
	/**
	
	*/
	void setSnap(in double snap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSnap, _godot_object, snap);
	}
	/**
	
	*/
	void setValueLabel(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setValueLabel, _godot_object, text);
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
	@property double blendPoint0Pos()
	{
		return getBlendPointPosition(0);
	}
	/// ditto
	@property void blendPoint0Pos(double v)
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
	@property double blendPoint1Pos()
	{
		return getBlendPointPosition(1);
	}
	/// ditto
	@property void blendPoint1Pos(double v)
	{
		setBlendPointPosition(1, v);
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
	@property double blendPoint10Pos()
	{
		return getBlendPointPosition(10);
	}
	/// ditto
	@property void blendPoint10Pos(double v)
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
	@property double blendPoint11Pos()
	{
		return getBlendPointPosition(11);
	}
	/// ditto
	@property void blendPoint11Pos(double v)
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
	@property double blendPoint12Pos()
	{
		return getBlendPointPosition(12);
	}
	/// ditto
	@property void blendPoint12Pos(double v)
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
	@property double blendPoint13Pos()
	{
		return getBlendPointPosition(13);
	}
	/// ditto
	@property void blendPoint13Pos(double v)
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
	@property double blendPoint14Pos()
	{
		return getBlendPointPosition(14);
	}
	/// ditto
	@property void blendPoint14Pos(double v)
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
	@property double blendPoint15Pos()
	{
		return getBlendPointPosition(15);
	}
	/// ditto
	@property void blendPoint15Pos(double v)
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
	@property double blendPoint16Pos()
	{
		return getBlendPointPosition(16);
	}
	/// ditto
	@property void blendPoint16Pos(double v)
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
	@property double blendPoint17Pos()
	{
		return getBlendPointPosition(17);
	}
	/// ditto
	@property void blendPoint17Pos(double v)
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
	@property double blendPoint18Pos()
	{
		return getBlendPointPosition(18);
	}
	/// ditto
	@property void blendPoint18Pos(double v)
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
	@property double blendPoint19Pos()
	{
		return getBlendPointPosition(19);
	}
	/// ditto
	@property void blendPoint19Pos(double v)
	{
		setBlendPointPosition(19, v);
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
	@property double blendPoint2Pos()
	{
		return getBlendPointPosition(2);
	}
	/// ditto
	@property void blendPoint2Pos(double v)
	{
		setBlendPointPosition(2, v);
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
	@property double blendPoint20Pos()
	{
		return getBlendPointPosition(20);
	}
	/// ditto
	@property void blendPoint20Pos(double v)
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
	@property double blendPoint21Pos()
	{
		return getBlendPointPosition(21);
	}
	/// ditto
	@property void blendPoint21Pos(double v)
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
	@property double blendPoint22Pos()
	{
		return getBlendPointPosition(22);
	}
	/// ditto
	@property void blendPoint22Pos(double v)
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
	@property double blendPoint23Pos()
	{
		return getBlendPointPosition(23);
	}
	/// ditto
	@property void blendPoint23Pos(double v)
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
	@property double blendPoint24Pos()
	{
		return getBlendPointPosition(24);
	}
	/// ditto
	@property void blendPoint24Pos(double v)
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
	@property double blendPoint25Pos()
	{
		return getBlendPointPosition(25);
	}
	/// ditto
	@property void blendPoint25Pos(double v)
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
	@property double blendPoint26Pos()
	{
		return getBlendPointPosition(26);
	}
	/// ditto
	@property void blendPoint26Pos(double v)
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
	@property double blendPoint27Pos()
	{
		return getBlendPointPosition(27);
	}
	/// ditto
	@property void blendPoint27Pos(double v)
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
	@property double blendPoint28Pos()
	{
		return getBlendPointPosition(28);
	}
	/// ditto
	@property void blendPoint28Pos(double v)
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
	@property double blendPoint29Pos()
	{
		return getBlendPointPosition(29);
	}
	/// ditto
	@property void blendPoint29Pos(double v)
	{
		setBlendPointPosition(29, v);
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
	@property double blendPoint3Pos()
	{
		return getBlendPointPosition(3);
	}
	/// ditto
	@property void blendPoint3Pos(double v)
	{
		setBlendPointPosition(3, v);
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
	@property double blendPoint30Pos()
	{
		return getBlendPointPosition(30);
	}
	/// ditto
	@property void blendPoint30Pos(double v)
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
	@property double blendPoint31Pos()
	{
		return getBlendPointPosition(31);
	}
	/// ditto
	@property void blendPoint31Pos(double v)
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
	@property double blendPoint32Pos()
	{
		return getBlendPointPosition(32);
	}
	/// ditto
	@property void blendPoint32Pos(double v)
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
	@property double blendPoint33Pos()
	{
		return getBlendPointPosition(33);
	}
	/// ditto
	@property void blendPoint33Pos(double v)
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
	@property double blendPoint34Pos()
	{
		return getBlendPointPosition(34);
	}
	/// ditto
	@property void blendPoint34Pos(double v)
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
	@property double blendPoint35Pos()
	{
		return getBlendPointPosition(35);
	}
	/// ditto
	@property void blendPoint35Pos(double v)
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
	@property double blendPoint36Pos()
	{
		return getBlendPointPosition(36);
	}
	/// ditto
	@property void blendPoint36Pos(double v)
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
	@property double blendPoint37Pos()
	{
		return getBlendPointPosition(37);
	}
	/// ditto
	@property void blendPoint37Pos(double v)
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
	@property double blendPoint38Pos()
	{
		return getBlendPointPosition(38);
	}
	/// ditto
	@property void blendPoint38Pos(double v)
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
	@property double blendPoint39Pos()
	{
		return getBlendPointPosition(39);
	}
	/// ditto
	@property void blendPoint39Pos(double v)
	{
		setBlendPointPosition(39, v);
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
	@property double blendPoint4Pos()
	{
		return getBlendPointPosition(4);
	}
	/// ditto
	@property void blendPoint4Pos(double v)
	{
		setBlendPointPosition(4, v);
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
	@property double blendPoint40Pos()
	{
		return getBlendPointPosition(40);
	}
	/// ditto
	@property void blendPoint40Pos(double v)
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
	@property double blendPoint41Pos()
	{
		return getBlendPointPosition(41);
	}
	/// ditto
	@property void blendPoint41Pos(double v)
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
	@property double blendPoint42Pos()
	{
		return getBlendPointPosition(42);
	}
	/// ditto
	@property void blendPoint42Pos(double v)
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
	@property double blendPoint43Pos()
	{
		return getBlendPointPosition(43);
	}
	/// ditto
	@property void blendPoint43Pos(double v)
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
	@property double blendPoint44Pos()
	{
		return getBlendPointPosition(44);
	}
	/// ditto
	@property void blendPoint44Pos(double v)
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
	@property double blendPoint45Pos()
	{
		return getBlendPointPosition(45);
	}
	/// ditto
	@property void blendPoint45Pos(double v)
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
	@property double blendPoint46Pos()
	{
		return getBlendPointPosition(46);
	}
	/// ditto
	@property void blendPoint46Pos(double v)
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
	@property double blendPoint47Pos()
	{
		return getBlendPointPosition(47);
	}
	/// ditto
	@property void blendPoint47Pos(double v)
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
	@property double blendPoint48Pos()
	{
		return getBlendPointPosition(48);
	}
	/// ditto
	@property void blendPoint48Pos(double v)
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
	@property double blendPoint49Pos()
	{
		return getBlendPointPosition(49);
	}
	/// ditto
	@property void blendPoint49Pos(double v)
	{
		setBlendPointPosition(49, v);
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
	@property double blendPoint5Pos()
	{
		return getBlendPointPosition(5);
	}
	/// ditto
	@property void blendPoint5Pos(double v)
	{
		setBlendPointPosition(5, v);
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
	@property double blendPoint50Pos()
	{
		return getBlendPointPosition(50);
	}
	/// ditto
	@property void blendPoint50Pos(double v)
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
	@property double blendPoint51Pos()
	{
		return getBlendPointPosition(51);
	}
	/// ditto
	@property void blendPoint51Pos(double v)
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
	@property double blendPoint52Pos()
	{
		return getBlendPointPosition(52);
	}
	/// ditto
	@property void blendPoint52Pos(double v)
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
	@property double blendPoint53Pos()
	{
		return getBlendPointPosition(53);
	}
	/// ditto
	@property void blendPoint53Pos(double v)
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
	@property double blendPoint54Pos()
	{
		return getBlendPointPosition(54);
	}
	/// ditto
	@property void blendPoint54Pos(double v)
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
	@property double blendPoint55Pos()
	{
		return getBlendPointPosition(55);
	}
	/// ditto
	@property void blendPoint55Pos(double v)
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
	@property double blendPoint56Pos()
	{
		return getBlendPointPosition(56);
	}
	/// ditto
	@property void blendPoint56Pos(double v)
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
	@property double blendPoint57Pos()
	{
		return getBlendPointPosition(57);
	}
	/// ditto
	@property void blendPoint57Pos(double v)
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
	@property double blendPoint58Pos()
	{
		return getBlendPointPosition(58);
	}
	/// ditto
	@property void blendPoint58Pos(double v)
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
	@property double blendPoint59Pos()
	{
		return getBlendPointPosition(59);
	}
	/// ditto
	@property void blendPoint59Pos(double v)
	{
		setBlendPointPosition(59, v);
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
	@property double blendPoint6Pos()
	{
		return getBlendPointPosition(6);
	}
	/// ditto
	@property void blendPoint6Pos(double v)
	{
		setBlendPointPosition(6, v);
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
	@property double blendPoint60Pos()
	{
		return getBlendPointPosition(60);
	}
	/// ditto
	@property void blendPoint60Pos(double v)
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
	@property double blendPoint61Pos()
	{
		return getBlendPointPosition(61);
	}
	/// ditto
	@property void blendPoint61Pos(double v)
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
	@property double blendPoint62Pos()
	{
		return getBlendPointPosition(62);
	}
	/// ditto
	@property void blendPoint62Pos(double v)
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
	@property double blendPoint63Pos()
	{
		return getBlendPointPosition(63);
	}
	/// ditto
	@property void blendPoint63Pos(double v)
	{
		setBlendPointPosition(63, v);
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
	@property double blendPoint7Pos()
	{
		return getBlendPointPosition(7);
	}
	/// ditto
	@property void blendPoint7Pos(double v)
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
	@property double blendPoint8Pos()
	{
		return getBlendPointPosition(8);
	}
	/// ditto
	@property void blendPoint8Pos(double v)
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
	@property double blendPoint9Pos()
	{
		return getBlendPointPosition(9);
	}
	/// ditto
	@property void blendPoint9Pos(double v)
	{
		setBlendPointPosition(9, v);
	}
	/**
	The blend space's axis's upper limit for the points' position. See $(D addBlendPoint).
	*/
	@property double maxSpace()
	{
		return getMaxSpace();
	}
	/// ditto
	@property void maxSpace(double v)
	{
		setMaxSpace(v);
	}
	/**
	The blend space's axis's lower limit for the points' position. See $(D addBlendPoint).
	*/
	@property double minSpace()
	{
		return getMinSpace();
	}
	/// ditto
	@property void minSpace(double v)
	{
		setMinSpace(v);
	}
	/**
	Position increment to snap to when moving a point on the axis.
	*/
	@property double snap()
	{
		return getSnap();
	}
	/// ditto
	@property void snap(double v)
	{
		setSnap(v);
	}
	/**
	Label of the virtual axis of the blend space.
	*/
	@property String valueLabel()
	{
		return getValueLabel();
	}
	/// ditto
	@property void valueLabel(String v)
	{
		setValueLabel(v);
	}
}
