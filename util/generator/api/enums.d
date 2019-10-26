module api.enums;

import godotutil.string;
import api.classes, api.util;

import asdf;

import std.range;
import std.algorithm.searching, std.algorithm.iteration, std.algorithm.sorting;
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
	return Type.get(split[0]).d~"."~split[1].escapeD;
}

struct GodotEnum
{
	string name;
	int[string] values;
	
	@serializationIgnore:
	GodotClass parent;
	
	string[string] ddoc;
	
	string source() const
	{
		string ret = "\t/// \n\tenum "~name.escapeD~" : int\n\t{\n";
		
		foreach(n; values.keys.sort!((a, b)=>(values[a] < values[b])))
		{
			if(auto ptr = n in ddoc) ret ~= "\t\t/**\n\t\t" ~ (*ptr).replace("\n", "\n\t\t") ~ "\n\t\t*/\n";
			else ret ~= "\t\t/** */\n";
			ret ~= "\t\t"~n.snakeToCamel.escapeD~" = "~values[n].text~",\n";
		}
		
		ret ~= "\t}\n";
		return ret;
	}
}


