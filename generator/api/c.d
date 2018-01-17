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
	APIPart core;
	APIPart[string] extensions;
	
	@serializationIgnore:

	string source()
	{
		string ret = "module godot.c.api;\n\n";
		ret ~= "import godot.c.core;\n\n";
		foreach(k, v; extensions) ret ~= "import godot.c." ~ k ~ ";\n";
		
		ret ~= "import core.stdc.stdint;\nimport core.stdc.stddef : wchar_t;\n\n";

		ret ~= q{
			extern(C) struct godot_gdnative_api_version
			{
				uint major, minor;
			}
			mixin template ApiStructHeader()
			{
				uint type;
				godot_gdnative_api_version ver;
				const godot_gdnative_api_struct *next;
			}
			extern(C) struct godot_gdnative_api_struct
			{
				mixin ApiStructHeader;
			}
		};

		ret ~= "enum GDNATIVE_API_TYPES : uint {\n";
		ret ~= "\tGDNATIVE_" ~ core.type ~ ",\n";
		foreach(k, v; extensions) ret ~= "\tGDNATIVE_EXT_" ~ v.type ~ ",\n";
		ret ~= "}\n";

		ret ~= core.source("core");
		foreach(k, v; extensions) ret ~= v.source(k);

		ret ~= q{
			@nogc nothrow
			void godot_gdnative_api_struct_init(in godot_gdnative_core_api_struct* s)
			{
				import std.traits : EnumMembers;
				if(!s) assert(0, "godot_gdnative_core_api_struct is null");
				if(_godot_api) return; // already initialized
				_godot_api = s;
				foreach(ext; s.extensions[0..s.num_extensions])
				{
					// check the actual extension type at runtime, instead of relying on the order in the JSON
					if(ext.type == 0) continue; // core? should never happen
					if(ext.type >= EnumMembers!GDNATIVE_API_TYPES.length)
					{
						continue; // unknown extension type
					}
					ApiTypeSwitch: final switch(cast(GDNATIVE_API_TYPES)ext.type)
					{
						foreach(E; EnumMembers!GDNATIVE_API_TYPES)
						{
							case E:
								apiStruct!E = cast(typeof(apiStruct!E))(cast(void*)ext);
								break ApiTypeSwitch;
						}
					}
				}
			}
		};
		return ret;
	}
}

struct APIPart
{
	string type;
	Function[] api;
	
	@serializationIgnore:
	
	string source(string name)
	{
		bool core = name == "core";
		
		string ret;
		
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
		
		ret ~= "public extern(C) struct "~name.structName~"\n{\n";
		
		if(core) ret ~= q{
			mixin ApiStructHeader;
			uint num_extensions;
			const godot_gdnative_api_struct **extensions;
		};
		else ret ~= q{
			mixin ApiStructHeader;
		};
		
		foreach(const ref f; api)
		{
			ret ~= "\tda_" ~ f.name ~ " " ~ f.name.escapeD ~ ";\n";
		}
		
		ret ~= "}\n";
		
		ret ~= "__gshared const("~name.structName~")* "~name.globalVarName~" = null;\n";

		ret ~= "private alias apiStruct(GDNATIVE_API_TYPES t : GDNATIVE_API_TYPES." ~ name.enumName(type) ~ ") = ";
		ret ~= name.globalVarName ~ ";\n";
		
		ret ~= "\n";
		
		return ret;
	}
}

string enumName(string name, string type)
{
	return (name=="core")?("GDNATIVE_" ~ type):("GDNATIVE_EXT_" ~ type);
}
string structName(string name)
{
	return (name=="core")?"godot_gdnative_core_api_struct":("godot_gdnative_ext_"~name~"_api_struct");
}
string globalVarName(string name)
{
	return (name=="core")?"_godot_api":("_godot_"~name~"_api");
}

string escapeCType(string cType)
{
	import std.algorithm, std.string;
	
	cType = cType.chompPrefix("signed ");
	
	if(cType.canFind("godot_object") && cType.endsWith("*"))
		return cType[0..$-1];
	else return cType;
}

