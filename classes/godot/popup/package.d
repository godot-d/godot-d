/**
Base container control for popups and dialogs.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.popup;
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
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Base container control for popups and dialogs.

Popup is a base $(D Control) used to show dialogs and popups. It's a subwindow and modal by default (see $(D Control)) and has helpers for custom popup behavior. All popup methods ensure correct placement within the viewport.
*/
@GodotBaseClass struct Popup
{
	package(godot) enum string _GODOT_internal_name = "Popup";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("is_exclusive") GodotMethod!(bool) isExclusive;
		@GodotName("popup") GodotMethod!(void, Rect2) popup;
		@GodotName("popup_centered") GodotMethod!(void, Vector2) popupCentered;
		@GodotName("popup_centered_clamped") GodotMethod!(void, Vector2, double) popupCenteredClamped;
		@GodotName("popup_centered_minsize") GodotMethod!(void, Vector2) popupCenteredMinsize;
		@GodotName("popup_centered_ratio") GodotMethod!(void, double) popupCenteredRatio;
		@GodotName("set_as_minsize") GodotMethod!(void) setAsMinsize;
		@GodotName("set_exclusive") GodotMethod!(void, bool) setExclusive;
	}
	/// 
	pragma(inline, true) bool opEquals(in Popup other) const
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
	/// Construct a new instance of Popup.
	/// Note: use `memnew!Popup` instead.
	static Popup _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Popup");
		if(constructor is null) return typeof(this).init;
		return cast(Popup)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Constants : int
	{
		/**
		Notification sent right after the popup is shown.
		*/
		notificationPostPopup = 80,
		/**
		Notification sent right after the popup is hidden.
		*/
		notificationPopupHide = 81,
	}
	/**
	
	*/
	bool isExclusive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isExclusive, _godot_object);
	}
	/**
	Popup (show the control in modal form).
	*/
	void popup(in Rect2 bounds = Rect2(0, 0, 0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.popup, _godot_object, bounds);
	}
	/**
	Popup (show the control in modal form) in the center of the screen relative to its current canvas transform, at the current size, or at a size determined by `size`.
	*/
	void popupCentered(in Vector2 size = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.popupCentered, _godot_object, size);
	}
	/**
	Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, clamping the size to `size`, then ensuring the popup is no larger than the viewport size multiplied by `fallback_ratio`.
	*/
	void popupCenteredClamped(in Vector2 size = Vector2(0, 0), in double fallback_ratio = 0.75)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.popupCenteredClamped, _godot_object, size, fallback_ratio);
	}
	/**
	Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, ensuring the size is never smaller than `minsize`.
	*/
	void popupCenteredMinsize(in Vector2 minsize = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.popupCenteredMinsize, _godot_object, minsize);
	}
	/**
	Popup (show the control in modal form) in the center of the screen relative to the current canvas transform, scaled at a ratio of size of the screen.
	*/
	void popupCenteredRatio(in double ratio = 0.75)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.popupCenteredRatio, _godot_object, ratio);
	}
	/**
	Shrink popup to keep to the minimum size of content.
	*/
	void setAsMinsize()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setAsMinsize, _godot_object);
	}
	/**
	
	*/
	void setExclusive(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setExclusive, _godot_object, enable);
	}
	/**
	If `true`, the popup will not be hidden when a click event occurs outside of it, or when it receives the `ui_cancel` action event.
	$(B Note:) Enabling this property doesn't affect the Close or Cancel buttons' behavior in dialogs that inherit from this class. As a workaround, you can use $(D WindowDialog.getCloseButton) or $(D ConfirmationDialog.getCancel) and hide the buttons in question by setting their $(D CanvasItem.visible) property to `false`.
	*/
	@property bool popupExclusive()
	{
		return isExclusive();
	}
	/// ditto
	@property void popupExclusive(bool v)
	{
		setExclusive(v);
	}
}
