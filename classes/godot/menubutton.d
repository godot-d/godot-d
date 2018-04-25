/**
Special button that brings up a $(D PopupMenu) when clicked.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.menubutton;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.button;
import godot.popupmenu;
import godot.inputevent;
/**
Special button that brings up a $(D PopupMenu) when clicked.

That's pretty much all it does, as it's just a helper class when building GUIs.
*/
@GodotBaseClass struct MenuButton
{
	static immutable string _GODOT_internal_name = "MenuButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in MenuButton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MenuButton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MenuButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MenuButton");
		if(constructor is null) return typeof(this).init;
		return cast(MenuButton)(constructor());
	}
	@disable new(size_t s);
	package(godot) static GodotMethod!(PopupMenu) _GODOT_get_popup;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_popup") = _GODOT_get_popup;
	/**
	Return the $(D PopupMenu) contained in this button.
	*/
	PopupMenu getPopup() const
	{
		_GODOT_get_popup.bind("MenuButton", "get_popup");
		return ptrcall!(PopupMenu)(_GODOT_get_popup, _godot_object);
	}
	package(godot) static GodotMethod!(void, InputEvent) _GODOT__unhandled_key_input;
	package(godot) alias _GODOT_methodBindInfo(string name : "_unhandled_key_input") = _GODOT__unhandled_key_input;
	/**
	
	*/
	void _unhandledKeyInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_key_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(void, Array) _GODOT__set_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "_set_items") = _GODOT__set_items;
	/**
	
	*/
	void _setItems(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	package(godot) static GodotMethod!(Array) _GODOT__get_items;
	package(godot) alias _GODOT_methodBindInfo(string name : "_get_items") = _GODOT__get_items;
	/**
	
	*/
	Array _getItems() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_disable_shortcuts;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_disable_shortcuts") = _GODOT_set_disable_shortcuts;
	/**
	
	*/
	void setDisableShortcuts(in bool disabled)
	{
		_GODOT_set_disable_shortcuts.bind("MenuButton", "set_disable_shortcuts");
		ptrcall!(void)(_GODOT_set_disable_shortcuts, _godot_object, disabled);
	}
	/**
	
	*/
	@property Array items()
	{
		return _getItems();
	}
	/// ditto
	@property void items(Array v)
	{
		_setItems(v);
	}
}
