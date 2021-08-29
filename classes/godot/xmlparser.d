/**
Low-level class for creating parsers for $(D url=https://en.wikipedia.org/wiki/XML)XML$(D /url) files.

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
Low-level class for creating parsers for $(D url=https://en.wikipedia.org/wiki/XML)XML$(D /url) files.

This class can serve as base to make custom XML parsers. Since XML is a very flexible standard, this interface is low-level so it can be applied to any possible schema.
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
	@disable new(size_t s);
	/// 
	enum NodeType : int
	{
		/**
		There's no node (no file or buffer opened).
		*/
		nodeNone = 0,
		/**
		Element (tag).
		*/
		nodeElement = 1,
		/**
		End of element.
		*/
		nodeElementEnd = 2,
		/**
		Text node.
		*/
		nodeText = 3,
		/**
		Comment node.
		*/
		nodeComment = 4,
		/**
		CDATA content.
		*/
		nodeCdata = 5,
		/**
		Unknown node.
		*/
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
	Gets the amount of attributes in the current element.
	*/
	long getAttributeCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getAttributeCount, _godot_object);
	}
	/**
	Gets the name of the attribute specified by the index in `idx` argument.
	*/
	String getAttributeName(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAttributeName, _godot_object, idx);
	}
	/**
	Gets the value of the attribute specified by the index in `idx` argument.
	*/
	String getAttributeValue(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getAttributeValue, _godot_object, idx);
	}
	/**
	Gets the current line in the parsed file (currently not implemented).
	*/
	long getCurrentLine() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getCurrentLine, _godot_object);
	}
	/**
	Gets the value of a certain attribute of the current element by name. This will raise an error if the element has no such attribute.
	*/
	String getNamedAttributeValue(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNamedAttributeValue, _godot_object, name);
	}
	/**
	Gets the value of a certain attribute of the current element by name. This will return an empty $(D String) if the attribute is not found.
	*/
	String getNamedAttributeValueSafe(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNamedAttributeValueSafe, _godot_object, name);
	}
	/**
	Gets the contents of a text node. This will raise an error in any other type of node.
	*/
	String getNodeData() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodeData, _godot_object);
	}
	/**
	Gets the name of the current element node. This will raise an error if the current node type is neither $(D constant NODE_ELEMENT) nor $(D constant NODE_ELEMENT_END).
	*/
	String getNodeName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getNodeName, _godot_object);
	}
	/**
	Gets the byte offset of the current node since the beginning of the file or buffer.
	*/
	long getNodeOffset() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getNodeOffset, _godot_object);
	}
	/**
	Gets the type of the current node. Compare with $(D nodetype) constants.
	*/
	XMLParser.NodeType getNodeType()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(XMLParser.NodeType)(GDNativeClassBinding.getNodeType, _godot_object);
	}
	/**
	Check whether the current element has a certain attribute.
	*/
	bool hasAttribute(in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasAttribute, _godot_object, name);
	}
	/**
	Check whether the current element is empty (this only works for completely empty tags, e.g. `&lt;element \&gt;`).
	*/
	bool isEmpty() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isEmpty, _godot_object);
	}
	/**
	Opens an XML file for parsing. This returns an error code.
	*/
	GodotError open(in String file)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.open, _godot_object, file);
	}
	/**
	Opens an XML raw buffer for parsing. This returns an error code.
	*/
	GodotError openBuffer(in PoolByteArray buffer)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.openBuffer, _godot_object, buffer);
	}
	/**
	Reads the next node of the file. This returns an error code.
	*/
	GodotError read()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.read, _godot_object);
	}
	/**
	Moves the buffer cursor to a certain offset (since the beginning) and read the next node there. This returns an error code.
	*/
	GodotError seek(in long position)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(GDNativeClassBinding.seek, _godot_object, position);
	}
	/**
	Skips the current section. If the node contains other elements, they will be ignored and the cursor will go to the closing of the current element.
	*/
	void skipSection()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skipSection, _godot_object);
	}
}
