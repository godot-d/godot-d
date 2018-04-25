/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptglobalconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
/**

*/
@GodotBaseClass struct VisualScriptGlobalConstant
{
	static immutable string _GODOT_internal_name = "VisualScriptGlobalConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptGlobalConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptGlobalConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptGlobalConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptGlobalConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptGlobalConstant)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(void, long) _GODOT_set_global_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_global_constant") = _GODOT_set_global_constant;
	/**
	
	*/
	void setGlobalConstant(in long index)
	{
		_GODOT_set_global_constant.bind("VisualScriptGlobalConstant", "set_global_constant");
		ptrcall!(void)(_GODOT_set_global_constant, _godot_object, index);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_global_constant;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_global_constant") = _GODOT_get_global_constant;
	/**
	
	*/
	long getGlobalConstant()
	{
		_GODOT_get_global_constant.bind("VisualScriptGlobalConstant", "get_global_constant");
		return ptrcall!(long)(_GODOT_get_global_constant, _godot_object);
	}
	/**
	
	*/
	@property long constant()
	{
		return getGlobalConstant();
	}
	/// ditto
	@property void constant(long v)
	{
		setGlobalConstant(v);
	}
}
