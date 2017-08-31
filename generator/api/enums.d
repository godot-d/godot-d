module api.enums;

import api.classes, api.util;

import asdf;

import std.range;
import std.algorithm.searching, std.algorithm.iteration;
import std.path;
import std.conv : text;
import std.string;

string enumParent(string name)
{
	return name.splitEnumName[0];
}

/// splits the name of an enum as obtained from the JSON into [class, enum] names.
string[2] splitEnumName(string type)
{
	string name = type[5..$];
	auto end = name.countUntil("::");
	if(end == -1) return [null, name]; // not a class
	return [name[0..end], name[end+2..$]];
}

/// format the enum type for D.
string qualifyEnumName(string type)
{
	string[2] split = type.splitEnumName;
	if(!split[0]) return split[1].escapeD;
	return split[0].stripName.escapeType~"."~split[1].escapeD;
}

struct GodotEnum
{
	string name;
	int[string] values;
	
	@serializationIgnore:
	GodotClass parent;
	
	string source() const
	{
		string ret = "\tenum "~name~" : int\n\t{\n";
		
		foreach(n, v; values)
		{
			ret ~= "\t\t"~n.escapeD~" = "~v.text~",\n";
		}
		
		ret ~= "\t}\n";
		return ret;
	}
}


