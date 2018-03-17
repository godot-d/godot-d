/**
A Visual Script node which calls a base type constructor.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptconstructor;
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
A Visual Script node which calls a base type constructor.

It can be used for type conversion as well.
*/
@GodotBaseClass struct VisualScriptConstructor
{
	static immutable string _GODOT_internal_name = "VisualScriptConstructor";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualScriptConstructor other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptConstructor opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptConstructor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptConstructor");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptConstructor)(constructor());
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_constructor_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constructor_type") = _GODOT_set_constructor_type;
	/**
	
	*/
	void setConstructorType(in long type)
	{
		_GODOT_set_constructor_type.bind("VisualScriptConstructor", "set_constructor_type");
		ptrcall!(void)(_GODOT_set_constructor_type, _godot_object, type);
	}
	package(godot) static GodotMethod!(Variant.Type) _GODOT_get_constructor_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constructor_type") = _GODOT_get_constructor_type;
	/**
	
	*/
	Variant.Type getConstructorType() const
	{
		_GODOT_get_constructor_type.bind("VisualScriptConstructor", "get_constructor_type");
		return ptrcall!(Variant.Type)(_GODOT_get_constructor_type, _godot_object);
	}
	package(godot) static GodotMethod!(void, Dictionary) _GODOT_set_constructor;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_constructor") = _GODOT_set_constructor;
	/**
	
	*/
	void setConstructor(in Dictionary constructor)
	{
		_GODOT_set_constructor.bind("VisualScriptConstructor", "set_constructor");
		ptrcall!(void)(_GODOT_set_constructor, _godot_object, constructor);
	}
	package(godot) static GodotMethod!(Dictionary) _GODOT_get_constructor;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_constructor") = _GODOT_get_constructor;
	/**
	
	*/
	Dictionary getConstructor() const
	{
		_GODOT_get_constructor.bind("VisualScriptConstructor", "get_constructor");
		return ptrcall!(Dictionary)(_GODOT_get_constructor, _godot_object);
	}
	/**
	
	*/
	@property Variant.Type type()
	{
		return getConstructorType();
	}
	/// ditto
	@property void type(long v)
	{
		setConstructorType(v);
	}
	/**
	
	*/
	@property Dictionary constructor()
	{
		return getConstructor();
	}
	/// ditto
	@property void constructor(Dictionary v)
	{
		setConstructor(v);
	}
}
