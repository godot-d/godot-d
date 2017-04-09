module language.d;

import godotapi;
import language;

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
	ret ~= "module godot.";
	ret ~= c.name.toLower;
	ret ~= ";\n";
	ret ~= "import godot.core;\nimport godot.c;\nimport godot._icalls;\n";
	
	if(c.instanciable)
	{
		ret ~= "import godot.classdb;\n";	
	}	
	
	foreach(const u; c.used_classes)
	{
		ret ~= "import godot.";
		ret ~= u.toLower;
		ret ~= ";\n";
	}
	
	string nameAlias;
	if(c.singleton) nameAlias = "GODOT_static_object_"~c.name;
	else nameAlias = "this";
	
	ret ~= "class "~c.name;
	if(c.base_class.length) ret ~= " : "~c.base_class;
	ret ~= "\n{\nprivate:\n";
	if(c.singleton)
	{
		ret ~= "\tstatic void GODOT_singleton_init()\n{\n";
		ret ~= "\t\t"~nameAlias~" = godot_global_get_singleton(\""~c.name~"\");\n";
		ret ~= "\t}\n";
	}
	ret ~= "public:\n";
	
	/// TODO: add @nogc/nothrow here?
	/// Should be a generator option, for those who want to use GC in subclasses
	
	if(c.base_class.length)
	{
		ret ~= "\tvoid _init()\n\t{\n";
		
		ret ~= "\t}\n";
	}
	
	foreach(const string name, const int value; c.constants)
	{
		ret ~= "\tenum int "~name~" = "~text(value)~";\n";
	}
	
	foreach(const m; c.methods)
	{
		ret ~= "\t";
		if(c.singleton) ret ~= "static ";
		ret ~= m.return_type~" ";
		// none of the types (Classes/Core/Primitive) are pointers in D
		// Classes are reference types; the others are passed by value.
		ret ~= escapeD(m.name)~"(";
		
		bool hasDefault = false;
		
		foreach(i, const a; m.arguments)
		{
			ret ~= "in "~a.type~" "~escapeD(a.name);
			
			if(a.default_value.length || hasDefault)
			{
				ret ~= " = "~ escapeDefault(a.type, a.default_value);
				hasDefault = true;
			}
			
			if(i != m.arguments.length-1) ret ~= ", ";
		}
		
		if(m.has_varargs)
		{
			if(m.arguments.length > 0) ret ~= ", ";
			ret ~= "in Array GODOT_var_args = Array.init";
		}
		
		ret ~= ")";
		if(m.is_const && !c.singleton) ret ~= " const";
		ret ~= "\n\t{\n";
		
		// singleton null check
		if(c.singleton)
		{
			ret ~= "\t\tif("~nameAlias~" is null) GODOT_singleton_init();\n";
		}
		
		// implementation
		if(m.is_virtual || m.has_varargs)
		{
			ret ~= "\t\tArray GODOT_args;\n";
			foreach(a; m.args)
			{
				ret ~= "\t\tGODOT_args.append("~escapeD(a.name)~");\n";
			}
			
			if(m.has_varargs)
			{
				ret ~= "\t\tforeach(vai; 0..GODOT_var_args.size())";
				ret ~= "GODOT_args.append(GODOT_var_args[vai]);\n";
				
				ret ~= "\t\t";
				if(m.return_type != "void")
				{
					ret ~= "return ";
				}
				ret ~= nameAlias~".callv(\""~m.name~"\", GODOT_args);\n";
			} // end varargs/virtual impl
			else
			{
				
			} // end normal method impl
		}
		
		ret ~= "\t}\n";
	}
	
	
	
	
	
	
	ret ~= "}\n";
	return ret;
}



string escapeDefault(string type, string arg)
{
	import std.string;
	import std.conv : text;
	switch(type)
	{
		case "Color":
			return "Color("~arg~")"; // value type, so Color() works
		case "int":
		case "bool":
			return arg.toLower; // true, false
		case "Array":
		case "PoolVector2Array":
		case "PoolVector3Array":
		case "PoolStringArray":
		case "PoolColorArray":
		case "Transform":
		case "Transform2D":
		case "RID":
			return type~".init"; // D's default initializer
		case "Vector2":
		case "Vector3":
		case "Rect2":
			return type~arg;
		case "Variant":
			if(arg == "Null") return "Variant.init";
			else return arg;
		case "String":
			return "\""~arg~"\""; // put arg (or nothing) in quotes
		default:
		{
			if(arg == "Null") return "null";
			if(arg == "[Object::null]") return "null";
			return arg;
		}
	}
}

string escapeD(string s)
{
	import std.meta;
	/// TODO: there must be a better way of doing this...
	/// maybe one of the D parser libraries has a list of keywords and basic types
	alias keywords = AliasSeq!(
		"class",
		"struct",
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
		"default",
		"case",
		"switch",
		"export",
		"import",
		"template",
		"new",
	);
	switch(s)
	{
		foreach(kw; keywords)
		{
			case kw:
		}
			return "_"~s;
		default:
			return s;
	}
}

 
