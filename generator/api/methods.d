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
	
	GodotClass parent;
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


