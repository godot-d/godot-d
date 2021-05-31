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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.button;
import godot.basebutton;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
import godot.popupmenu;
/**
Special button that brings up a $(D PopupMenu) when clicked.

New items can be created inside this $(D PopupMenu) using `get_popup().add_item("My Item Name")`. You can also create them directly from the editor. To do so, select the $(D MenuButton) node, then in the toolbar at the top of the 2D editor, click $(B Items) then click $(B Add) in the popup. You will be able to give each item new properties.
See also $(D BaseButton) which contains common properties and methods associated with this node.
*/
@GodotBaseClass struct MenuButton
{
	package(godot) enum string _GODOT_internal_name = "MenuButton";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Button _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_get_items") GodotMethod!(Array) _getItems;
		@GodotName("_set_items") GodotMethod!(void, Array) _setItems;
		@GodotName("_unhandled_key_input") GodotMethod!(void, InputEvent) _unhandledKeyInput;
		@GodotName("get_popup") GodotMethod!(PopupMenu) getPopup;
		@GodotName("is_switch_on_hover") GodotMethod!(bool) isSwitchOnHover;
		@GodotName("set_disable_shortcuts") GodotMethod!(void, bool) setDisableShortcuts;
		@GodotName("set_switch_on_hover") GodotMethod!(void, bool) setSwitchOnHover;
	}
	/// 
	pragma(inline, true) bool opEquals(in MenuButton other) const
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
	/// Construct a new instance of MenuButton.
	/// Note: use `memnew!MenuButton` instead.
	static MenuButton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MenuButton");
		if(constructor is null) return typeof(this).init;
		return cast(MenuButton)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Array _getItems() const
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	void _setItems(in Array arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _unhandledKeyInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_unhandled_key_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the $(D PopupMenu) contained in this button.
	*/
	PopupMenu getPopup() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PopupMenu)(GDNativeClassBinding.getPopup, _godot_object);
	}
	/**
	
	*/
	bool isSwitchOnHover()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isSwitchOnHover, _godot_object);
	}
	/**
	If `true`, shortcuts are disabled and cannot be used to trigger the button.
	*/
	void setDisableShortcuts(in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDisableShortcuts, _godot_object, disabled);
	}
	/**
	
	*/
	void setSwitchOnHover(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSwitchOnHover, _godot_object, enable);
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
	/**
	If `true`, when the cursor hovers above another $(D MenuButton) within the same parent which also has `switch_on_hover` enabled, it will close the current $(D MenuButton) and open the other one.
	*/
	@property bool switchOnHover()
	{
		return isSwitchOnHover();
	}
	/// ditto
	@property void switchOnHover(bool v)
	{
		setSwitchOnHover(v);
	}
}
