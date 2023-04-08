/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.editorspinslider;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.range;
import godot.inputevent;
/**

*/
@GodotBaseClass struct EditorSpinSlider
{
	package(godot) enum string _GODOT_internal_name = "EditorSpinSlider";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Range _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_grabber_gui_input") GodotMethod!(void, InputEvent) _grabberGuiInput;
		@GodotName("_grabber_mouse_entered") GodotMethod!(void) _grabberMouseEntered;
		@GodotName("_grabber_mouse_exited") GodotMethod!(void) _grabberMouseExited;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_value_focus_exited") GodotMethod!(void) _valueFocusExited;
		@GodotName("_value_input_closed") GodotMethod!(void) _valueInputClosed;
		@GodotName("_value_input_entered") GodotMethod!(void, String) _valueInputEntered;
		@GodotName("_value_input_gui_input") GodotMethod!(void, InputEvent) _valueInputGuiInput;
		@GodotName("get_label") GodotMethod!(String) getLabel;
		@GodotName("is_flat") GodotMethod!(bool) isFlat;
		@GodotName("is_hiding_slider") GodotMethod!(bool) isHidingSlider;
		@GodotName("is_read_only") GodotMethod!(bool) isReadOnly;
		@GodotName("set_flat") GodotMethod!(void, bool) setFlat;
		@GodotName("set_hide_slider") GodotMethod!(void, bool) setHideSlider;
		@GodotName("set_label") GodotMethod!(void, String) setLabel;
		@GodotName("set_read_only") GodotMethod!(void, bool) setReadOnly;
	}
	/// 
	pragma(inline, true) bool opEquals(in EditorSpinSlider other) const
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
	/// Construct a new instance of EditorSpinSlider.
	/// Note: use `memnew!EditorSpinSlider` instead.
	static EditorSpinSlider _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("EditorSpinSlider");
		if(constructor is null) return typeof(this).init;
		return cast(EditorSpinSlider)(constructor());
	}
	/**
	
	*/
	void _grabberGuiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_grabber_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _grabberMouseEntered()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_grabber_mouse_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _grabberMouseExited()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_grabber_mouse_exited");
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
	
	*/
	void _valueFocusExited()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_value_focus_exited");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _valueInputClosed()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_value_input_closed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _valueInputEntered(in String arg0)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_value_input_entered");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _valueInputGuiInput(InputEvent event)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(event);
		String _GODOT_method_name = String("_value_input_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	String getLabel() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLabel, _godot_object);
	}
	/**
	
	*/
	bool isFlat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isFlat, _godot_object);
	}
	/**
	
	*/
	bool isHidingSlider() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isHidingSlider, _godot_object);
	}
	/**
	
	*/
	bool isReadOnly() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isReadOnly, _godot_object);
	}
	/**
	
	*/
	void setFlat(in bool flat)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFlat, _godot_object, flat);
	}
	/**
	
	*/
	void setHideSlider(in bool hide_slider)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setHideSlider, _godot_object, hide_slider);
	}
	/**
	
	*/
	void setLabel(in String label)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLabel, _godot_object, label);
	}
	/**
	
	*/
	void setReadOnly(in bool read_only)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setReadOnly, _godot_object, read_only);
	}
	/**
	
	*/
	@property bool flat()
	{
		return isFlat();
	}
	/// ditto
	@property void flat(bool v)
	{
		setFlat(v);
	}
	/**
	
	*/
	@property bool hideSlider()
	{
		return isHidingSlider();
	}
	/// ditto
	@property void hideSlider(bool v)
	{
		setHideSlider(v);
	}
	/**
	
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
