/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptsubcall;
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
@GodotBaseClass struct VisualScriptSubCall
{
	static immutable string _GODOT_internal_name = "VisualScriptSubCall";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptSubCall other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptSubCall opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptSubCall _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptSubCall");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptSubCall)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(Variant, Variant) _GODOT__subcall;
	package(godot) alias _GODOT_methodBindInfo(string name : "_subcall") = _GODOT__subcall;
	/**
	
	*/
	Variant _subcall(VariantArg0)(in VariantArg0 arguments)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arguments);
		String _GODOT_method_name = String("_subcall");
		return this.callv(_GODOT_method_name, _GODOT_args);
	}
}
