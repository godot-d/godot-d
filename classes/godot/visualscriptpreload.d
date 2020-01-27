/**
Creates a new $(D Resource) or loads one from the filesystem.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptpreload;
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
import godot.resource;
import godot.reference;
/**
Creates a new $(D Resource) or loads one from the filesystem.

$(B Input Ports:)
none
$(B Output Ports:)
- Data (object): `res`
*/
@GodotBaseClass struct VisualScriptPreload
{
	enum string _GODOT_internal_name = "VisualScriptPreload";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_preload") GodotMethod!(Resource) getPreload;
		@GodotName("set_preload") GodotMethod!(void, Resource) setPreload;
	}
	bool opEquals(in VisualScriptPreload other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptPreload opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptPreload _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptPreload");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptPreload)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Ref!Resource getPreload() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Resource)(_classBinding.getPreload, _godot_object);
	}
	/**
	
	*/
	void setPreload(Resource resource)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPreload, _godot_object, resource);
	}
	/**
	The $(D Resource) to load.
	*/
	@property Resource resource()
	{
		return getPreload();
	}
	/// ditto
	@property void resource(Resource v)
	{
		setPreload(v);
	}
}
