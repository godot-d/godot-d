module language.d;

import godotapi;
import language;

import std.algorithm.iteration;
import std.range;
import std.path;

Language getDLanguage()
{
	Language ret;
	ret.classOutputFiles = [
		Language.ClassOutputFile(buildPath("godot","classes")
			~dirSeparator, true, "d", &generateD)
	];
	return ret;
}





private:


string generateD(in GodotClass c)
{
	switch(c.name)
	{
		case "GlobalConstants":
			return generateGlobalConstants(c);
		default:
			return generateClass(c);
	}
}


string generateClass(in GodotClass c)
{
	import std.conv : text;
	import std.string;
	
	string ret;
	
	// module names should be all lowercase in D
	// https://dlang.org/dstyle.html
	ret ~= "module godot.classes.";
	ret ~= c.name.toLower;
	ret ~= ";\n";
	ret ~= "import std.meta : AliasSeq, staticIndexOf;\n";
	ret ~= "import godot;\nimport godot.core;\nimport godot.c;\n";
	if(c.name != "Object") ret ~= "import godot.classes.object;\n";
	
	if(c.instanciable)
	{
		ret ~= "import godot.classes.classdb;\n";
	}
	
	foreach(const u; c.used_classes)
	{
		ret ~= "import godot.classes.";
		ret ~= u.toLower;
		ret ~= ";\n";
	}
	
	string nameAlias;
	if(c.singleton) nameAlias = "_GODOT_static_object_"~c.name;
	else nameAlias = "this";
	
	ret ~= "@GodotBaseClass struct "~c.name.escapeD;
	ret ~= "\n{\n";
	ret ~= "private:\n";
	if(c.singleton)
	{
		ret ~= "\tstatic GodotObject "~nameAlias~";\n";
		ret ~= "\tstatic void _GODOT_singleton_init()\n\t{\n";
		ret ~= "\t\tstatic immutable char* _GODOT_singleton_name = \""~c.name~"\";\n";
		ret ~= "\t\t"~nameAlias~" = cast(GodotObject)godot_global_get_singleton(cast(char*)_GODOT_singleton_name);\n";
		ret ~= "\t}\n";
	}
	ret ~= "public:\n";
	
	/// TODO: add @nogc/nothrow here?
	/// Should be a generator option, for those who want to use GC in subclasses
	
	// Pointer to Godot object, fake inheritance through alias this
	if(c.name != "Object")
	{
		ret ~= "\tunion { void* ptr; "~c.base_class.escapeType~" base; }\n\talias base this;\n";
		ret ~= "\talias BaseClasses = AliasSeq!(typeof(base), typeof(base).BaseClasses);\n";
	}
	else
	{
		ret ~= "\tvoid* ptr;\n";
		ret ~= "\talias BaseClasses = AliasSeq!();\n";
	}
	
	// simply return the void ptr
	ret ~= "\tvoid* opCast(T : void*)() const { return cast(void*)ptr; }\n";
	ret ~= "\t"~c.name.escapeType~" opAssign(T : typeof(null))(T n) { ptr = null; }\n";
	
	// downcast is handled by `alias this`.
	
	// upcast to derived Godot class:
	ret ~= "\tinout(T) opCast(T)() inout if(isGodotBaseClass!T && ";
	ret ~= "staticIndexOf!(typeof(this), T.BaseClasses) != -1)\n\t{\n";
	ret ~= "\t\tString c = String(T.stringof);\n";
	ret ~= "\t\tif(is_class(c)) return inout(T)(ptr);\n\t\treturn T.init;\n\t}\n";
	
	// upcast to derived D Native Script:
	ret ~= "\tinout(T) opCast(T)() inout if(extendsGodotBaseClass!T && ";
	ret ~= "staticIndexOf!(typeof(this), typeof(T.self).BaseClasses) != -1)\n\t{\n";
	ret ~= "\t\tString c = String(T.stringof);\n";
	ret ~= "\t\tif(is_class(c)) return cast(inout(T))godot_native_get_userdata(cast(godot_object)ptr);\n";
	ret ~= "\t\treturn T.init;\n\t}\n";
	
	// Godot constructor.
	ret ~= "\tstatic "~c.name.escapeType~" _new()\n\t{\n";
	ret ~= "\t\tgodot_class_constructor constructor = godot_get_class_constructor(\""~c.internal_name~"\");\n";
	ret ~= "\t\tif(constructor is null) return typeof(this).init;\n";
	ret ~= "\t\treturn cast("~c.name.escapeType~")(constructor());\n";
	ret ~= "\t}\n";
	
	if(c.name != "Object")
	{
		ret ~= "\tvoid _init()\n\t{\n";
		
		ret ~= "\t}\n";
	}
	
	foreach(const string name, const int value; c.constants)
	{
		ret ~= "\tenum int "~name.escapeD~" = "~text(value)~";\n";
	}
	
	foreach(const m; c.methods)
	{
		ret ~= "\t";
		if(c.singleton) ret ~= "static ";
		else // not static
		{
			/+
			const(GodotClass)* base = c.base_class_ptr;
			while(base)
			{
				import std.algorithm.searching;
				// test sameness (name AND constness match)
				// http://dlang.org/hijack.html
				if(  base.methods.canFind!"a.same(b)"(m)  )
				{
					ret ~= "override ";
					break;
				}
				base = base.base_class_ptr;
			}
			+/
		}
		ret ~= m.return_type.escapeType~" ";
		// none of the types (Classes/Core/Primitive) are pointers in D
		// Classes are reference types; the others are passed by value.
		ret ~= escapeD(m.name);
		if(m.has_varargs) ret ~= "(Args...)"; // D varargs template
		ret ~= "(";
		
		bool hasDefault = false;
		
		foreach(i, const a; m.arguments)
		{
			ret ~= a.type.dCallParamPrefix~a.type.escapeType~" "~escapeD(a.name);
			
			if(a.has_default_value || hasDefault)
			{
				ret ~= " = "~ escapeDefault(a.type, a.default_value);
				hasDefault = true;
			}
			
			if(i != m.arguments.length-1) ret ~= ", ";
		}
		
		if(m.has_varargs)
		{
			if(m.arguments.length > 0) ret ~= ", ";
			//ret ~= "in ref Array _GODOT_var_args = Array.empty_array";
			ret ~= "Args _GODOT_var_args"; // using D varargs template
		}
		
		ret ~= ")";
		if(m.is_const && !c.singleton) ret ~= " const";
		else if(m.name == "callv" && c.name == "Object") ret ~= " const"; /// HACK
		ret ~= "\n\t{\n";
		
		// singleton null check
		if(c.singleton)
		{
			ret ~= "\t\tif("~nameAlias~".ptr is null) _GODOT_singleton_init();\n";
		}
		
		// implementation
		if(m.is_virtual || m.has_varargs)
		{
			ret ~= "\t\tArray _GODOT_args = Array.empty_array;\n";
			foreach(const a; m.arguments)
			{
				ret ~= "\t\t_GODOT_args.append("~escapeD(a.name)~");\n";
			}
			
			if(m.has_varargs)
			{
				ret ~= "\t\tforeach(vai, VA; Args)\n\t\t{\n";
				// TODO: check that VA can convert to Variant
				ret ~= "\t\t\t_GODOT_args.append(_GODOT_var_args[vai]);\n";
				ret ~= "\t\t}\n";
			}
			
			ret ~= "\t\tString _GODOT_method_name = String(\""~m.name~"\");\n";
			
			ret ~= "\t\t";
			if(m.return_type != "void") ret ~= "return ";
			ret ~= nameAlias~".callv(_GODOT_method_name, _GODOT_args)";
			if(m.return_type != "void" && m.return_type != "Variant")
				ret ~= ".as!("~m.return_type.escapeType~")";
			ret ~= ";\n";
		} // end varargs/virtual impl
		else
		{
			ret ~= "\t\tstatic godot_method_bind* mb = null;\n";
			ret ~= "\t\tif(mb is null) ";
			ret ~= "mb = godot_method_bind_get_method(\"" ~ c.internal_name ~ "\", \"" ~ m.name ~ "\");\n";
			
			if(m.return_type != "void")
			{
				ret ~= "\t\t" ~ m.return_type.escapeType ~ " _GODOT_ret = "~m.return_type.emptyDefault~";\n";
			}
			
			// create the arg array
			if(m.arguments.length)
			{
			    ret ~= "\t\tconst(void*)["~text(m.arguments.length)~"] _GODOT_args = [";
			    foreach(a; m.arguments) ret ~= a.type.ptrCallArgPrefix ~ a.name.escapeD ~ ", ";
			    ret ~= "];\n";
			}
			
			ret ~= "\t\tgodot_method_bind_ptrcall(mb, cast(godot_object)(cast(void*)";
			ret ~= nameAlias;
			ret ~= ")";
			ret ~= (m.arguments.length)?", _GODOT_args.ptr":", null";
			if(m.return_type != "void") ret ~= (", cast(void*)&_GODOT_ret");
			ret ~= ");\n";
			if(m.return_type != "void")
			{
				/// TODO: this probably needs a cast to return_type
				ret ~= "\t\treturn _GODOT_ret;\n";
			}
		} // end normal method impl
		
		ret ~= "\t}\n";
	}
	
	
	
	
	
	
	ret ~= "}\n";
	return ret;
}

string generateGlobalConstants(in GodotClass c)
{
	import std.conv : text;
	import std.string;
	import std.meta;
	import std.algorithm.iteration, std.algorithm.searching, std.algorithm.sorting;
	import std.range : array;
	
	string ret;
	
	ret ~= "module godot.classes.globalconstants;\n";
	
	foreach(const string name, const int value; c.constants)
	{
		ret ~= "enum int "~name.escapeD~" = "~text(value)~";\n";
	}
	
	/// Try to put at least some of these in grouped enums
	static struct Group
	{
		string name; /// The name of the new enum
		string prefix; /// The prefix to strip from original name
	}
	
	alias groups = AliasSeq!(
		Group("Key", "KEY_"),
		Group("Button", "BUTTON_"),
		Group("PropertyHint", "PROPERTY_HINT_"),
		Group("PropertyUsage", "PROPERTY_USAGE_")
	);
	
	foreach(g; groups)
	{
		ret ~= "enum "~g.name~" : int\n{\n";
		
		foreach(const string name; c.constants.keys[].filter!(k => k.startsWith(g.prefix))
			.array.sort!((a,b) => c.constants[a] < c.constants[b]))
		{
			/// FIXME: should these be camelCase rather than snake_case?
			ret ~= "\t" ~ name[g.prefix.length..$].toLower.escapeD
				~ " = " ~ text(c.constants[name]) ~ ",\n";
		}
		
		ret ~= "}\n";
	}
	
	return ret;
}








/+
const(string) icallTypeName(in string type)
{
	return (type.isPrimitive || type.isCoreType)?(type):("Object");
}

const(string) icallTemplateName(in string type, in string[] args)
{
	string name = "godot._icalls.icall!("~type.stripName;
	foreach(a; args) name ~= ", "~a.stripName;
	name ~= ")";
	return name;
}
+/

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
	if(type.isPrimitive || type.isCoreType) return "cast(void*)&";
	return "cast(void*)"; // D classes = pointers already
}

/// the default value to use for an argument if none is provided
string emptyDefault(string type)
{
	import std.string;
	import std.conv : text;
	
	if(type.isPrimitive) return type~".init";
	
	switch(type)
	{
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
		case "RID":
			return "RID(GodotObject.init)";
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
			else return "Variant("~arg~")"; // "0"  TODO: parse from string?
		case "String":
			return "\""~arg~"\""; // FIXME: this doesn't work
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
	if(t == "Object") return "GodotObject";
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

 
