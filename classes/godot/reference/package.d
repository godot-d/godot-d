/**
Base class for reference-counted objects.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.reference;
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
/**
Base class for reference-counted objects.

Base class for any object that keeps a reference count. $(D Resource) and many other helper objects inherit this class.
Unlike other $(D GodotObject) types, References keep an internal reference counter so that they are automatically released when no longer in use, and only then. References therefore do not need to be freed manually with $(D GodotObject.free).
In the vast majority of use cases, instantiating and using $(D Reference)-derived types is all you need to do. The methods provided in this class are only for advanced users, and can cause issues if misused.
$(B Note:) In C#, references will not be freed instantly after they are no longer in use. Instead, garbage collection will run periodically and will free references that are no longer in use. This means that unused references will linger on for a while before being removed.
*/
@GodotBaseClass struct Reference
{
	package(godot) enum string _GODOT_internal_name = "Reference";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("init_ref") GodotMethod!(bool) initRef;
		@GodotName("reference") GodotMethod!(bool) reference;
		@GodotName("unreference") GodotMethod!(bool) unreference;
	}
	/// 
	pragma(inline, true) bool opEquals(in Reference other) const
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
	/// Construct a new instance of Reference.
	/// Note: use `memnew!Reference` instead.
	static Reference _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Reference");
		if(constructor is null) return typeof(this).init;
		return cast(Reference)(constructor());
	}
	@disable new(size_t s);
	/**
	Initializes the internal reference counter. Use this only if you really know what you are doing.
	Returns whether the initialization was successful.
	*/
	bool initRef()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.initRef, _godot_object);
	}
	/**
	Increments the internal reference counter. Use this only if you really know what you are doing.
	Returns `true` if the increment was successful, `false` otherwise.
	*/
	bool reference()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.reference, _godot_object);
	}
	/**
	Decrements the internal reference counter. Use this only if you really know what you are doing.
	Returns `true` if the decrement was successful, `false` otherwise.
	*/
	bool unreference()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.unreference, _godot_object);
	}
}
