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
import godot.basebutton;
import godot.control;
import godot.canvasitem;
import godot.node;
/**
Special button that brings up a $(D PopupMenu) when clicked.

That's pretty much all it does, as it's just a helper class when building GUIs.
*/
@GodotBaseClass struct MenuButton
{
	enum string _GODOT_internal_name = "MenuButton";
public:
@nogc nothrow:
	union { godot_object _godot_object; Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_popup") GodotMethod!(PopupMenu) getPopup;
		@GodotName("_unhandled_key_input") GodotMethod!(void, InputEvent) _unhandledKeyInput;
		@GodotName("_set_items") GodotMethod!(void, Array) _setItems;
		@GodotName("_get_items") GodotMethod!(Array) _getItems;
		@GodotName("set_disable_shortcuts") GodotMethod!(void, bool) setDisableShortcuts;
	}
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
	/**
	Return the $(D PopupMenu) contained in this button.
	*/
	PopupMenu getPopup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupMenu)(_classBinding.getPopup, _godot_object);
	}
	/**
	
	*/
	void _unhandledKeyInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_key_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setItems(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getItems() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void setDisableShortcuts(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDisableShortcuts, _godot_object, disabled);
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
