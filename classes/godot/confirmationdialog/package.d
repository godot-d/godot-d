/**
Dialog for confirmation of actions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.confirmationdialog;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.acceptdialog;
import godot.windowdialog;
import godot.button;
/**
Dialog for confirmation of actions.

This dialog inherits from $(D AcceptDialog), but has by default an OK and Cancel button (in host OS order).
To get cancel action, you can use:


get_cancel().connect("pressed", self, "cancelled")

.
*/
@GodotBaseClass struct ConfirmationDialog
{
	package(godot) enum string _GODOT_internal_name = "ConfirmationDialog";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ AcceptDialog _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_cancel") GodotMethod!(Button) getCancel;
	}
	/// 
	pragma(inline, true) bool opEquals(in ConfirmationDialog other) const
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
	/// Construct a new instance of ConfirmationDialog.
	/// Note: use `memnew!ConfirmationDialog` instead.
	static ConfirmationDialog _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ConfirmationDialog");
		if(constructor is null) return typeof(this).init;
		return cast(ConfirmationDialog)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the cancel button.
	*/
	Button getCancel()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Button)(GDNativeClassBinding.getCancel, _godot_object);
	}
}
