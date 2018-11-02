/**
Base class for anything that keeps a reference count.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.reference;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
/**
Base class for anything that keeps a reference count.

Resource and many other helper objects inherit this. References keep an internal reference counter so they are only released when no longer in use.
*/
@GodotBaseClass struct Reference
{
	enum string _GODOT_internal_name = "Reference";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("init_ref") GodotMethod!(bool) initRef;
		@GodotName("reference") GodotMethod!(bool) reference;
		@GodotName("unreference") GodotMethod!(bool) unreference;
	}
	bool opEquals(in Reference other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Reference opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Reference _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Reference");
		if(constructor is null) return typeof(this).init;
		return cast(Reference)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	bool initRef()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.initRef, _godot_object);
	}
	/**
	Increase the internal reference counter. Use this only if you really know what you are doing.
	*/
	bool reference()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.reference, _godot_object);
	}
	/**
	Decrease the internal reference counter. Use this only if you really know what you are doing.
	*/
	bool unreference()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.unreference, _godot_object);
	}
}
