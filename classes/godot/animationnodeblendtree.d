/**


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
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct AnimationNodeBlendTree
{
	enum string _GODOT_internal_name = "AnimationNodeBlendTree";
public:
@nogc nothrow:
	union { godot_object _godot_object; AnimationRootNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_node") GodotMethod!(void, String, AnimationNode, Vector2) addNode;
		@GodotName("get_node") GodotMethod!(AnimationNode, String) getNode;
		@GodotName("remove_node") GodotMethod!(void, String) removeNode;
		@GodotName("rename_node") GodotMethod!(void, String, String) renameNode;
		@GodotName("has_node") GodotMethod!(bool, String) hasNode;
		@GodotName("connect_node") GodotMethod!(void, String, long, String) connectNode;
		@GodotName("disconnect_node") GodotMethod!(void, String, long) disconnectNode;
		@GodotName("set_node_position") GodotMethod!(void, String, Vector2) setNodePosition;
		@GodotName("get_node_position") GodotMethod!(Vector2, String) getNodePosition;
		@GodotName("set_graph_offset") GodotMethod!(void, Vector2) setGraphOffset;
		@GodotName("get_graph_offset") GodotMethod!(Vector2) getGraphOffset;
		@GodotName("_tree_changed") GodotMethod!(void) _treeChanged;
		@GodotName("_node_changed") GodotMethod!(void, String) _nodeChanged;
	}
	bool opEquals(in AnimationNodeBlendTree other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeBlendTree opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		connectionOk = 0,
		/**
		
		*/
		connectionErrorNoInput = 1,
		/**
		
		*/
		connectionErrorNoInputIndex = 2,
		/**
		
		*/
		connectionErrorNoOutput = 3,
		/**
		
		*/
		connectionErrorSameNode = 4,
		/**
		
		*/
		connectionErrorConnectionExists = 5,
	}
	/**
	
	*/
	void addNode(StringArg0)(in StringArg0 name, AnimationNode node, in Vector2 position = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addNode, _godot_object, name, node, position);
	}
	/**
	
	*/
	Ref!AnimationNode getNode(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AnimationNode)(_classBinding.getNode, _godot_object, name);
	}
	/**
	
	*/
	void removeNode(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeNode, _godot_object, name);
	}
	/**
	
	*/
	void renameNode(StringArg0, StringArg1)(in StringArg0 name, in StringArg1 new_name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.renameNode, _godot_object, name, new_name);
	}
	/**
	
	*/
	bool hasNode(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasNode, _godot_object, name);
	}
	/**
	
	*/
	void connectNode(StringArg0, StringArg2)(in StringArg0 input_node, in long input_index, in StringArg2 output_node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.connectNode, _godot_object, input_node, input_index, output_node);
	}
	/**
	
	*/
	void disconnectNode(StringArg0)(in StringArg0 input_node, in long input_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.disconnectNode, _godot_object, input_node, input_index);
	}
	/**
	
	*/
	void setNodePosition(StringArg0)(in StringArg0 name, in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodePosition, _godot_object, name, position);
	}
	/**
	
	*/
	Vector2 getNodePosition(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getNodePosition, _godot_object, name);
	}
	/**
	
	*/
	void setGraphOffset(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGraphOffset, _godot_object, offset);
	}
	/**
	
	*/
	Vector2 getGraphOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getGraphOffset, _godot_object);
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
	void _nodeChanged(StringArg0)(in StringArg0 node)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(node);
		String _GODOT_method_name = String("_node_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
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
