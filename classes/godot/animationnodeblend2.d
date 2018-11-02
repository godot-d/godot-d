/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.animationnodeblend2;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.animationnode;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct AnimationNodeBlend2
{
	enum string _GODOT_internal_name = "AnimationNodeBlend2";
public:
@nogc nothrow:
	union { godot_object _godot_object; AnimationNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_use_sync") GodotMethod!(void, bool) setUseSync;
		@GodotName("is_using_sync") GodotMethod!(bool) isUsingSync;
	}
	bool opEquals(in AnimationNodeBlend2 other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AnimationNodeBlend2 opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AnimationNodeBlend2 _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AnimationNodeBlend2");
		if(constructor is null) return typeof(this).init;
		return cast(AnimationNodeBlend2)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setUseSync(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseSync, _godot_object, enable);
	}
	/**
	
	*/
	bool isUsingSync() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isUsingSync, _godot_object);
	}
	/**
	
	*/
	@property bool sync()
	{
		return isUsingSync();
	}
	/// ditto
	@property void sync(bool v)
	{
		setUseSync(v);
	}
}
