/**
Custom control to edit properties for adding into the inspector.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorproperty;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.container;
import godot.control;
import godot.canvasitem;
import godot.node;
import godot.inputevent;
/**
Custom control to edit properties for adding into the inspector.

This control allows property editing for one or multiple properties into $(D EditorInspector). It is added via $(D EditorInspectorPlugin).
*/
@GodotBaseClass struct EditorProperty
{
	enum string _GODOT_internal_name = "EditorProperty";
public:
@nogc nothrow:
	union { godot_object _godot_object; Container _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("_focusable_focused") GodotMethod!(void, long) _focusableFocused;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("add_focusable") GodotMethod!(void, Control) addFocusable;
		@GodotName("emit_changed") GodotMethod!(void, String, Variant, String, bool) emitChanged;
		@GodotName("get_edited_object") GodotMethod!(GodotObject) getEditedObject;
		@GodotName("get_edited_property") GodotMethod!(String) getEditedProperty;
		@GodotName("get_label") GodotMethod!(String) getLabel;
		@GodotName("get_tooltip_text") GodotMethod!(String) getTooltipText;
		@GodotName("is_checkable") GodotMethod!(bool) isCheckable;
		@GodotName("is_checked") GodotMethod!(bool) isChecked;
		@GodotName("is_draw_red") GodotMethod!(bool) isDrawRed;
		@GodotName("is_keying") GodotMethod!(bool) isKeying;
		@GodotName("is_read_only") GodotMethod!(bool) isReadOnly;
		@GodotName("set_bottom_editor") GodotMethod!(void, Control) setBottomEditor;
		@GodotName("set_checkable") GodotMethod!(void, bool) setCheckable;
		@GodotName("set_checked") GodotMethod!(void, bool) setChecked;
		@GodotName("set_draw_red") GodotMethod!(void, bool) setDrawRed;
		@GodotName("set_keying") GodotMethod!(void, bool) setKeying;
		@GodotName("set_label") GodotMethod!(void, String) setLabel;
		@GodotName("set_read_only") GodotMethod!(void, bool) setReadOnly;
		@GodotName("update_property") GodotMethod!(void) updateProperty;
	}
	bool opEquals(in EditorProperty other) const { return _godot_object.ptr is other._godot_object.ptr; }
	EditorProperty opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static EditorProperty _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorProperty");
		if(constructor is null) return typeof(this).init;
		return cast(EditorProperty)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void _focusableFocused(in long arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_focusable_focused");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	If any of the controls added can gain keyboard focus, add it here. This ensures that focus will be restored if the inspector is refreshed.
	*/
	void addFocusable(Control control)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addFocusable, _godot_object, control);
	}
	/**
	If one or several properties have changed, this must be called. `field` is used in case your editor can modify fields separately (as an example, Vector3.x). The `changing` argument avoids the editor requesting this property to be refreshed (leave as `false` if unsure).
	*/
	void emitChanged(VariantArg1)(in String property, in VariantArg1 value, in String field = gs!"", in bool changing = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.emitChanged, _godot_object, property, value, field, changing);
	}
	/**
	Gets the edited object.
	*/
	GodotObject getEditedObject()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.getEditedObject, _godot_object);
	}
	/**
	Gets the edited property. If your editor is for a single property (added via $(D EditorInspectorPlugin.parseProperty)), then this will return the property.
	*/
	String getEditedProperty()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getEditedProperty, _godot_object);
	}
	/**
	
	*/
	String getLabel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getLabel, _godot_object);
	}
	/**
	Override if you want to allow a custom tooltip over your property.
	*/
	String getTooltipText() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getTooltipText, _godot_object);
	}
	/**
	
	*/
	bool isCheckable() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isCheckable, _godot_object);
	}
	/**
	
	*/
	bool isChecked() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isChecked, _godot_object);
	}
	/**
	
	*/
	bool isDrawRed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isDrawRed, _godot_object);
	}
	/**
	
	*/
	bool isKeying() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isKeying, _godot_object);
	}
	/**
	
	*/
	bool isReadOnly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isReadOnly, _godot_object);
	}
	/**
	Adds controls with this function if you want them on the bottom (below the label).
	*/
	void setBottomEditor(Control editor)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBottomEditor, _godot_object, editor);
	}
	/**
	
	*/
	void setCheckable(in bool checkable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCheckable, _godot_object, checkable);
	}
	/**
	
	*/
	void setChecked(in bool checked)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setChecked, _godot_object, checked);
	}
	/**
	
	*/
	void setDrawRed(in bool draw_red)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawRed, _godot_object, draw_red);
	}
	/**
	
	*/
	void setKeying(in bool keying)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setKeying, _godot_object, keying);
	}
	/**
	
	*/
	void setLabel(in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLabel, _godot_object, text);
	}
	/**
	
	*/
	void setReadOnly(in bool read_only)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setReadOnly, _godot_object, read_only);
	}
	/**
	When this virtual function is called, you must update your editor.
	*/
	void updateProperty()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("update_property");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Used by the inspector, set when property is checkable.
	*/
	@property bool checkable()
	{
		return isCheckable();
	}
	/// ditto
	@property void checkable(bool v)
	{
		setCheckable(v);
	}
	/**
	Used by the inspector, when the property is checked.
	*/
	@property bool checked()
	{
		return isChecked();
	}
	/// ditto
	@property void checked(bool v)
	{
		setChecked(v);
	}
	/**
	Used by the inspector, when the property must draw with error color.
	*/
	@property bool drawRed()
	{
		return isDrawRed();
	}
	/// ditto
	@property void drawRed(bool v)
	{
		setDrawRed(v);
	}
	/**
	Used by the inspector, when the property can add keys for animation.
	*/
	@property bool keying()
	{
		return isKeying();
	}
	/// ditto
	@property void keying(bool v)
	{
		setKeying(v);
	}
	/**
	Sets this property to change the label (if you want to show one).
	*/
	@property String label()
	{
		return getLabel();
	}
	/// ditto
	@property void label(String v)
	{
		setLabel(v);
	}
	/**
	Used by the inspector, when the property is read-only.
	*/
	@property bool readOnly()
	{
		return isReadOnly();
	}
	/// ditto
	@property void readOnly(bool v)
	{
		setReadOnly(v);
	}
}
