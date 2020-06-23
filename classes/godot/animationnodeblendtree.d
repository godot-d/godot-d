/**
$(D AnimationTree) node resource that contains many blend type nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodeblendtree;
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
/**
$(D AnimationTree) node resource that contains many blend type nodes.

This node may contain a sub-tree of any other blend type nodes, such as mix, blend2, blend3, one shot, etc. This is one of the most commonly used roots.
*/
@GodotBaseClass struct AnimationNodeBlendTree
{
	package(godot) enum string _GODOT_internal_name = "AnimationNodeBlendTree";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AnimationRootNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_node_changed") GodotMethod!(void, String) _nodeChanged;
		@GodotName("_tree_changed") GodotMethod!(void) _treeChanged;
		@GodotName("add_node") GodotMethod!(void, String, AnimationNode, Vector2) addNode;
		@GodotName("connect_node") GodotMethod!(void, String, long, String) connectNode;
		@GodotName("disconnect_node") GodotMethod!(void, String, long) disconnectNode;
		@GodotName("get_graph_offset") GodotMethod!(Vector2) getGraphOffset;
		@GodotName("get_node") GodotMethod!(AnimationNode, String) getNode;
		@GodotName("get_node_position") GodotMethod!(Vector2, String) getNodePosition;
		@GodotName("has_node") GodotMethod!(bool, String) hasNode;
		@GodotName("remove_node") GodotMethod!(void, String) removeNode;
		@GodotName("rename_node") GodotMethod!(void, String, String) renameNode;
		@GodotName("set_graph_offset") GodotMethod!(void, Vector2) setGraphOffset;
		@GodotName("set_node_position") GodotMethod!(void, String, Vector2) setNodePosition;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNodeBlendTree other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) AnimationNodeBlendTree opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of AnimationNodeBlendTree.
	/// Note: use `memnew!AnimationNodeBlendTree` instead.
	static AnimationNodeBlendTree _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeBlendTree");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeBlendTree)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		The connection was successful.
		*/
		connectionOk = 0,
		/**
		The input node is `null`.
		*/
		connectionErrorNoInput = 1,
		/**
		The specified input port is out of range.
		*/
		connectionErrorNoInputIndex = 2,
		/**
		The output node is `null`.
		*/
		connectionErrorNoOutput = 3,
		/**
		Input and output nodes are the same.
		*/
		connectionErrorSameNode = 4,
		/**
		The specified connection already exists.
		*/
		connectionErrorConnectionExists = 5,
	}
	/**
	
	*/
	void _nodeChanged(in String node)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(node);
		String _GODOT_method_name = String("_node_changed");
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
	Adds an $(D AnimationNode) at the given `position`. The `name` is used to identify the created sub-node later.
	*/
	void addNode(in String name, AnimationNode node, in Vector2 position = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addNode, _godot_object, name, node, position);
	}
	/**
	Connects the output of an $(D AnimationNode) as input for another $(D AnimationNode), at the input port specified by `input_index`.
	*/
	void connectNode(in String input_node, in long input_index, in String output_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.connectNode, _godot_object, input_node, input_index, output_node);
	}
	/**
	Disconnects the node connected to the specified input.
	*/
	void disconnectNode(in String input_node, in long input_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.disconnectNode, _godot_object, input_node, input_index);
	}
	/**
	
	*/
	Vector2 getGraphOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGraphOffset, _godot_object);
	}
	/**
	Returns the sub-node with the specified `name`.
	*/
	Ref!AnimationNode getNode(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNode)(GDNativeClassBinding.getNode, _godot_object, name);
	}
	/**
	Returns the position of the sub-node with the specified `name`.
	*/
	Vector2 getNodePosition(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getNodePosition, _godot_object, name);
	}
	/**
	Returns `true` if a sub-node with specified `name` exists.
	*/
	bool hasNode(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasNode, _godot_object, name);
	}
	/**
	Removes a sub-node.
	*/
	void removeNode(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeNode, _godot_object, name);
	}
	/**
	Changes the name of a sub-node.
	*/
	void renameNode(in String name, in String new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.renameNode, _godot_object, name, new_name);
	}
	/**
	
	*/
	void setGraphOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGraphOffset, _godot_object, offset);
	}
	/**
	Modifies the position of a sub-node.
	*/
	void setNodePosition(in String name, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNodePosition, _godot_object, name, position);
	}
	/**
	The global offset of all sub-nodes.
	*/
	@property Vector2 graphOffset()
	{
		return getGraphOffset();
	}
	/// ditto
	@property void graphOffset(Vector2 v)
	{
		setGraphOffset(v);
	}
}
