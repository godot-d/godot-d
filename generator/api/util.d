module api.util;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;
import std.path;
import std.conv : text;
import std.string;

bool isPrimitive(in string type)
{
	if(type.isEnum) return true;
	return only("int", "bool", "real", "float", "void").canFind(type);
}

bool isEnum(in string type)
{
	return type.startsWith("enum.");
}

bool isCoreType(in string type)
{
	auto coreTypes = only("Array",
	                      "Basis",
	                      "Color",
	                      "Dictionary",
	                      "Error",
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
	                      "Rect3",
	                      "RID",
	                      "String",
	                      "Transform",
	                      "Transform2D",
	                      "Variant",
	                      "Vector2",
	                      "Vector3");
	return coreTypes.canFind(type);
}

string stripName(in string name)
{
	if(!name.length) return null;
	return (name[0] == '_')?(name[1..$]):name;
}

/// type should be taken as template arg by methods to allow implicit conversion in ptrcall
bool acceptImplicit(string type)
{
	auto accept = only("String", "Variant", "NodePath");
	return accept.canFind(type);
}

/++
Storage class to generate for the parameter based on type.

While not reference types in D, some of the core types should be passed by ref
to avoid copying. Unfortunately, `const ref` arguments in D CANNOT be rvalues,
unlike in C++, so we should definitely not use `ref` for types like Vector2
that will regularly be passed as an rvalue constructed directly in the function
call (like this: `kinematic_body.move(Vector3(1, 2, 3));`)
+/
string dCallParamPrefix(string type)
{
	// all core types can be copied.
	return "in ";
}
/// how to pass the parameters into ptrcall void** arg
string ptrCallArgPrefix(string type)
{
	if(type.isPrimitive || type.isCoreType) return "&";
	return "";
	//return "cast(godot_object)"; // for both base classes and D classes (through alias this)
}

/// the default value to use for an argument if none is provided
string emptyDefault(string type)
{
	import std.string;
	import std.conv : text;
	
	if(type.isPrimitive) return type~".init";
	
	switch(type)
	{
		case "String":
			return `""`;
		case "Variant":
			return "Variant.nil";
		case "Dictionary":
			return type~".empty_dictionary"; // naming convention fail
		case "Array":
			return type~".empty_array"; // naming convention fail, ugh. Change it?
		case "PoolByteArray":
		case "PoolIntArray":
		case "PoolRealArray":
		case "PoolVector2Array":
		case "PoolVector3Array":
		case "PoolStringArray":
		case "PoolColorArray":
			return type~".empty";
		/++case "Transform":
		case "Transform2D":
		case "Color":
		case "Vector2":
		case "Vector3":
		case "Rect2":
		case "Rect3":
		case "Plane":
		case "Basis":
		
			return type~".init"; // D's default initializer+/
		default: // all Object types
		{
			return type.escapeType~".init"; // D's default initializer
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
string escapeDefault(string type, string arg)
{
	import std.string;
	import std.conv : text;
	
	if(!arg || arg.length == 0) return emptyDefault(type);
	
	// parse the defaults in api.json
	switch(type)
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
		case "Rect3":
			return type~arg;
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
	
	if(t == "Object") return "GodotObject";
	if(t == "Error") return "GodotError";
	if(t.isEnum) return t.qualifyEnumName;
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

