/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.node2d;
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
import godot.canvasitem;
import godot.node;
/**

*/
@GodotBaseClass struct Node2D
{
	package(godot) enum string _GODOT_internal_name = "Node2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ CanvasItem _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("apply_scale") GodotMethod!(void, Vector2) applyScale;
		@GodotName("get_angle_to") GodotMethod!(double, Vector2) getAngleTo;
		@GodotName("get_global_position") GodotMethod!(Vector2) getGlobalPosition;
		@GodotName("get_global_rotation") GodotMethod!(double) getGlobalRotation;
		@GodotName("get_global_rotation_degrees") GodotMethod!(double) getGlobalRotationDegrees;
		@GodotName("get_global_scale") GodotMethod!(Vector2) getGlobalScale;
		@GodotName("get_position") GodotMethod!(Vector2) getPosition;
		@GodotName("get_relative_transform_to_parent") GodotMethod!(Transform2D, Node) getRelativeTransformToParent;
		@GodotName("get_rotation") GodotMethod!(double) getRotation;
		@GodotName("get_rotation_degrees") GodotMethod!(double) getRotationDegrees;
		@GodotName("get_scale") GodotMethod!(Vector2) getScale;
		@GodotName("get_z_index") GodotMethod!(long) getZIndex;
		@GodotName("global_translate") GodotMethod!(void, Vector2) globalTranslate;
		@GodotName("is_z_relative") GodotMethod!(bool) isZRelative;
		@GodotName("look_at") GodotMethod!(void, Vector2) lookAt;
		@GodotName("move_local_x") GodotMethod!(void, double, bool) moveLocalX;
		@GodotName("move_local_y") GodotMethod!(void, double, bool) moveLocalY;
		@GodotName("rotate") GodotMethod!(void, double) rotate;
		@GodotName("set_global_position") GodotMethod!(void, Vector2) setGlobalPosition;
		@GodotName("set_global_rotation") GodotMethod!(void, double) setGlobalRotation;
		@GodotName("set_global_rotation_degrees") GodotMethod!(void, double) setGlobalRotationDegrees;
		@GodotName("set_global_scale") GodotMethod!(void, Vector2) setGlobalScale;
		@GodotName("set_global_transform") GodotMethod!(void, Transform2D) setGlobalTransform;
		@GodotName("set_position") GodotMethod!(void, Vector2) setPosition;
		@GodotName("set_rotation") GodotMethod!(void, double) setRotation;
		@GodotName("set_rotation_degrees") GodotMethod!(void, double) setRotationDegrees;
		@GodotName("set_scale") GodotMethod!(void, Vector2) setScale;
		@GodotName("set_transform") GodotMethod!(void, Transform2D) setTransform;
		@GodotName("set_z_as_relative") GodotMethod!(void, bool) setZAsRelative;
		@GodotName("set_z_index") GodotMethod!(void, long) setZIndex;
		@GodotName("to_global") GodotMethod!(Vector2, Vector2) toGlobal;
		@GodotName("to_local") GodotMethod!(Vector2, Vector2) toLocal;
		@GodotName("translate") GodotMethod!(void, Vector2) translate;
	}
	/// 
	pragma(inline, true) bool opEquals(in Node2D other) const
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
	/// Construct a new instance of Node2D.
	/// Note: use `memnew!Node2D` instead.
	static Node2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Node2D");
		if(constructor is null) return typeof(this).init;
		return cast(Node2D)(constructor());
	}
	/**
	
	*/
	void applyScale(in Vector2 ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.applyScale, _godot_object, ratio);
	}
	/**
	
	*/
	double getAngleTo(in Vector2 point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAngleTo, _godot_object, point);
	}
	/**
	
	*/
	Vector2 getGlobalPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGlobalPosition, _godot_object);
	}
	/**
	
	*/
	double getGlobalRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGlobalRotation, _godot_object);
	}
	/**
	
	*/
	double getGlobalRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getGlobalRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Vector2 getGlobalScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getGlobalScale, _godot_object);
	}
	/**
	
	*/
	Vector2 getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	Transform2D getRelativeTransformToParent(Node parent) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getRelativeTransformToParent, _godot_object, parent);
	}
	/**
	
	*/
	double getRotation() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRotation, _godot_object);
	}
	/**
	
	*/
	double getRotationDegrees() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getRotationDegrees, _godot_object);
	}
	/**
	
	*/
	Vector2 getScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getScale, _godot_object);
	}
	/**
	
	*/
	long getZIndex() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getZIndex, _godot_object);
	}
	/**
	
	*/
	void globalTranslate(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.globalTranslate, _godot_object, offset);
	}
	/**
	
	*/
	bool isZRelative() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isZRelative, _godot_object);
	}
	/**
	
	*/
	void lookAt(in Vector2 point)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lookAt, _godot_object, point);
	}
	/**
	
	*/
	void moveLocalX(in double delta, in bool scaled = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveLocalX, _godot_object, delta, scaled);
	}
	/**
	
	*/
	void moveLocalY(in double delta, in bool scaled = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.moveLocalY, _godot_object, delta, scaled);
	}
	/**
	
	*/
	void rotate(in double radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.rotate, _godot_object, radians);
	}
	/**
	
	*/
	void setGlobalPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalPosition, _godot_object, position);
	}
	/**
	
	*/
	void setGlobalRotation(in double radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalRotation, _godot_object, radians);
	}
	/**
	
	*/
	void setGlobalRotationDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalRotationDegrees, _godot_object, degrees);
	}
	/**
	
	*/
	void setGlobalScale(in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalScale, _godot_object, scale);
	}
	/**
	
	*/
	void setGlobalTransform(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setGlobalTransform, _godot_object, xform);
	}
	/**
	
	*/
	void setPosition(in Vector2 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPosition, _godot_object, position);
	}
	/**
	
	*/
	void setRotation(in double radians)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotation, _godot_object, radians);
	}
	/**
	
	*/
	void setRotationDegrees(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRotationDegrees, _godot_object, degrees);
	}
	/**
	
	*/
	void setScale(in Vector2 scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setScale, _godot_object, scale);
	}
	/**
	
	*/
	void setTransform(in Transform2D xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransform, _godot_object, xform);
	}
	/**
	
	*/
	void setZAsRelative(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZAsRelative, _godot_object, enable);
	}
	/**
	
	*/
	void setZIndex(in long z_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setZIndex, _godot_object, z_index);
	}
	/**
	
	*/
	Vector2 toGlobal(in Vector2 local_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.toGlobal, _godot_object, local_point);
	}
	/**
	
	*/
	Vector2 toLocal(in Vector2 global_point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.toLocal, _godot_object, global_point);
	}
	/**
	
	*/
	void translate(in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.translate, _godot_object, offset);
	}
	/**
	
	*/
	@property Vector2 globalPosition()
	{
		return getGlobalPosition();
	}
	/// ditto
	@property void globalPosition(Vector2 v)
	{
		setGlobalPosition(v);
	}
	/**
	
	*/
	@property double globalRotation()
	{
		return getGlobalRotation();
	}
	/// ditto
	@property void globalRotation(double v)
	{
		setGlobalRotation(v);
	}
	/**
	
	*/
	@property double globalRotationDegrees()
	{
		return getGlobalRotationDegrees();
	}
	/// ditto
	@property void globalRotationDegrees(double v)
	{
		setGlobalRotationDegrees(v);
	}
	/**
	
	*/
	@property Vector2 globalScale()
	{
		return getGlobalScale();
	}
	/// ditto
	@property void globalScale(Vector2 v)
	{
		setGlobalScale(v);
	}
	/**
	
	*/
	@property Transform2D globalTransform()
	{
		return getGlobalTransform();
	}
	/// ditto
	@property void globalTransform(Transform2D v)
	{
		setGlobalTransform(v);
	}
	/**
	
	*/
	@property Vector2 position()
	{
		return getPosition();
	}
	/// ditto
	@property void position(Vector2 v)
	{
		setPosition(v);
	}
	/**
	
	*/
	@property double rotation()
	{
		return getRotation();
	}
	/// ditto
	@property void rotation(double v)
	{
		setRotation(v);
	}
	/**
	
	*/
	@property double rotationDegrees()
	{
		return getRotationDegrees();
	}
	/// ditto
	@property void rotationDegrees(double v)
	{
		setRotationDegrees(v);
	}
	/**
	
	*/
	@property Vector2 scale()
	{
		return getScale();
	}
	/// ditto
	@property void scale(Vector2 v)
	{
		setScale(v);
	}
	/**
	
	*/
	@property Transform2D transform()
	{
		return getTransform();
	}
	/// ditto
	@property void transform(Transform2D v)
	{
		setTransform(v);
	}
	/**
	
	*/
	@property bool zAsRelative()
	{
		return isZRelative();
	}
	/// ditto
	@property void zAsRelative(bool v)
	{
		setZAsRelative(v);
	}
	/**
	
	*/
	@property long zIndex()
	{
		return getZIndex();
	}
	/// ditto
	@property void zIndex(long v)
	{
		setZIndex(v);
	}
}
