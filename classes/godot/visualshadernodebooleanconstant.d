/**
A boolean constant to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodebooleanconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
A boolean constant to be used within the visual shader graph.

Has only one output port and no inputs.
Translated to `bool` in the shader language.
*/
@GodotBaseClass struct VisualShaderNodeBooleanConstant
{
	enum string _GODOT_internal_name = "VisualShaderNodeBooleanConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_constant") GodotMethod!(bool) getConstant;
		@GodotName("set_constant") GodotMethod!(void, bool) setConstant;
	}
	bool opEquals(in VisualShaderNodeBooleanConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeBooleanConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeBooleanConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeBooleanConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeBooleanConstant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool getConstant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getConstant, _godot_object);
	}
	/**
	
	*/
	void setConstant(in bool value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstant, _godot_object, value);
	}
	/**
	A boolean constant which represents a state of this node.
	*/
	@property bool constant()
	{
		return getConstant();
	}
	/// ditto
	@property void constant(bool v)
	{
		setConstant(v);
	}
}
