/**
Overrides the location sounds are heard from.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.listener;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.spatial;
/**
Overrides the location sounds are heard from.

Once added to the scene tree and enabled using $(D makeCurrent), this node will override the location sounds are heard from. This can be used to listen from a location different from the $(D Camera).
$(B Note:) There is no 2D equivalent for this node yet.
*/
@GodotBaseClass struct Listener
{
	enum string _GODOT_internal_name = "Listener";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("clear_current") GodotMethod!(void) clearCurrent;
		@GodotName("get_listener_transform") GodotMethod!(Transform) getListenerTransform;
		@GodotName("is_current") GodotMethod!(bool) isCurrent;
		@GodotName("make_current") GodotMethod!(void) makeCurrent;
	}
	bool opEquals(in Listener other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Listener opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Listener _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Listener");
		if(constructor is null) return typeof(this).init;
		return cast(Listener)(constructor());
	}
	@disable new(size_t s);
	/**
	Disables the listener to use the current camera's listener instead.
	*/
	void clearCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clearCurrent, _godot_object);
	}
	/**
	Returns the listener's global orthonormalized $(D Transform).
	*/
	Transform getListenerTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getListenerTransform, _godot_object);
	}
	/**
	Returns `true` if the listener was made current using $(D makeCurrent), `false` otherwise.
	$(B Note:) There may be more than one Listener marked as "current" in the scene tree, but only the one that was made current last will be used.
	*/
	bool isCurrent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCurrent, _godot_object);
	}
	/**
	Enables the listener. This will override the current camera's listener.
	*/
	void makeCurrent()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.makeCurrent, _godot_object);
	}
}
