/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.skinreference;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.reference;
import godot.skin;
/**

*/
@GodotBaseClass struct SkinReference
{
	enum string _GODOT_internal_name = "SkinReference";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_skin_changed") GodotMethod!(void) _skinChanged;
		@GodotName("get_skeleton") GodotMethod!(RID) getSkeleton;
		@GodotName("get_skin") GodotMethod!(Skin) getSkin;
	}
	bool opEquals(in SkinReference other) const { return _godot_object.ptr is other._godot_object.ptr; }
	SkinReference opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static SkinReference _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("SkinReference");
		if(constructor is null) return typeof(this).init;
		return cast(SkinReference)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _skinChanged()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_skin_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	RID getSkeleton() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getSkeleton, _godot_object);
	}
	/**
	
	*/
	Ref!Skin getSkin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Skin)(_classBinding.getSkin, _godot_object);
	}
}
