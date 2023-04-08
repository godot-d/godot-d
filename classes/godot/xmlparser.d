/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.xmlparser;
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
import godot.reference;
/**

*/
@GodotBaseClass struct XMLParser
{
	package(godot) enum string _GODOT_internal_name = "XMLParser";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_attribute_count") GodotMethod!(long) getAttributeCount;
		@GodotName("get_attribute_name") GodotMethod!(String, long) getAttributeName;
		@GodotName("get_attribute_value") GodotMethod!(String, long) getAttributeValue;
		@GodotName("get_current_line") GodotMethod!(long) getCurrentLine;
		@GodotName("get_named_attribute_value") GodotMethod!(String, String) getNamedAttributeValue;
		@GodotName("get_named_attribute_value_safe") GodotMethod!(String, String) getNamedAttributeValueSafe;
		@GodotName("get_node_data") GodotMethod!(String) getNodeData;
		@GodotName("get_node_name") GodotMethod!(String) getNodeName;
		@GodotName("get_node_offset") GodotMethod!(long) getNodeOffset;
		@GodotName("get_node_type") GodotMethod!(XMLParser.NodeType) getNodeType;
		@GodotName("has_attribute") GodotMethod!(bool, String) hasAttribute;
		@GodotName("is_empty") GodotMethod!(bool) isEmpty;
		@GodotName("open") GodotMethod!(GodotError, String) open;
		@GodotName("open_buffer") GodotMethod!(GodotError, PoolByteArray) openBuffer;
		@GodotName("read") GodotMethod!(GodotError) read;
		@GodotName("seek") GodotMethod!(GodotError, long) seek;
		@GodotName("skip_section") GodotMethod!(void) skipSection;
	}
	/// 
	pragma(inline, true) bool opEquals(in XMLParser other) const
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
	/// Construct a new instance of XMLParser.
	/// Note: use `memnew!XMLParser` instead.
	static XMLParser _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("XMLParser");
		if(constructor is null) return typeof(this).init;
		return cast(XMLParser)(constructor());
	}
	/// 
	enum NodeType : int
	{
		/** */
		nodeNone = 0,
		/** */
		nodeElement = 1,
		/** */
		nodeElementEnd = 2,
		/** */
		nodeText = 3,
		/** */
		nodeComment = 4,
		/** */
		nodeCdata = 5,
		/** */
		nodeUnknown = 6,
	}
	/// 
	enum Constants : int
	{
		nodeNone = 0,
		nodeElement = 1,
		nodeElementEnd = 2,
		nodeText = 3,
		nodeComment = 4,
		nodeCdata = 5,
		nodeUnknown = 6,
	}
	/**
	
	*/
	long getAttributeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAttributeCount, _godot_object);
	}
	/**
	
	*/
	String getAttributeName(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAttributeName, _godot_object, idx);
	}
	/**
	
	*/
	String getAttributeValue(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAttributeValue, _godot_object, idx);
	}
	/**
	
	*/
	long getCurrentLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentLine, _godot_object);
	}
	/**
	
	*/
	String getNamedAttributeValue(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNamedAttributeValue, _godot_object, name);
	}
	/**
	
	*/
	String getNamedAttributeValueSafe(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNamedAttributeValueSafe, _godot_object, name);
	}
	/**
	
	*/
	String getNodeData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodeData, _godot_object);
	}
	/**
	
	*/
	String getNodeName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodeName, _godot_object);
	}
	/**
	
	*/
	long getNodeOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNodeOffset, _godot_object);
	}
	/**
	
	*/
	XMLParser.NodeType getNodeType()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(XMLParser.NodeType)(GDNativeClassBinding.getNodeType, _godot_object);
	}
	/**
	
	*/
	bool hasAttribute(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAttribute, _godot_object, name);
	}
	/**
	
	*/
	bool isEmpty() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEmpty, _godot_object);
	}
	/**
	
	*/
	GodotError open(in String file)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.open, _godot_object, file);
	}
	/**
	
	*/
	GodotError openBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.openBuffer, _godot_object, buffer);
	}
	/**
	
	*/
	GodotError read()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.read, _godot_object);
	}
	/**
	
	*/
	GodotError seek(in long position)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.seek, _godot_object, position);
	}
	/**
	
	*/
	void skipSection()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skipSection, _godot_object);
	}
}
