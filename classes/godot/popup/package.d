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
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
/**
Base container control for popups and dialogs.

Popup is a base $(D Control) used to show dialogs and popups. It's a subwindow and modal by default (see $(D Control)) and has helpers for custom popup behavior.
*/
@GodotBaseClass struct Popup
{
	static immutable string _GODOT_internal_name = "Popup";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Popup other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Popup opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
	package(godot) static GodotMethod!(void, Vector2) _GODOT_popup_centered;
	package(godot) alias _GODOT_methodBindInfo(string name : "popup_centered") = _GODOT_popup_centered;
	/**
	Popup (show the control in modal form) in the center of the screen, at the current size, or at a size determined by "size".
	*/
	void popupCentered(in Vector2 size = Vector2(0, 0))
	{
		_GODOT_popup_centered.bind("Popup", "popup_centered");
		ptrcall!(void)(_GODOT_popup_centered, _godot_object, size);
	}
	package(godot) static GodotMethod!(void, double) _GODOT_popup_centered_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "popup_centered_ratio") = _GODOT_popup_centered_ratio;
	/**
	Popup (show the control in modal form) in the center of the screen, scaled at a ratio of size of the screen.
	*/
	void popupCenteredRatio(in double ratio = 0.75)
	{
		_GODOT_popup_centered_ratio.bind("Popup", "popup_centered_ratio");
		ptrcall!(void)(_GODOT_popup_centered_ratio, _godot_object, ratio);
	}
	package(godot) static GodotMethod!(void, Vector2) _GODOT_popup_centered_minsize;
	package(godot) alias _GODOT_methodBindInfo(string name : "popup_centered_minsize") = _GODOT_popup_centered_minsize;
	/**
	Popup (show the control in modal form) in the center of the screen, ensuring the size is never smaller than `minsize`.
	*/
	void popupCenteredMinsize(in Vector2 minsize = Vector2(0, 0))
	{
		_GODOT_popup_centered_minsize.bind("Popup", "popup_centered_minsize");
		ptrcall!(void)(_GODOT_popup_centered_minsize, _godot_object, minsize);
	}
	package(godot) static GodotMethod!(void, Rect2) _GODOT_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "popup") = _GODOT_popup;
	/**
	Popup (show the control in modal form).
	*/
	void popup(in Rect2 bounds = Rect2(0, 0, 0, 0))
	{
		_GODOT_popup.bind("Popup", "popup");
		ptrcall!(void)(_GODOT_popup, _godot_object, bounds);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_exclusive;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_exclusive") = _GODOT_set_exclusive;
	/**
	
	*/
	void setExclusive(in bool enable)
	{
		_GODOT_set_exclusive.bind("Popup", "set_exclusive");
		ptrcall!(void)(_GODOT_set_exclusive, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_exclusive;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_exclusive") = _GODOT_is_exclusive;
	/**
	
	*/
	bool isExclusive() const
	{
		_GODOT_is_exclusive.bind("Popup", "is_exclusive");
		return ptrcall!(bool)(_GODOT_is_exclusive, _godot_object);
	}
	/**
	If `true` the popup will not be hidden when a click event occurs outside of it, or when it receives the `ui_cancel` action event.
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
