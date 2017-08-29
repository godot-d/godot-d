module api.methods;

import api.classes, api.util;

import asdf;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;
import std.path;
import std.conv : text;
import std.string;





class GodotMethod
{
	string name;
	string return_type;
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
	
	bool same(in GodotMethod other) const
	{
		return name == other.name && is_const == other.is_const;
	}
	
	string templateArgsString() const
	{
		string ret = "";
		foreach(i, ref a; arguments)
		{
			if(a.type.isCoreType)
			{
				if(i != 0) ret ~= ", ";
				ret ~= text(a.type, "Arg", i);
			}
		}
		// template parens only if it actually is a template
		if(ret.length != 0) ret = text("(", ret, ")");
		return ret;
	}
	
	string argsString() const
	{
		string ret = "(";
		foreach(i, ref a; arguments)
		{
			if(i != 0) ret ~= ", ";
			if(a.type.isCoreType) ret ~= text(a.type, "Arg", i);
			else ret ~= a.type;
			
			ret ~= " " ~ a.name;
			if(a.has_default_value) ret ~= " = "; /// TODO
		}
		ret ~= ")";
		return ret;
	}
	
	string bindingStruct() const
	{
		string ret;
		string structName = "_GODOT_" ~ name.escapeD;
		
		ret ~= "\tpackage(godot) static GodotMethod!("~return_type.escapeType;
		foreach(ai, const a; arguments)
		{
			ret ~= ", " ~ a.type.escapeType;
		}
		if(has_varargs) ret ~= ", GodotVarArgs";
		ret ~= ") " ~ structName ~ ";\n";
		
		// for accessing it
		ret ~= "\tpackage(godot) alias _GODOT_methodBindInfo(string name : \""~name~"\") = "~structName~";\n";
		
		return ret;
	}
	
	string source() const
	{
		string ret;
		
		ret ~= "\t";
		ret ~= return_type.escapeType~" ";
		// none of the types (Classes/Core/Primitive) are pointers in D
		// Classes are reference types; the others are passed by value.
		ret ~= escapeD(name);
		if(has_varargs) ret ~= "(Args...)"; // D varargs template
		ret ~= "(";
		
		bool hasDefault = false;
		
		foreach(ai, const a; arguments)
		{
			ret ~= a.type.dCallParamPrefix~a.type.escapeType~" "~escapeD(a.name);
			
			if(a.has_default_value || hasDefault)
			{
				ret ~= " = "~ escapeDefault(a.type, a.default_value);
				hasDefault = true;
			}
			
			if(ai != arguments.length-1) ret ~= ", ";
		}
		
		if(has_varargs)
		{
			if(arguments.length > 0) ret ~= ", ";
			//ret ~= "in ref Array _GODOT_var_args = Array.empty_array";
			ret ~= "Args _GODOT_var_args"; // using D varargs template
		}
		
		ret ~= ")";
		if(is_const) ret ~= " const";
		else if(name == "callv" && parent.name == "Object") ret ~= " const"; /// HACK
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
				ret ~= "\t\tforeach(vai, VA; Args)\n\t\t{\n";
				// TODO: check that VA can convert to Variant
				ret ~= "\t\t\t_GODOT_args.append(_GODOT_var_args[vai]);\n";
				ret ~= "\t\t}\n";
			}
			
			ret ~= "\t\tString _GODOT_method_name = String(\""~name~"\");\n";
			
			ret ~= "\t\t";
			if(return_type != "void") ret ~= "return ";
			ret ~= "this.callv(_GODOT_method_name, _GODOT_args)";
			if(return_type != "void" && return_type != "Variant")
				ret ~= ".as!("~return_type.escapeType~")";
			ret ~= ";\n";
		} // end varargs/virtual impl
		else
		{
			ret ~= "\t\tstatic godot_method_bind* mb = null;\n";
			ret ~= "\t\tif(mb is null) ";
			ret ~= "mb = godot_method_bind_get_method(\"" ~ parent.internal_name ~ "\", \"" ~ name ~ "\");\n";
			
			if(return_type != "void")
			{
				ret ~= "\t\t" ~ return_type.escapeType ~ " _GODOT_ret = "~return_type.emptyDefault~";\n";
			}
			
			// create the arg array
			if(arguments.length)
			{
			    ret ~= "\t\tconst(void*)["~text(arguments.length)~"] _GODOT_args = [";
			    foreach(a; arguments) ret ~= "cast(void*)(" ~ a.type.ptrCallArgPrefix ~ a.name.escapeD ~ "), ";
			    ret ~= "];\n";
			}
			
			ret ~= "\t\tgodot_method_bind_ptrcall(mb, cast(godot_object)(this)";
			ret ~= (arguments.length)?", _GODOT_args.ptr":", null";
			if(return_type != "void") ret ~= (", cast(void*)&_GODOT_ret");
			ret ~= ");\n";
			if(return_type != "void")
			{
				/// TODO: this probably needs a cast to return_type
				ret ~= "\t\treturn _GODOT_ret;\n";
			}
		} // end normal method impl
		
		ret ~= "\t}\n";
		
		return ret;
	}
}

struct GodotArgument
{
	string name;
	string type;
	bool has_default_value;
	string default_value;
	
	@serializationIgnore:
	
	size_t index;
	GodotMethod parent;
}


