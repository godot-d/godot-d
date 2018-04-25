/**
Low-level class for creating parsers for XML files.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.xmlparser;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Low-level class for creating parsers for XML files.

This class can serve as base to make custom XML parsers. Since XML is a very flexible standard, this interface is low level so it can be applied to any possible schema.
*/
@GodotBaseClass struct XMLParser
{
	static immutable string _GODOT_internal_name = "XMLParser";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in XMLParser other) const { return _godot_object.ptr is other._godot_object.ptr; }
	XMLParser opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
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
		There's no node (no file or buffer opened)
		*/
		nodeNone = 0,
		/**
		Element (tag)
		*/
		nodeElement = 1,
		/**
		End of element
		*/
		nodeElementEnd = 2,
		/**
		Text node
		*/
		nodeText = 3,
		/**
		Comment node
		*/
		nodeComment = 4,
		/**
		CDATA content
		*/
		nodeCdata = 5,
		/**
		Unknown node
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
	package(godot) static GodotMethod!(GodotError) _GODOT_read;
	package(godot) alias _GODOT_methodBindInfo(string name : "read") = _GODOT_read;
	/**
	Read the next node of the file. This returns an error code.
	*/
	GodotError read()
	{
		_GODOT_read.bind("XMLParser", "read");
		return ptrcall!(GodotError)(_GODOT_read, _godot_object);
	}
	package(godot) static GodotMethod!(XMLParser.NodeType) _GODOT_get_node_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_type") = _GODOT_get_node_type;
	/**
	Get the type of the current node. Compare with `NODE_*` constants.
	*/
	XMLParser.NodeType getNodeType()
	{
		_GODOT_get_node_type.bind("XMLParser", "get_node_type");
		return ptrcall!(XMLParser.NodeType)(_GODOT_get_node_type, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_node_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_name") = _GODOT_get_node_name;
	/**
	Get the name of the current element node. This will raise an error if the current node type is not `NODE_ELEMENT` nor `NODE_ELEMENT_END`
	*/
	String getNodeName() const
	{
		_GODOT_get_node_name.bind("XMLParser", "get_node_name");
		return ptrcall!(String)(_GODOT_get_node_name, _godot_object);
	}
	package(godot) static GodotMethod!(String) _GODOT_get_node_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_data") = _GODOT_get_node_data;
	/**
	Get the contents of a text node. This will raise an error in any other type of node.
	*/
	String getNodeData() const
	{
		_GODOT_get_node_data.bind("XMLParser", "get_node_data");
		return ptrcall!(String)(_GODOT_get_node_data, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_node_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_node_offset") = _GODOT_get_node_offset;
	/**
	Get the byte offset of the current node since the beginning of the file or buffer.
	*/
	long getNodeOffset() const
	{
		_GODOT_get_node_offset.bind("XMLParser", "get_node_offset");
		return ptrcall!(long)(_GODOT_get_node_offset, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_attribute_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attribute_count") = _GODOT_get_attribute_count;
	/**
	Get the amount of attributes in the current element.
	*/
	long getAttributeCount() const
	{
		_GODOT_get_attribute_count.bind("XMLParser", "get_attribute_count");
		return ptrcall!(long)(_GODOT_get_attribute_count, _godot_object);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_attribute_name;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attribute_name") = _GODOT_get_attribute_name;
	/**
	Get the name of the attribute specified by the index in `idx` argument.
	*/
	String getAttributeName(in long idx) const
	{
		_GODOT_get_attribute_name.bind("XMLParser", "get_attribute_name");
		return ptrcall!(String)(_GODOT_get_attribute_name, _godot_object, idx);
	}
	package(godot) static GodotMethod!(String, long) _GODOT_get_attribute_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_attribute_value") = _GODOT_get_attribute_value;
	/**
	Get the value of the attribute specified by the index in `idx` argument.
	*/
	String getAttributeValue(in long idx) const
	{
		_GODOT_get_attribute_value.bind("XMLParser", "get_attribute_value");
		return ptrcall!(String)(_GODOT_get_attribute_value, _godot_object, idx);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_attribute;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_attribute") = _GODOT_has_attribute;
	/**
	Check whether or not the current element has a certain attribute.
	*/
	bool hasAttribute(StringArg0)(in StringArg0 name) const
	{
		_GODOT_has_attribute.bind("XMLParser", "has_attribute");
		return ptrcall!(bool)(_GODOT_has_attribute, _godot_object, name);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_named_attribute_value;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_named_attribute_value") = _GODOT_get_named_attribute_value;
	/**
	Get the value of a certain attribute of the current element by name. This will raise an error if the element has no such attribute.
	*/
	String getNamedAttributeValue(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_named_attribute_value.bind("XMLParser", "get_named_attribute_value");
		return ptrcall!(String)(_GODOT_get_named_attribute_value, _godot_object, name);
	}
	package(godot) static GodotMethod!(String, String) _GODOT_get_named_attribute_value_safe;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_named_attribute_value_safe") = _GODOT_get_named_attribute_value_safe;
	/**
	Get the value of a certain attribute of the current element by name. This will return an empty $(D String) if the attribute is not found.
	*/
	String getNamedAttributeValueSafe(StringArg0)(in StringArg0 name) const
	{
		_GODOT_get_named_attribute_value_safe.bind("XMLParser", "get_named_attribute_value_safe");
		return ptrcall!(String)(_GODOT_get_named_attribute_value_safe, _godot_object, name);
	}
	package(godot) static GodotMethod!(bool) _GODOT_is_empty;
	package(godot) alias _GODOT_methodBindInfo(string name : "is_empty") = _GODOT_is_empty;
	/**
	Check whether the current element is empty (this only works for completely empty tags, e.g. &lt;element \&gt;).
	*/
	bool isEmpty() const
	{
		_GODOT_is_empty.bind("XMLParser", "is_empty");
		return ptrcall!(bool)(_GODOT_is_empty, _godot_object);
	}
	package(godot) static GodotMethod!(long) _GODOT_get_current_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_current_line") = _GODOT_get_current_line;
	/**
	Get the current line in the parsed file (currently not implemented).
	*/
	long getCurrentLine() const
	{
		_GODOT_get_current_line.bind("XMLParser", "get_current_line");
		return ptrcall!(long)(_GODOT_get_current_line, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_skip_section;
	package(godot) alias _GODOT_methodBindInfo(string name : "skip_section") = _GODOT_skip_section;
	/**
	Skips the current section. If the node contains other elements, they will be ignored and the cursor will go to the closing of the current element.
	*/
	void skipSection()
	{
		_GODOT_skip_section.bind("XMLParser", "skip_section");
		ptrcall!(void)(_GODOT_skip_section, _godot_object);
	}
	package(godot) static GodotMethod!(GodotError, long) _GODOT_seek;
	package(godot) alias _GODOT_methodBindInfo(string name : "seek") = _GODOT_seek;
	/**
	Move the buffer cursor to a certain offset (since the beginning) and read the next node there. This returns an error code.
	*/
	GodotError seek(in long position)
	{
		_GODOT_seek.bind("XMLParser", "seek");
		return ptrcall!(GodotError)(_GODOT_seek, _godot_object, position);
	}
	package(godot) static GodotMethod!(GodotError, String) _GODOT_open;
	package(godot) alias _GODOT_methodBindInfo(string name : "open") = _GODOT_open;
	/**
	Open a XML file for parsing. This returns an error code.
	*/
	GodotError open(StringArg0)(in StringArg0 file)
	{
		_GODOT_open.bind("XMLParser", "open");
		return ptrcall!(GodotError)(_GODOT_open, _godot_object, file);
	}
	package(godot) static GodotMethod!(GodotError, PoolByteArray) _GODOT_open_buffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "open_buffer") = _GODOT_open_buffer;
	/**
	Open a XML raw buffer for parsing. This returns an error code.
	*/
	GodotError openBuffer(in PoolByteArray buffer)
	{
		_GODOT_open_buffer.bind("XMLParser", "open_buffer");
		return ptrcall!(GodotError)(_GODOT_open_buffer, _godot_object, buffer);
	}
}
