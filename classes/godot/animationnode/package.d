/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnode;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct AnimationNode
{
	enum string _GODOT_internal_name = "AnimationNode";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("process") GodotMethod!(void, double, bool) process;
		@GodotName("get_caption") GodotMethod!(String) getCaption;
		@GodotName("has_filter") GodotMethod!(String) hasFilter;
		@GodotName("get_input_count") GodotMethod!(long) getInputCount;
		@GodotName("get_input_name") GodotMethod!(String, long) getInputName;
		@GodotName("add_input") GodotMethod!(void, String) addInput;
		@GodotName("remove_input") GodotMethod!(void, long) removeInput;
		@GodotName("set_filter_path") GodotMethod!(void, NodePath, bool) setFilterPath;
		@GodotName("is_path_filtered") GodotMethod!(bool, NodePath) isPathFiltered;
		@GodotName("set_filter_enabled") GodotMethod!(void, bool) setFilterEnabled;
		@GodotName("is_filter_enabled") GodotMethod!(bool) isFilterEnabled;
		@GodotName("_set_filters") GodotMethod!(void, Array) _setFilters;
		@GodotName("_get_filters") GodotMethod!(Array) _getFilters;
		@GodotName("blend_animation") GodotMethod!(void, String, double, double, bool, double) blendAnimation;
		@GodotName("blend_node") GodotMethod!(double, String, AnimationNode, double, bool, double, long, bool) blendNode;
		@GodotName("blend_input") GodotMethod!(double, long, double, bool, double, long, bool) blendInput;
		@GodotName("set_parameter") GodotMethod!(void, String, Variant) setParameter;
		@GodotName("get_parameter") GodotMethod!(Variant, String) getParameter;
	}
	bool opEquals(in AnimationNode other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNode opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		
		*/
		filterIgnore = 0,
		/**
		
		*/
		filterPass = 1,
		/**
		
		*/
		filterStop = 2,
		/**
		
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
	void process(in double time, in bool seek)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(time);
		_GODOT_args.append(seek);
		String _GODOT_method_name = String("process");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	String getCaption()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("get_caption");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	String hasFilter()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("has_filter");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!String);
	}
	/**
	
	*/
	long getInputCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getInputCount, _godot_object);
	}
	/**
	
	*/
	String getInputName(in long input)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getInputName, _godot_object, input);
	}
	/**
	
	*/
	void addInput(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addInput, _godot_object, name);
	}
	/**
	
	*/
	void removeInput(in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeInput, _godot_object, index);
	}
	/**
	
	*/
	void setFilterPath(NodePathArg0)(in NodePathArg0 path, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFilterPath, _godot_object, path, enable);
	}
	/**
	
	*/
	bool isPathFiltered(NodePathArg0)(in NodePathArg0 path) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPathFiltered, _godot_object, path);
	}
	/**
	
	*/
	void setFilterEnabled(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFilterEnabled, _godot_object, enable);
	}
	/**
	
	*/
	bool isFilterEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isFilterEnabled, _godot_object);
	}
	/**
	
	*/
	void _setFilters(in Array filters)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(filters);
		String _GODOT_method_name = String("_set_filters");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getFilters() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_filters");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void blendAnimation(StringArg0)(in StringArg0 animation, in double time, in double delta, in bool seeked, in double blend)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blendAnimation, _godot_object, animation, time, delta, seeked, blend);
	}
	/**
	
	*/
	double blendNode(StringArg0)(in StringArg0 name, AnimationNode node, in double time, in bool seek, in double blend, in long filter = 0, in bool optimize = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.blendNode, _godot_object, name, node, time, seek, blend, filter, optimize);
	}
	/**
	
	*/
	double blendInput(in long input_index, in double time, in bool seek, in double blend, in long filter = 0, in bool optimize = true)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.blendInput, _godot_object, input_index, time, seek, blend, filter, optimize);
	}
	/**
	
	*/
	void setParameter(StringArg0, VariantArg1)(in StringArg0 name, in VariantArg1 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParameter, _godot_object, name, value);
	}
	/**
	
	*/
	Variant getParameter(StringArg0)(in StringArg0 name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getParameter, _godot_object, name);
	}
	/**
	
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
