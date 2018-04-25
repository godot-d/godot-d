/**
Provides a base class for different kinds of light nodes.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.light;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.visualinstance;
/**
Provides a base class for different kinds of light nodes.

Light is the abstract base class for light nodes, so it shouldn't be used directly (It can't be instanced). Other types of light nodes inherit from it. Light contains the common variables and parameters used for lighting.
*/
@GodotBaseClass struct Light
{
	static immutable string _GODOT_internal_name = "Light";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in Light other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Light opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Light _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Light");
		if(constructor is null) return typeof(this).init;
		return cast(Light)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BakeMode : int
	{
		/**
		
		*/
		bakeDisabled = 0,
		/**
		
		*/
		bakeIndirect = 1,
		/**
		
		*/
		bakeAll = 2,
	}
	/// 
	enum Param : int
	{
		/**
		
		*/
		paramEnergy = 0,
		/**
		
		*/
		paramIndirectEnergy = 1,
		/**
		
		*/
		paramSpecular = 2,
		/**
		
		*/
		paramRange = 3,
		/**
		
		*/
		paramAttenuation = 4,
		/**
		
		*/
		paramSpotAngle = 5,
		/**
		
		*/
		paramSpotAttenuation = 6,
		/**
		
		*/
		paramContactShadowSize = 7,
		/**
		
		*/
		paramShadowMaxDistance = 8,
		/**
		
		*/
		paramShadowSplit1Offset = 9,
		/**
		
		*/
		paramShadowSplit2Offset = 10,
		/**
		
		*/
		paramShadowSplit3Offset = 11,
		/**
		
		*/
		paramShadowNormalBias = 12,
		/**
		
		*/
		paramShadowBias = 13,
		/**
		
		*/
		paramShadowBiasSplitScale = 14,
		/**
		
		*/
		paramMax = 15,
	}
	/// 
	enum Constants : int
	{
		bakeDisabled = 0,
		paramEnergy = 0,
		paramIndirectEnergy = 1,
		bakeIndirect = 1,
		paramSpecular = 2,
		bakeAll = 2,
		paramRange = 3,
		paramAttenuation = 4,
		paramSpotAngle = 5,
		paramSpotAttenuation = 6,
		paramContactShadowSize = 7,
		paramShadowMaxDistance = 8,
		paramShadowSplit1Offset = 9,
		paramShadowSplit2Offset = 10,
		paramShadowSplit3Offset = 11,
		paramShadowNormalBias = 12,
		paramShadowBias = 13,
		paramShadowBiasSplitScale = 14,
		paramMax = 15,
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_editor_only;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_editor_only") = _GODOT_set_editor_only;
	/**
	
	*/
	void setEditorOnly(in bool editor_only)
	{
		_GODOT_set_editor_only.bind("Light", "set_editor_only");
		ptrcall!(void)(_GODOT_set_editor_only, _godot_object, editor_only);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_editor_only;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_editor_only") = _GODOT_is_editor_only;
	/**
	
	*/
	bool isEditorOnly() const
	{
		_GODOT_is_editor_only.bind("Light", "is_editor_only");
		return ptrcall!(bool)(_GODOT_is_editor_only, _godot_object);
	}
	package(godot) static GodotMethod!(void, long, double) _GODOT_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_param") = _GODOT_set_param;
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		_GODOT_set_param.bind("Light", "set_param");
		ptrcall!(void)(_GODOT_set_param, _godot_object, param, value);
	}
	package(godot) static GodotMethod!(double, long) _GODOT_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_param") = _GODOT_get_param;
	/**
	
	*/
	double getParam(in long param) const
	{
		_GODOT_get_param.bind("Light", "get_param");
		return ptrcall!(double)(_GODOT_get_param, _godot_object, param);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shadow;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow") = _GODOT_set_shadow;
	/**
	
	*/
	void setShadow(in bool enabled)
	{
		_GODOT_set_shadow.bind("Light", "set_shadow");
		ptrcall!(void)(_GODOT_set_shadow, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_shadow;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_shadow") = _GODOT_has_shadow;
	/**
	
	*/
	bool hasShadow() const
	{
		_GODOT_has_shadow.bind("Light", "has_shadow");
		return ptrcall!(bool)(_GODOT_has_shadow, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_negative;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_negative") = _GODOT_set_negative;
	/**
	
	*/
	void setNegative(in bool enabled)
	{
		_GODOT_set_negative.bind("Light", "set_negative");
		ptrcall!(void)(_GODOT_set_negative, _godot_object, enabled);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_negative;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_negative") = _GODOT_is_negative;
	/**
	
	*/
	bool isNegative() const
	{
		_GODOT_is_negative.bind("Light", "is_negative");
		return ptrcall!(bool)(_GODOT_is_negative, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_cull_mask") = _GODOT_set_cull_mask;
	/**
	
	*/
	void setCullMask(in long cull_mask)
	{
		_GODOT_set_cull_mask.bind("Light", "set_cull_mask");
		ptrcall!(void)(_GODOT_set_cull_mask, _godot_object, cull_mask);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_cull_mask") = _GODOT_get_cull_mask;
	/**
	
	*/
	long getCullMask() const
	{
		_GODOT_get_cull_mask.bind("Light", "get_cull_mask");
		return ptrcall!(long)(_GODOT_get_cull_mask, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_color") = _GODOT_set_color;
	/**
	
	*/
	void setColor(in Color color)
	{
		_GODOT_set_color.bind("Light", "set_color");
		ptrcall!(void)(_GODOT_set_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_color") = _GODOT_get_color;
	/**
	
	*/
	Color getColor() const
	{
		_GODOT_get_color.bind("Light", "get_color");
		return ptrcall!(Color)(_GODOT_get_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_shadow_reverse_cull_face;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_reverse_cull_face") = _GODOT_set_shadow_reverse_cull_face;
	/**
	
	*/
	void setShadowReverseCullFace(in bool enable)
	{
		_GODOT_set_shadow_reverse_cull_face.bind("Light", "set_shadow_reverse_cull_face");
		ptrcall!(void)(_GODOT_set_shadow_reverse_cull_face, _godot_object, enable);
	}
	package(godot) static GodotMethod!(bool) _GODOT_get_shadow_reverse_cull_face;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_reverse_cull_face") = _GODOT_get_shadow_reverse_cull_face;
	/**
	
	*/
	bool getShadowReverseCullFace() const
	{
		_GODOT_get_shadow_reverse_cull_face.bind("Light", "get_shadow_reverse_cull_face");
		return ptrcall!(bool)(_GODOT_get_shadow_reverse_cull_face, _godot_object);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_shadow_color") = _GODOT_set_shadow_color;
	/**
	
	*/
	void setShadowColor(in Color shadow_color)
	{
		_GODOT_set_shadow_color.bind("Light", "set_shadow_color");
		ptrcall!(void)(_GODOT_set_shadow_color, _godot_object, shadow_color);
	}
	package(godot) static GodotMethod!(Color) _GODOT_get_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_shadow_color") = _GODOT_get_shadow_color;
	/**
	
	*/
	Color getShadowColor() const
	{
		_GODOT_get_shadow_color.bind("Light", "get_shadow_color");
		return ptrcall!(Color)(_GODOT_get_shadow_color, _godot_object);
	}
	package(godot) static GodotMethod!(void, long) _GODOT_set_bake_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_bake_mode") = _GODOT_set_bake_mode;
	/**
	
	*/
	void setBakeMode(in long bake_mode)
	{
		_GODOT_set_bake_mode.bind("Light", "set_bake_mode");
		ptrcall!(void)(_GODOT_set_bake_mode, _godot_object, bake_mode);
	}
	package(godot) static GodotMethod!(Light.BakeMode) _GODOT_get_bake_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_bake_mode") = _GODOT_get_bake_mode;
	/**
	
	*/
	Light.BakeMode getBakeMode() const
	{
		_GODOT_get_bake_mode.bind("Light", "get_bake_mode");
		return ptrcall!(Light.BakeMode)(_GODOT_get_bake_mode, _godot_object);
	}
	/**
	
	*/
	@property Color lightColor()
	{
		return getColor();
	}
	/// ditto
	@property void lightColor(Color v)
	{
		setColor(v);
	}
	/**
	
	*/
	@property double lightEnergy()
	{
		return getParam(0);
	}
	/// ditto
	@property void lightEnergy(double v)
	{
		setParam(0, v);
	}
	/**
	
	*/
	@property double lightIndirectEnergy()
	{
		return getParam(1);
	}
	/// ditto
	@property void lightIndirectEnergy(double v)
	{
		setParam(1, v);
	}
	/**
	
	*/
	@property bool lightNegative()
	{
		return isNegative();
	}
	/// ditto
	@property void lightNegative(bool v)
	{
		setNegative(v);
	}
	/**
	
	*/
	@property double lightSpecular()
	{
		return getParam(2);
	}
	/// ditto
	@property void lightSpecular(double v)
	{
		setParam(2, v);
	}
	/**
	
	*/
	@property Light.BakeMode lightBakeMode()
	{
		return getBakeMode();
	}
	/// ditto
	@property void lightBakeMode(long v)
	{
		setBakeMode(v);
	}
	/**
	
	*/
	@property long lightCullMask()
	{
		return getCullMask();
	}
	/// ditto
	@property void lightCullMask(long v)
	{
		setCullMask(v);
	}
	/**
	
	*/
	@property bool shadowEnabled()
	{
		return hasShadow();
	}
	/// ditto
	@property void shadowEnabled(bool v)
	{
		setShadow(v);
	}
	/**
	
	*/
	@property Color shadowColor()
	{
		return getShadowColor();
	}
	/// ditto
	@property void shadowColor(Color v)
	{
		setShadowColor(v);
	}
	/**
	
	*/
	@property double shadowBias()
	{
		return getParam(13);
	}
	/// ditto
	@property void shadowBias(double v)
	{
		setParam(13, v);
	}
	/**
	
	*/
	@property double shadowContact()
	{
		return getParam(7);
	}
	/// ditto
	@property void shadowContact(double v)
	{
		setParam(7, v);
	}
	/**
	
	*/
	@property bool shadowReverseCullFace()
	{
		return getShadowReverseCullFace();
	}
	/// ditto
	@property void shadowReverseCullFace(bool v)
	{
		setShadowReverseCullFace(v);
	}
	/**
	
	*/
	@property bool editorOnly()
	{
		return isEditorOnly();
	}
	/// ditto
	@property void editorOnly(bool v)
	{
		setEditorOnly(v);
	}
}
