/**
Reference frame for GUI.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.referencerect;
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
import godot.canvasitem;
import godot.node;
/**
Reference frame for GUI.

A rectangle box that displays only a $(D borderColor) border color around its rectangle. $(D ReferenceRect) has no fill $(D Color).
*/
@GodotBaseClass struct ReferenceRect
{
	enum string _GODOT_internal_name = "ReferenceRect";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_border_color") GodotMethod!(Color) getBorderColor;
		@GodotName("get_editor_only") GodotMethod!(bool) getEditorOnly;
		@GodotName("set_border_color") GodotMethod!(void, Color) setBorderColor;
		@GodotName("set_editor_only") GodotMethod!(void, bool) setEditorOnly;
	}
	bool opEquals(in ReferenceRect other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ReferenceRect opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ReferenceRect _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ReferenceRect");
		if(constructor is null) return typeof(this).init;
		return cast(ReferenceRect)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Color getBorderColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getBorderColor, _godot_object);
	}
	/**
	
	*/
	bool getEditorOnly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getEditorOnly, _godot_object);
	}
	/**
	
	*/
	void setBorderColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBorderColor, _godot_object, color);
	}
	/**
	
	*/
	void setEditorOnly(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEditorOnly, _godot_object, enabled);
	}
	/**
	Sets the border $(D Color) of the $(D ReferenceRect).
	*/
	@property Color borderColor()
	{
		return getBorderColor();
	}
	/// ditto
	@property void borderColor(Color v)
	{
		setBorderColor(v);
	}
	/**
	If set to `true`, the $(D ReferenceRect) will only be visible while in editor. Otherwise, $(D ReferenceRect) will be visible in game.
	*/
	@property bool editorOnly()
	{
		return getEditorOnly();
	}
	/// ditto
	@property void editorOnly(bool v)
	{
		setEditorOnly(v);
	}
}
