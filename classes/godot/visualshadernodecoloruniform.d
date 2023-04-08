/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecoloruniform;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.visualshadernodeuniform;
/**

*/
@GodotBaseClass struct VisualShaderNodeColorUniform
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeColorUniform";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNodeUniform _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_default_value") GodotMethod!(Color) getDefaultValue;
		@GodotName("is_default_value_enabled") GodotMethod!(bool) isDefaultValueEnabled;
		@GodotName("set_default_value") GodotMethod!(void, Color) setDefaultValue;
		@GodotName("set_default_value_enabled") GodotMethod!(void, bool) setDefaultValueEnabled;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeColorUniform other) const
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
	/// Construct a new instance of VisualShaderNodeColorUniform.
	/// Note: use `memnew!VisualShaderNodeColorUniform` instead.
	static VisualShaderNodeColorUniform _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeColorUniform");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeColorUniform)(constructor());
	}
	/**
	
	*/
	Color getDefaultValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.getDefaultValue, _godot_object);
	}
	/**
	
	*/
	bool isDefaultValueEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDefaultValueEnabled, _godot_object);
	}
	/**
	
	*/
	void setDefaultValue(in Color value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultValue, _godot_object, value);
	}
	/**
	
	*/
	void setDefaultValueEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultValueEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	@property Color defaultValue()
	{
		return getDefaultValue();
	}
	/// ditto
	@property void defaultValue(Color v)
	{
		setDefaultValue(v);
	}
	/**
	
	*/
	@property bool defaultValueEnabled()
	{
		return isDefaultValueEnabled();
	}
	/// ditto
	@property void defaultValueEnabled(bool v)
	{
		setDefaultValueEnabled(v);
	}
}
