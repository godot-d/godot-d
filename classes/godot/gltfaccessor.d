/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.gltfaccessor;
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
@GodotBaseClass struct GLTFAccessor
{
	package(godot) enum string _GODOT_internal_name = "GLTFAccessor";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_buffer_view") GodotMethod!(long) getBufferView;
		@GodotName("get_byte_offset") GodotMethod!(long) getByteOffset;
		@GodotName("get_component_type") GodotMethod!(long) getComponentType;
		@GodotName("get_count") GodotMethod!(long) getCount;
		@GodotName("get_max") GodotMethod!(PoolRealArray) getMax;
		@GodotName("get_min") GodotMethod!(PoolRealArray) getMin;
		@GodotName("get_normalized") GodotMethod!(bool) getNormalized;
		@GodotName("get_sparse_count") GodotMethod!(long) getSparseCount;
		@GodotName("get_sparse_indices_buffer_view") GodotMethod!(long) getSparseIndicesBufferView;
		@GodotName("get_sparse_indices_byte_offset") GodotMethod!(long) getSparseIndicesByteOffset;
		@GodotName("get_sparse_indices_component_type") GodotMethod!(long) getSparseIndicesComponentType;
		@GodotName("get_sparse_values_buffer_view") GodotMethod!(long) getSparseValuesBufferView;
		@GodotName("get_sparse_values_byte_offset") GodotMethod!(long) getSparseValuesByteOffset;
		@GodotName("get_type") GodotMethod!(long) getType;
		@GodotName("set_buffer_view") GodotMethod!(void, long) setBufferView;
		@GodotName("set_byte_offset") GodotMethod!(void, long) setByteOffset;
		@GodotName("set_component_type") GodotMethod!(void, long) setComponentType;
		@GodotName("set_count") GodotMethod!(void, long) setCount;
		@GodotName("set_max") GodotMethod!(void, PoolRealArray) setMax;
		@GodotName("set_min") GodotMethod!(void, PoolRealArray) setMin;
		@GodotName("set_normalized") GodotMethod!(void, bool) setNormalized;
		@GodotName("set_sparse_count") GodotMethod!(void, long) setSparseCount;
		@GodotName("set_sparse_indices_buffer_view") GodotMethod!(void, long) setSparseIndicesBufferView;
		@GodotName("set_sparse_indices_byte_offset") GodotMethod!(void, long) setSparseIndicesByteOffset;
		@GodotName("set_sparse_indices_component_type") GodotMethod!(void, long) setSparseIndicesComponentType;
		@GodotName("set_sparse_values_buffer_view") GodotMethod!(void, long) setSparseValuesBufferView;
		@GodotName("set_sparse_values_byte_offset") GodotMethod!(void, long) setSparseValuesByteOffset;
		@GodotName("set_type") GodotMethod!(void, long) setType;
	}
	/// 
	pragma(inline, true) bool opEquals(in GLTFAccessor other) const
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
	/// Construct a new instance of GLTFAccessor.
	/// Note: use `memnew!GLTFAccessor` instead.
	static GLTFAccessor _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("GLTFAccessor");
		if(constructor is null) return typeof(this).init;
		return cast(GLTFAccessor)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	long getBufferView()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getBufferView, _godot_object);
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
	long getComponentType()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getComponentType, _godot_object);
	}
	/**
	
	*/
	long getCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCount, _godot_object);
	}
	/**
	
	*/
	PoolRealArray getMax()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(GDNativeClassBinding.getMax, _godot_object);
	}
	/**
	
	*/
	PoolRealArray getMin()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolRealArray)(GDNativeClassBinding.getMin, _godot_object);
	}
	/**
	
	*/
	bool getNormalized()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.getNormalized, _godot_object);
	}
	/**
	
	*/
	long getSparseCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSparseCount, _godot_object);
	}
	/**
	
	*/
	long getSparseIndicesBufferView()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSparseIndicesBufferView, _godot_object);
	}
	/**
	
	*/
	long getSparseIndicesByteOffset()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSparseIndicesByteOffset, _godot_object);
	}
	/**
	
	*/
	long getSparseIndicesComponentType()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSparseIndicesComponentType, _godot_object);
	}
	/**
	
	*/
	long getSparseValuesBufferView()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSparseValuesBufferView, _godot_object);
	}
	/**
	
	*/
	long getSparseValuesByteOffset()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getSparseValuesByteOffset, _godot_object);
	}
	/**
	
	*/
	long getType()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getType, _godot_object);
	}
	/**
	
	*/
	void setBufferView(in long buffer_view)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBufferView, _godot_object, buffer_view);
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
	void setComponentType(in long component_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setComponentType, _godot_object, component_type);
	}
	/**
	
	*/
	void setCount(in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setCount, _godot_object, count);
	}
	/**
	
	*/
	void setMax(in PoolRealArray max)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMax, _godot_object, max);
	}
	/**
	
	*/
	void setMin(in PoolRealArray min)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMin, _godot_object, min);
	}
	/**
	
	*/
	void setNormalized(in bool normalized)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormalized, _godot_object, normalized);
	}
	/**
	
	*/
	void setSparseCount(in long sparse_count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSparseCount, _godot_object, sparse_count);
	}
	/**
	
	*/
	void setSparseIndicesBufferView(in long sparse_indices_buffer_view)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSparseIndicesBufferView, _godot_object, sparse_indices_buffer_view);
	}
	/**
	
	*/
	void setSparseIndicesByteOffset(in long sparse_indices_byte_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSparseIndicesByteOffset, _godot_object, sparse_indices_byte_offset);
	}
	/**
	
	*/
	void setSparseIndicesComponentType(in long sparse_indices_component_type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSparseIndicesComponentType, _godot_object, sparse_indices_component_type);
	}
	/**
	
	*/
	void setSparseValuesBufferView(in long sparse_values_buffer_view)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSparseValuesBufferView, _godot_object, sparse_values_buffer_view);
	}
	/**
	
	*/
	void setSparseValuesByteOffset(in long sparse_values_byte_offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setSparseValuesByteOffset, _godot_object, sparse_values_byte_offset);
	}
	/**
	
	*/
	void setType(in long type)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setType, _godot_object, type);
	}
	/**
	
	*/
	@property long bufferView()
	{
		return getBufferView();
	}
	/// ditto
	@property void bufferView(long v)
	{
		setBufferView(v);
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
	@property long componentType()
	{
		return getComponentType();
	}
	/// ditto
	@property void componentType(long v)
	{
		setComponentType(v);
	}
	/**
	
	*/
	@property long count()
	{
		return getCount();
	}
	/// ditto
	@property void count(long v)
	{
		setCount(v);
	}
	/**
	
	*/
	@property PoolRealArray max()
	{
		return getMax();
	}
	/// ditto
	@property void max(PoolRealArray v)
	{
		setMax(v);
	}
	/**
	
	*/
	@property PoolRealArray min()
	{
		return getMin();
	}
	/// ditto
	@property void min(PoolRealArray v)
	{
		setMin(v);
	}
	/**
	
	*/
	@property bool normalized()
	{
		return getNormalized();
	}
	/// ditto
	@property void normalized(bool v)
	{
		setNormalized(v);
	}
	/**
	
	*/
	@property long sparseCount()
	{
		return getSparseCount();
	}
	/// ditto
	@property void sparseCount(long v)
	{
		setSparseCount(v);
	}
	/**
	
	*/
	@property long sparseIndicesBufferView()
	{
		return getSparseIndicesBufferView();
	}
	/// ditto
	@property void sparseIndicesBufferView(long v)
	{
		setSparseIndicesBufferView(v);
	}
	/**
	
	*/
	@property long sparseIndicesByteOffset()
	{
		return getSparseIndicesByteOffset();
	}
	/// ditto
	@property void sparseIndicesByteOffset(long v)
	{
		setSparseIndicesByteOffset(v);
	}
	/**
	
	*/
	@property long sparseIndicesComponentType()
	{
		return getSparseIndicesComponentType();
	}
	/// ditto
	@property void sparseIndicesComponentType(long v)
	{
		setSparseIndicesComponentType(v);
	}
	/**
	
	*/
	@property long sparseValuesBufferView()
	{
		return getSparseValuesBufferView();
	}
	/// ditto
	@property void sparseValuesBufferView(long v)
	{
		setSparseValuesBufferView(v);
	}
	/**
	
	*/
	@property long sparseValuesByteOffset()
	{
		return getSparseValuesByteOffset();
	}
	/// ditto
	@property void sparseValuesByteOffset(long v)
	{
		setSparseValuesByteOffset(v);
	}
	/**
	
	*/
	@property long type()
	{
		return getType();
	}
	/// ditto
	@property void type(long v)
	{
		setType(v);
	}
}
