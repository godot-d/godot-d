/**
Detects approximately when the node is visible on screen.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visibilitynotifier2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.node2d;
import godot.canvasitem;
import godot.node;
/**
Detects approximately when the node is visible on screen.

The VisibilityNotifier2D detects when it is visible on the screen. It also notifies when its bounding rectangle enters or exits the screen or a viewport.
If you want nodes to be disabled automatically when they exit the screen, use $(D VisibilityEnabler2D) instead.
$(B Note:) For performance reasons, VisibilityNotifier2D uses an approximate heuristic with precision determined by $(D ProjectSettings.world/2d/cellSize). If you need precise visibility checking, use another method such as adding an $(D Area2D) node as a child of a $(D Camera2D) node.
*/
@GodotBaseClass struct VisibilityNotifier2D
{
	package(godot) enum string _GODOT_internal_name = "VisibilityNotifier2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Node2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_rect") GodotMethod!(Rect2) getRect;
		@GodotName("is_on_screen") GodotMethod!(bool) isOnScreen;
		@GodotName("set_rect") GodotMethod!(void, Rect2) setRect;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisibilityNotifier2D other) const
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
	/// Construct a new instance of VisibilityNotifier2D.
	/// Note: use `memnew!VisibilityNotifier2D` instead.
	static VisibilityNotifier2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisibilityNotifier2D");
		if(constructor is null) return typeof(this).init;
		return cast(VisibilityNotifier2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Rect2 getRect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(GDNativeClassBinding.getRect, _godot_object);
	}
	/**
	If `true`, the bounding rectangle is on the screen.
	$(B Note:) It takes one frame for the node's visibility to be assessed once added to the scene tree, so this method will return `false` right after it is instantiated, even if it will be on screen in the draw pass.
	*/
	bool isOnScreen() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isOnScreen, _godot_object);
	}
	/**
	
	*/
	void setRect(in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRect, _godot_object, rect);
	}
	/**
	The VisibilityNotifier2D's bounding rectangle.
	*/
	@property Rect2 rect()
	{
		return getRect();
	}
	/// ditto
	@property void rect(Rect2 v)
	{
		setRect(v);
	}
}
