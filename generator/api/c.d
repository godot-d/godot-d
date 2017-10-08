module api.c;

import api.util;

import asdf;

struct Function
{
	string name;
	string return_type;
	string[2][] arguments; // type, name
	
	@serializationIgnore:
	
}

struct API
{
	@serializationKeys("version") // version is a keyword
	string ver;
	Function[] api;
	
	@serializationIgnore:
	
	string source()
	{
		string ret = "module godot.c.api;\n\n";
		ret ~= "import godot.c.gdnative, godot.c.nativescript;\n\n";
		
		ret ~= "import core.stdc.stdint;\nimport core.stdc.stddef : wchar_t;\n\n";
		
		ret ~= "private extern(C) @nogc nothrow\n{\n";
		foreach(const ref f; api)
		{
			ret ~= "\talias da_" ~ f.name ~ " = " ~ f.return_type.escapeCType ~ " function(";
			foreach(ai, const ref a; f.arguments)
			{
				if(ai != 0) ret ~= ", ";
				ret ~= a[0].escapeCType ~ " " ~ a[1].escapeD;
			}
			ret ~= ");\n";
		}
		ret ~= "}\n";
		
		ret ~= "public struct godot_gdnative_api_struct\n{\n";
		
		ret ~= "\tvoid* next;\n\tconst(char)* ver;\n\n";
		
		foreach(const ref f; api)
		{
			ret ~= "\tda_" ~ f.name ~ " " ~ f.name.escapeD ~ ";\n";
		}
		
		ret ~= "}\n";
		
		ret ~= "__gshared const(godot_gdnative_api_struct)* _godot_api;\n";
		
		ret ~= "\n";
		
		return ret;
	}
}

string escapeCType(string cType)
{
	import std.algorithm, std.string;
	if(cType.canFind("godot_object") && cType.endsWith("*"))
		return cType[0..$-1];
	else return cType;
}

