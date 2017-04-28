module language.d;

import godotapi;
import language;

import std.algorithm.iteration;
import std.range;

Language getDLanguage()
{
	Language ret;
	ret.classOutputFiles = [Language.ClassOutputFile(null, true, "d", &generateD)];
	return ret;
}





private:

string generateD(in GodotClass c)
{
	import std.conv : text;
	import std.string;
	
	string ret;
	
	// module names should be all lowercase in D
	// https://dlang.org/dstyle.html
	ret ~= "module godot.classes.";
	ret ~= c.name.toLower;
	ret ~= ";\n";
	ret ~= "import godot.core;\nimport godot.c;\n";
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
	
	ret ~= "class "~c.name.escapeD;
	if(c.name != "Object") ret ~= " : "~c.base_class.escapeType;
	ret ~= "\n{\nprivate:\n";
	if(c.singleton)
	{
		ret ~= "\tstatic GodotObject "~nameAlias~";\n";
		ret ~= "\tstatic void _GODOT_singleton_init()\n\t\t{\n";
		ret ~= "\t\tstatic immutable char* _GODOT_singleton_name = \""~c.name~"\";\n";
		ret ~= "\t\t"~nameAlias~" = cast(GodotObject)godot_global_get_singleton(cast(char*)_GODOT_singleton_name);\n";
		ret ~= "\t}\n";
	}
	ret ~= "public:\n";
	
	/// TODO: add @nogc/nothrow here?
	/// Should be a generator option, for those who want to use GC in subclasses
	
	ret ~= "\tstatic "~c.name.escapeD~" _new()\n\t{\n";
	ret ~= "\t\tgodot_class_constructor constructor = godot_get_class_constructor(\""~c.internal_name~"\");\n";
	ret ~= "\t\tif(constructor is null) return null;\n";
	ret ~= "\t\treturn cast("~c.name.escapeD~")(constructor());\n";
	ret ~= "\t}\n";
	
	if(c.name != "Object")
	{
		ret ~= "\toverride void _init()\n\t{\n";
		
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
			ret ~= "\t\tif("~nameAlias~" is null) _GODOT_singleton_init();\n";
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
	import std.algorithm.searching;
	
	/// OK to copy these types
	static immutable string[] passByValue = [
		"Basis", "Color", "Plane", "Quat", "Rect2", "Rect3",
		"Transform", "Transform2D", "Vector2", "Vector3"
	];
	if(type.isCoreType)
	{
		if(!passByValue.canFind(type)) return "in ref ";
	}
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
		case "String":
		case "Image":
			return type~".empty";
		case "RID":
			return "RID(null)";
		case "Transform":
		case "Transform2D":
		case "Color":
		case "Vector2":
		case "Vector3":
		case "Rect2":
		case "Rect3":
		case "Plane":
		case "Basis":
		
		case "InputEvent":
		
			return type~".init"; // D's default initializer
		default: // all Object types
		{
			return "null";
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
		case "Image":
			return emptyDefault(type);
		case "Transform": // "1, 0, 0, 0, 1, 0, 0, 0, 1 - 0, 0, 0" TODO: parse this
		case "Transform2D":
		case "RID": // always empty?
		case "InputEvent":
			return type~".init"; // D's default initializer
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
			if(arg == "Null") return "null";
			if(arg == "[Object::null]") return "null";
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
	/// TODO: there must be a better way of doing this...
	/// maybe one of the D parser libraries has a list of keywords and basic types
	alias keywords = AliasSeq!(
		"class",
		"struct",
		"bool",
		"ubyte",
		"byte",
		"ushort",
		"short",
		"uint",
		"int",
		"ulong",
		"long",
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
		"with",
		"align",
		"in",
		"out",
		"ref",
		"auto",
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

 
