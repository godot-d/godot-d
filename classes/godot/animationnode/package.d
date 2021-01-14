/**
Base resource for $(D AnimationTree) nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
/**
Base resource for $(D AnimationTree) nodes.

In general, it's not used directly, but you can create custom ones with custom blending formulas.
Inherit this when creating nodes mainly for use in $(D AnimationNodeBlendTree), otherwise $(D AnimationRootNode) should be used instead.
*/
@GodotBaseClass struct AnimationNode
{
	package(godot) enum string _GODOT_internal_name = "AnimationNode";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_filters") GodotMethod!(Array) _getFilters;
		@GodotName("_set_filters") GodotMethod!(void, Array) _setFilters;
		@GodotName("add_input") GodotMethod!(void, String) addInput;
		@GodotName("blend_animation") GodotMethod!(void, String, double, double, bool, double) blendAnimation;
		@GodotName("blend_input") GodotMethod!(double, long, double, bool, double, long, bool) blendInput;
		@GodotName("blend_node") GodotMethod!(double, String, AnimationNode, double, bool, double, long, bool) blendNode;
		@GodotName("get_caption") GodotMethod!(String) getCaption;
		@GodotName("get_child_by_name") GodotMethod!(GodotObject, String) getChildByName;
		@GodotName("get_child_nodes") GodotMethod!(Dictionary) getChildNodes;
		@GodotName("get_input_count") GodotMethod!(long) getInputCount;
		@GodotName("get_input_name") GodotMethod!(String, long) getInputName;
		@GodotName("get_parameter") GodotMethod!(Variant, String) getParameter;
		@GodotName("get_parameter_default_value") GodotMethod!(Variant, String) getParameterDefaultValue;
		@GodotName("get_parameter_list") GodotMethod!(Array) getParameterList;
		@GodotName("has_filter") GodotMethod!(String) hasFilter;
		@GodotName("is_filter_enabled") GodotMethod!(bool) isFilterEnabled;
		@GodotName("is_path_filtered") GodotMethod!(bool, NodePath) isPathFiltered;
		@GodotName("process") GodotMethod!(void, double, bool) process;
		@GodotName("remove_input") GodotMethod!(void, long) removeInput;
		@GodotName("set_filter_enabled") GodotMethod!(void, bool) setFilterEnabled;
		@GodotName("set_filter_path") GodotMethod!(void, NodePath, bool) setFilterPath;
		@GodotName("set_parameter") GodotMethod!(void, String, Variant) setParameter;
	}
	/// 
	pragma(inline, true) bool opEquals(in AnimationNode other) const
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
	/// Construct a new instance of AnimationNode.
	/// Note: use `memnew!AnimationNode` instead.
	static AnimationNode _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNode");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNode)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum FilterAction : int
	{
		/**
		Do not use filtering.
		*/
		filterIgnore = 0,
		/**
		Paths matching the filter will be allowed to pass.
		*/
		filterPass = 1,
		/**
		Paths matching the filter will be discarded.
		*/
		filterStop = 2,
		/**
		Paths matching the filter will be blended (by the blend value).
		*/
		filterBlend = 3,
	}
	/// 
	enum Constants : int
	{
		filterIgnore = 0,
		filterPass = 1,
		filterStop = 2,
		filterBlend = 3,
	}
	/**
	
	*/
	Array _getFilters() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_filters");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setFilters(in Array filters)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(filters);
		String _GODOT_method_name = String("_set_filters");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Adds an input to the node. This is only useful for nodes created for use in an $(D AnimationNodeBlendTree).
	*/
	void addInput(in String name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addInput, _godot_object, name);
	}
	/**
	Blend an animation by `blend` amount (name must be valid in the linked $(D AnimationPlayer)). A `time` and `delta` may be passed, as well as whether `seek` happened.
	*/
	void blendAnimation(in String animation, in double time, in double delta, in bool seeked, in double blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blendAnimation, _godot_object, animation, time, delta, seeked, blend);
	}
	/**
	Blend an input. This is only useful for nodes created for an $(D AnimationNodeBlendTree). The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute. A filter mode may be optionally passed (see $(D filteraction) for options).
	*/
	double blendInput(in long input_index, in double time, in bool seek, in double blend, in long filter = 0, in bool optimize = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.blendInput, _godot_object, input_index, time, seek, blend, filter, optimize);
	}
	/**
	Blend another animation node (in case this node contains children animation nodes). This function is only useful if you inherit from $(D AnimationRootNode) instead, else editors will not display your node for addition.
	*/
	double blendNode(in String name, AnimationNode node, in double time, in bool seek, in double blend, in long filter = 0, in bool optimize = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.blendNode, _godot_object, name, node, time, seek, blend, filter, optimize);
	}
	/**
	Gets the text caption for this node (used by some editors).
	*/
	String getCaption()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_caption");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	Gets a child node by index (used by editors inheriting from $(D AnimationRootNode)).
	*/
	GodotObject getChildByName(in String name)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(name);
		String _GODOT_method_name = String("get_child_by_name");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!GodotObject);
	}
	/**
	Gets all children nodes in order as a `name: node` dictionary. Only useful when inheriting $(D AnimationRootNode).
	*/
	Dictionary getChildNodes()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_child_nodes");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	Amount of inputs in this node, only useful for nodes that go into $(D AnimationNodeBlendTree).
	*/
	long getInputCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getInputCount, _godot_object);
	}
	/**
	Gets the name of an input by index.
	*/
	String getInputName(in long input)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getInputName, _godot_object, input);
	}
	/**
	Gets the value of a parameter. Parameters are custom local memory used for your nodes, given a resource can be reused in multiple trees.
	*/
	Variant getParameter(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.getParameter, _godot_object, name);
	}
	/**
	Gets the default value of a parameter. Parameters are custom local memory used for your nodes, given a resource can be reused in multiple trees.
	*/
	Variant getParameterDefaultValue(in String name)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(name);
		String _GODOT_method_name = String("get_parameter_default_value");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Gets the property information for parameter. Parameters are custom local memory used for your nodes, given a resource can be reused in multiple trees. Format is similar to $(D GodotObject.getPropertyList).
	*/
	Array getParameterList()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("get_parameter_list");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	Returns `true` whether you want the blend tree editor to display filter editing on this node.
	*/
	String hasFilter()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("has_filter");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	bool isFilterEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFilterEnabled, _godot_object);
	}
	/**
	Returns `true` whether a given path is filtered.
	*/
	bool isPathFiltered(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isPathFiltered, _godot_object, path);
	}
	/**
	User-defined callback called when a custom node is processed. The `time` parameter is a relative delta, unless `seek` is `true`, in which case it is absolute.
	Here, call the $(D blendInput), $(D blendNode) or $(D blendAnimation) functions. You can also use $(D getParameter) and $(D setParameter) to modify local memory.
	This function should return the time left for the current animation to finish (if unsure, pass the value from the main blend being called).
	*/
	void process(in double time, in bool seek)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(time);
		_GODOT_args.append(seek);
		String _GODOT_method_name = String("process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Removes an input, call this only when inactive.
	*/
	void removeInput(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeInput, _godot_object, index);
	}
	/**
	
	*/
	void setFilterEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFilterEnabled, _godot_object, enable);
	}
	/**
	Adds or removes a path for the filter.
	*/
	void setFilterPath(NodePathArg0)(in NodePathArg0 path, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFilterPath, _godot_object, path, enable);
	}
	/**
	Sets a custom parameter. These are used as local storage, because resources can be reused across the tree or scenes.
	*/
	void setParameter(VariantArg1)(in String name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setParameter, _godot_object, name, value);
	}
	/**
	If `true`, filtering is enabled.
	*/
	@property bool filterEnabled()
	{
		return isFilterEnabled();
	}
	/// ditto
	@property void filterEnabled(bool v)
	{
		setFilterEnabled(v);
	}
	/**
	
	*/
	@property Array filters()
	{
		return _getFilters();
	}
	/// ditto
	@property void filters(Array v)
	{
		_setFilters(v);
	}
}
