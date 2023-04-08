/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfbufferview;
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
import godot.resource;
/**

*/
@GodotBaseClass struct GLTFBufferView
{
	package(godot) enum string _GODOT_internal_name = "GLTFBufferView";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_buffer") GodotMethod!(long) getBuffer;
		@GodotName("get_byte_length") GodotMethod!(long) getByteLength;
		@GodotName("get_byte_offset") GodotMethod!(long) getByteOffset;
		@GodotName("get_byte_stride") GodotMethod!(long) getByteStride;
		@GodotName("get_indices") GodotMethod!(bool) getIndices;
		@GodotName("set_buffer") GodotMethod!(void, long) setBuffer;
		@GodotName("set_byte_length") GodotMethod!(void, long) setByteLength;
		@GodotName("set_byte_offset") GodotMethod!(void, long) setByteOffset;
		@GodotName("set_byte_stride") GodotMethod!(void, long) setByteStride;
		@GodotName("set_indices") GodotMethod!(void, bool) setIndices;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFBufferView other) const
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
	/// Construct a new instance of GLTFBufferView.
	/// Note: use `memnew!GLTFBufferView` instead.
	static GLTFBufferView _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFBufferView");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFBufferView)(constructor());
	}
	/**
	
	*/
	long getBuffer()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBuffer, _godot_object);
	}
	/**
	
	*/
	long getByteLength()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getByteLength, _godot_object);
	}
	/**
	
	*/
	long getByteOffset()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getByteOffset, _godot_object);
	}
	/**
	
	*/
	long getByteStride()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getByteStride, _godot_object);
	}
	/**
	
	*/
	bool getIndices()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getIndices, _godot_object);
	}
	/**
	
	*/
	void setBuffer(in long buffer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBuffer, _godot_object, buffer);
	}
	/**
	
	*/
	void setByteLength(in long byte_length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setByteLength, _godot_object, byte_length);
	}
	/**
	
	*/
	void setByteOffset(in long byte_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setByteOffset, _godot_object, byte_offset);
	}
	/**
	
	*/
	void setByteStride(in long byte_stride)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setByteStride, _godot_object, byte_stride);
	}
	/**
	
	*/
	void setIndices(in bool indices)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setIndices, _godot_object, indices);
	}
	/**
	
	*/
	@property long buffer()
	{
		return getBuffer();
	}
	/// ditto
	@property void buffer(long v)
	{
		setBuffer(v);
	}
	/**
	
	*/
	@property long byteLength()
	{
		return getByteLength();
	}
	/// ditto
	@property void byteLength(long v)
	{
		setByteLength(v);
	}
	/**
	
	*/
	@property long byteOffset()
	{
		return getByteOffset();
	}
	/// ditto
	@property void byteOffset(long v)
	{
		setByteOffset(v);
	}
	/**
	
	*/
	@property long byteStride()
	{
		return getByteStride();
	}
	/// ditto
	@property void byteStride(long v)
	{
		setByteStride(v);
	}
	/**
	
	*/
	@property bool indices()
	{
		return getIndices();
	}
	/// ditto
	@property void indices(bool v)
	{
		setIndices(v);
	}
}
