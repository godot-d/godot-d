module api.util;

import api.classes, api.enums, api.methods;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;
import std.path;
import std.conv : text;
import std.string;

import asdf;
import sumtype;

@serdeProxy!string
struct Name
{
	immutable string godot;
	immutable string d;

	this(string godotName)
	{
		godot = godotName;
		d = godotName.dTypeName;
	}
}

string dTypeName(string godotName)
{
	if(godotName.startsWith("enum::")) return escapeType(godotName["enum::".length..$]);
	else return godotName.escapeType;
}

@serdeProxy!string
struct Type
{
	BaseType base;
	bool isConst = false;
	bool isPointer = false;

	this(string name)
	{
		isConst = name.startsWith("const ");
		isPointer = name.endsWith("*");
		if(isConst) name = name["const ".length..$];
		if(isPointer) name = name[0..$-1].strip;

		base = BaseType.get(name);
	}
}
/++
A base type without qualifiers. Includes builtin and GodotObject-derived classes, enums, and primitives.
+/
//@serdeProxy!TypeRef
class BaseType
{
	static BaseType[string] typesByGodotName;
	static BaseType[string] typesByDName;

	debug static void printApiTypeCounts()
	{
		import std.stdio;
		size_t bn,cn,en,pn;
		foreach(k,v;typesByDName)
		{
			if(v.typeApi == typeof(v.typeApi).init)
			{
				writeln("Primitive: ", v.d, "/", v.godot);
				pn += 1;
			}
			else *v.typeApi.match!(
				(BuiltinClass b)=>&bn,
				(Class c)=>&cn,
				(Enum e){
					writeln("Enum: ", v.d, "/", v.godot);
					return &en;
				}
			) += 1;
		}
		pn = typesByDName.length-bn-cn-en;
		writefln!"API Types:   B: %d\nC: %d\nE: %d\nP: %d\n---------\nT: %d/%d"(bn,cn,en,pn, typesByDName.length, typesByGodotName.length);
	}
	
	static BaseType[] enums;
	
	SumType!(BuiltinClass, Class, Enum) typeApi;
	/// Parent class of non-global Enums
	BaseType parent;

	immutable string d;
	immutable string godot;
	
	@property string dRef() const { return isRef ? ("Ref!"~d) : d; }
	
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

	//bool isCoreType = false;
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
	
	bool isRef() const
	{
		return typeApi.match!((const Class c) => c.is_refcounted, _ => false);
		//return typeApi.match!((Class c) => c.is_refcounted, _ => false);
	}

	/// type should be taken as template arg by methods to allow implicit conversion in ptrcall
	bool acceptImplicit() const
	{
		auto accept = only("Variant", "NodePath");
		return accept.canFind(godot);
	}

	/// prefix for function parameter of this type
	string dCallParamPrefix() const
	{
		return typeApi.match!((const Class c) => "", _ => "in ");
		//if(isRef) return "";
		//else if(objectClass) return "";
		//else return "in ";
	}
	/// how to pass parameters of this type into ptrcall void** arg
	string ptrCallArgPrefix() const
	{
		if(isPrimitive || isCoreType) return "&";
		return "";
		//return "cast(godot_object)"; // for both base classes and D classes (through alias this)
	}
	
	
	private this(string godotName)
	{
		godot = godotName;
		d = godotName.dTypeName;
	}
	static BaseType get(string godotName)
	{
		if(!godotName.length) return null; // no type (used in base_class)
		if(BaseType* ptr = godotName in typesByGodotName) return *ptr;
		BaseType ret = new BaseType(godotName);
		
		static import api.enums;
		if(ret.isEnum)
		{
			ret.parent = get(api.enums.enumParent(godotName));
			enums ~= ret;
		}
		
		typesByGodotName[godotName] = ret;
		typesByDName[ret.d] = ret;
		
		return ret;
	}
}

/// the default value to use for an argument if none is provided
string emptyDefault(in BaseType type)
{
	import std.string;
	import std.conv : text;
	
	switch(type.d)
	{
		case "String":
			return `gs!""`;
		case "Dictionary":
			return type.d~".make()";
		case "Array":
			return type.d~".make()";
		default: // all default-blittable types
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
string escapeDefault(in BaseType type, string arg)
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
			return "gs!\""~arg~"\"";
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
		"scope",
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

