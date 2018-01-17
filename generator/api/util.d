module api.util;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;
import std.path;
import std.conv : text;
import std.string;

import asdf;

class Type
{
	static Type[string] typesByGodotName;
	string d;
	string godot;
	
	Type enumParent;
	
	//alias d this;
	
	string moduleName() const
	{
		if(isPrimitive || isCoreType) return null;
		return godot.chompPrefix("_").toLower;
	}
	
	bool isEnum() const
	{
		return godot.startsWith("enum.");
	}
	
	bool isPrimitive() const
	{
		if(isEnum) return true;
		return only("int", "bool", "real", "float", "void").canFind(godot);
	}

	bool isCoreType() const
	{
		auto coreTypes = only("AABB",
		                      "Array",
		                      "Basis",
		                      "Color",
		                      "Dictionary",
		                      "GodotError",
		                      "NodePath",
		                      "Plane",
		                      "PoolByteArray",
		                      "PoolIntArray",
		                      "PoolRealArray",
		                      "PoolStringArray",
		                      "PoolVector2Array",
		                      "PoolVector3Array",
		                      "PoolColorArray",
		                      "Quat",
		                      "Rect2",
		                      "RID",
		                      "String",
		                      "Transform",
		                      "Transform2D",
		                      "Variant",
		                      "Vector2",
		                      "Vector3");
		return coreTypes.canFind(godot);
	}

	/// type should be taken as template arg by methods to allow implicit conversion in ptrcall
	bool acceptImplicit() const
	{
		auto accept = only("String", "Variant", "NodePath");
		return accept.canFind(godot);
	}

	/// storage class to generate for function parameter of this type
	string dCallParamPrefix() const
	{
		// all core types can be copied.
		return "in ";
	}
	/// how to pass parameters of this type into ptrcall void** arg
	string ptrCallArgPrefix() const
	{
		if(isPrimitive || isCoreType) return "&";
		return "";
		//return "cast(godot_object)"; // for both base classes and D classes (through alias this)
	}
	
	
	this(string godotName)
	{
		godot = godotName;
		d = godotName.escapeType;
	}
	static Type get(string godotName)
	{
		if(!godotName.length) return null; // no type (used in base_class)
		if(Type* ptr = godotName in typesByGodotName) return *ptr;
		Type ret = new Type(godotName);
		
		static import api.enums;
		if(ret.isEnum) ret.enumParent = get(api.enums.enumParent(godotName));
		
		typesByGodotName[godotName] = ret;
		
		return ret;
	}
	static Type deserialize(ref Asdf asdf)
	{
		string gn = asdf.get!string(null);
		Type ret = get(gn);
		return ret;
	}
}

/// the default value to use for an argument if none is provided
string emptyDefault(in Type type)
{
	import std.string;
	import std.conv : text;
	
	if(type.isPrimitive) return type.d~".init";
	
	switch(type.d)
	{
		case "String":
			return `""`;
		case "Variant":
			return "Variant.nil";
		case "Dictionary":
			return type.d~".empty_dictionary"; // naming convention fail
		case "Array":
			return type.d~".empty_array"; // naming convention fail, ugh. Change it?
		case "PoolByteArray":
		case "PoolIntArray":
		case "PoolRealArray":
		case "PoolVector2Array":
		case "PoolVector3Array":
		case "PoolStringArray":
		case "PoolColorArray":
			return type.d~".empty";
		/++case "Transform":
		case "Transform2D":
		case "Color":
		case "Vector2":
		case "Vector3":
		case "Rect2":
		case "AABB":
		case "Plane":
		case "Basis":
		
			return type~".init"; // D's default initializer+/
		default: // all Object types
		{
			return type.d~".init"; // D's default initializer
			///return "null";
		}
	}
}

/++
PoolVector2Array
PoolColorArray
Array
Vector2
float
Color
bool
Object
PoolVector3Array
Vector3
Transform2D
RID
int
Transform
Rect2
String
Variant
PoolStringArray
+/
string escapeDefault(in Type type, string arg)
{
	import std.string;
	import std.conv : text;
	
	if(!arg || arg.length == 0) return emptyDefault(type);
	
	// parse the defaults in api.json
	switch(type.d)
	{
		case "Color": // "1,1,1,1"
			return "Color("~arg~")";
		case "bool": // True, False
			return arg.toLower;
		case "Array": // "[]", "Null" - just use the empty one
		case "Dictionary":
		case "PoolByteArray":
		case "PoolIntArray":
		case "PoolRealArray":
		case "PoolVector2Array":
		case "PoolVector3Array":
		case "PoolStringArray":
		case "PoolColorArray": // "[PoolColorArray]" - wat?
			return emptyDefault(type);
		case "Transform": // "1, 0, 0, 0, 1, 0, 0, 0, 1 - 0, 0, 0" TODO: parse this
		case "Transform2D":
		case "RID": // always empty?
			return emptyDefault(type); // D's default initializer
		case "Vector2": // "(0, 0)"
		case "Vector3":
		case "Rect2": // "(0, 0, 0, 0)"
		case "AABB":
			return type.d~arg;
		case "Variant":
			if(arg == "Null") return "Variant.nil";
			else return arg;
		case "String":
			return "\""~arg~"\"";
		default: // all Object types
		{
			if(arg == "Null") return emptyDefault(type);
			if(arg == "[Object:null]") return emptyDefault(type);
			return arg;
		}
	}
}

string escapeType(string t)
{
	import api.enums : qualifyEnumName;
	
	t = t.chompPrefix("_");
	
	if(t == "Object") return "GodotObject";
	if(t == "Error") return "GodotError";
	if(t == "float") return "double";
	if(t == "int") return "long";
	if(t.startsWith("enum.")) return t.qualifyEnumName;
	return t;
}

string escapeD(string s)
{
	import std.meta;
	import std.uni, std.utf;
	/// TODO: there must be a better way of doing this...
	/// maybe one of the D parser libraries has a list of keywords and basic types
	
	if(s.toUTF32[0].isNumber) s = "_"~s; // can't start with a number
	
	alias keywords = AliasSeq!(
		"class",
		"interface",
		"struct",
		"enum",
		"bool",
		"ubyte",
		"byte",
		"ushort",
		"short",
		"uint",
		"int",
		"ulong",
		"long",
		"cent", // really?
		"ucent",
		"float",
		"double",
		"real",
		"char",
		"wchar",
		"dchar",
		"function",
		"delegate",
		"override",
		"default",
		"case",
		"switch",
		"export",
		"import",
		"template",
		"new",
		"delete",
		"return",
		"with",
		"align",
		"in",
		"out",
		"ref",
		"auto",
		"init",
		"body", // for now at least...
	);
	switch(s)
	{
		case "Object": return "GodotObject";
		case "Error": return "GodotError";
		foreach(kw; keywords)
		{
			case kw:
		}
			return "_"~s;
		default:
			return s;
	}
}

