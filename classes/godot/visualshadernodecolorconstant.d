/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodecolorconstant;
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
@GodotBaseClass struct VisualShaderNodeColorConstant
{
	enum string _GODOT_internal_name = "VisualShaderNodeColorConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_constant") GodotMethod!(void, Color) setConstant;
		@GodotName("get_constant") GodotMethod!(Color) getConstant;
	}
	bool opEquals(in VisualShaderNodeColorConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeColorConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeColorConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeColorConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeColorConstant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setConstant(in Color value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setConstant, _godot_object, value);
	}
	/**
	
	*/
	Color getConstant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getConstant, _godot_object);
	}
	/**
	
	*/
	@property Color constant()
	{
		return getConstant();
	}
	/// ditto
	@property void constant(Color v)
	{
		setConstant(v);
	}
}
