/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodevec3constant;
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

*/
@GodotBaseClass struct VisualShaderNodeVec3Constant
{
	enum string _GODOT_internal_name = "VisualShaderNodeVec3Constant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_constant") GodotMethod!(void, Vector3) setConstant;
		@GodotName("get_constant") GodotMethod!(Vector3) getConstant;
	}
	bool opEquals(in VisualShaderNodeVec3Constant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeVec3Constant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeVec3Constant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeVec3Constant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeVec3Constant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setConstant(in Vector3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstant, _godot_object, value);
	}
	/**
	
	*/
	Vector3 getConstant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getConstant, _godot_object);
	}
	/**
	
	*/
	@property Vector3 constant()
	{
		return getConstant();
	}
	/// ditto
	@property void constant(Vector3 v)
	{
		setConstant(v);
	}
}
