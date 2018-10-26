module api.methods;

import godot.d.string;
import api.classes, api.enums, api.util;

import asdf;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;
import std.path;
import std.conv : text;
import std.string;





class GodotMethod
{
	string name;
	Type return_type;
	bool is_editor;
	bool is_noscript;
	bool is_const;
	bool is_virtual;
	bool has_varargs;
	bool is_from_script;
	GodotArgument[] arguments;
	
	void finalizeDeserialization(Asdf data)
	{
		foreach(i, ref a; arguments)
		{
			a.index = i;
			a.parent = this;
		}
	}
	
	@serializationIgnore:
	GodotClass parent;
	
	string ddoc;
	
	bool same(in GodotMethod other) const
	{
		return name == other.name && is_const == other.is_const;
	}
	
	string templateArgsString() const
	{
		string ret = "";
		bool first = true; // track first arg to skip comma
		foreach(i, ref a; arguments)
		{
			if(a.type.acceptImplicit)
			{
				if(first) first = false;
				else ret ~= ", ";
				ret ~= text(a.type.godot, "Arg", i);
			}
		}
		if(has_varargs)
		{
			if(!first) ret ~= ", ";
			ret ~= "VarArgs...";
		}
		// template parens only if it actually is a template
		if(ret.length != 0) ret = text("(", ret, ")");
		return ret;
	}
	
	string argsString() const
	{
		string ret = "(";
		bool hasDefault = false;
		foreach(i, ref a; arguments)
		{
			if(i != 0) ret ~= ", ";
			if(a.type.acceptImplicit) ret ~= text(a.type.dCallParamPrefix,
				a.type.godot, "Arg", i);
			else ret ~= text(a.type.dCallParamPrefix, a.type.d);
			
			ret ~= " " ~ a.name.escapeD;
			if(a.has_default_value || hasDefault)
			{
				ret ~= " = " ~ escapeDefault(a.type, a.default_value);
			}
		}
		if(has_varargs)
		{
			if(arguments.length != 0) ret ~= ", ";
			ret ~= "VarArgs varArgs";
		}
		ret ~= ")";
		return ret;
	}
	
	string binding() const
	{
		string ret;
		
		ret ~= "\t\t@GodotName(\""~name~"\") GodotMethod!("~return_type.d;
		foreach(ai, const a; arguments)
		{
			ret ~= ", " ~ a.type.d;
		}
		if(has_varargs) ret ~= ", GodotVarArgs";
		ret ~= ") " ~ name.snakeToCamel.escapeD ~ ";\n";
		
		return ret;
	}
	
	string source() const
	{
		string ret;
		
		ret ~= "\t/**\n\t"~ddoc.replace("\n", "\n\t")~"\n\t*/\n";
		ret ~= "\t";
		ret ~= return_type.dRef~" ";
		// none of the types (Classes/Core/Primitive) are pointers in D
		// Classes are reference types; the others are passed by value.
		ret ~= name.snakeToCamel.escapeD;
		
		ret ~= templateArgsString;
		ret ~= argsString;
		
		if(is_const) ret ~= " const";
		else if(name == "callv" && parent.name.godot == "Object") ret ~= " const"; /// HACK
		ret ~= "\n\t{\n";
		
		// implementation
		if(is_virtual || has_varargs)
		{
			ret ~= "\t\tArray _GODOT_args = Array.empty_array;\n";
			foreach(const a; arguments)
			{
				ret ~= "\t\t_GODOT_args.append("~escapeD(a.name)~");\n";
			}
			
			if(has_varargs)
			{
				ret ~= "\t\tforeach(vai, VA; VarArgs)\n\t\t{\n";
				// TODO: check that VA can convert to Variant
				ret ~= "\t\t\t_GODOT_args.append(varArgs[vai]);\n";
				ret ~= "\t\t}\n";
			}
			
			ret ~= "\t\tString _GODOT_method_name = String(\""~name~"\");\n";
			
			ret ~= "\t\t";
			if(return_type.d != "void") ret ~= "return ";
			ret ~= "this.callv(_GODOT_method_name, _GODOT_args)";
			if(return_type.d != "void" && return_type.d != "Variant")
				ret ~= ".as!(RefOrT!"~return_type.d~")";
			ret ~= ";\n";
		} // end varargs/virtual impl
		else
		{
			ret ~= "\t\tcheckClassBinding!(typeof(this))();\n";
			/// ".bind(\"" parent.name.godot ~ "\", \"" ~ name ~ "\");\n";
			ret ~= "\t\t";
			if(return_type.d != "void") ret ~= "return ";
			ret ~= "ptrcall!(" ~ return_type.d ~ ")(_classBinding."
				~ name.snakeToCamel.escapeD ~ ", _godot_object";
			foreach(ai, const a; arguments)
			{
				ret ~= ", "~a.name.escapeD;
			}
			ret ~= ");\n";
		} // end normal method impl
		
		ret ~= "\t}\n";
		
		return ret;
	}
}

struct GodotArgument
{
	string name;
	Type type;
	bool has_default_value;
	string default_value;
	
	@serializationIgnore:
	
	size_t index;
	GodotMethod parent;
}

class GodotProperty
{
	string name;
	Type type;
	string getter, setter;
	int index;
	
	@serializationIgnore:
	
	string ddoc;
	
	string getterSource(in GodotMethod m) const
	{
		string ret;
		ret ~= "\t/**\n\t" ~ ddoc.replace("\n", "\n\t") ~ "\n\t*/\n";
		ret ~= "\t@property " ~ m.return_type.d ~ " " ~ name.replace("/","_").snakeToCamel.escapeD ~ "()\n\t{\n"; /// TODO: const?
		ret ~= "\t\treturn " ~ getter.snakeToCamel.escapeD ~ "(";
		if(index != -1) ret ~= text(index);
		ret ~= ");\n";
		ret ~= "\t}\n";
		return ret;
	}
	string setterSource(in GodotMethod m) const
	{
		string ret;
		ret ~= "\t/// ditto\n";
		ret ~= "\t@property void " ~ name.replace("/","_").snakeToCamel.escapeD ~ "(" ~ m.arguments[$-1].type.d ~ " v)\n\t{\n";
		ret ~= "\t\t" ~ setter.snakeToCamel.escapeD ~ "(";
		if(index != -1) ret ~= text(index) ~ ", ";
		ret ~= "v);\n";
		ret ~= "\t}\n";
		return ret;
	}
}


