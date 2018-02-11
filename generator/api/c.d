module api.c;

import api.util;

import std.format;

import asdf;

struct Function
{
	string name;
	string return_type;
	string[2][] arguments; // type, name
	
	@serializationIgnore:
	
}

struct APIVersion
{
	int major, minor;
	
	@serializationIgnore:
	
	string str() { return format!"_%d_%d"(major, minor); }
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
		foreach(name, part; extensions) ret ~= "\tGDNATIVE_EXT_" ~ part.type ~ ",\n";
		ret ~= "}\n";

		ret ~= core.source("core");
		foreach(name, part; extensions)
		{
			APIPart p = part;
			while(p)
			{
				ret ~= p.source(name);
				p = p.next;
			}
		}

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

class APIPart
{
	string type;
	@serializationKeys("version") APIVersion ver;
	Function[] api;
	
	void finalizeDeserialization(Asdf asdf)
	{
		next = asdf["next"].get(APIPart.init);
	}
	
	@serializationIgnore:
	APIPart next;
	
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
		
		ret ~= "public extern(C) struct "~name.structName(ver)~"\n{\n";
		ret ~= "@nogc nothrow:\n";
		
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
		
		if(next)
		{
			ret ~= "const("~name.structName(next.ver)~"*) nextVersion() const { return cast(typeof(return))next; }\n";
			ret ~= "alias nextVersion this;\n";
		}
		
		ret ~= "}\n";
		
		if(ver == APIVersion(1, 0))
		{
			ret ~= "__gshared const("~name.structName(ver)~")* "~name.globalVarName~" = null;\n";

			ret ~= "private alias apiStruct(GDNATIVE_API_TYPES t : GDNATIVE_API_TYPES." ~ name.enumName(type) ~ ") = ";
			ret ~= name.globalVarName ~ ";\n";
		}
		
		ret ~= "\n";
		
		return ret;
	}
}

string enumName(string name, string type)
{
	return (name=="core")?("GDNATIVE_" ~ type):("GDNATIVE_EXT_" ~ type);
}
string structName(string name, APIVersion ver)
{
	return (name=="core")?"godot_gdnative_core_api_struct":
		("godot_gdnative_ext_"~name~"_api_struct"~ver.str);
}
string globalVarName(string name, APIVersion ver = APIVersion(-1,-1))
{
	string ret;
	if(name=="core") ret = "_godot_api";
	else ret = "_godot_"~name~"_api";
	if(ver.major != -1) ret ~= ver.str;
	return ret;
}

string escapeCType(string cType)
{
	import std.algorithm, std.string;
	
	cType = cType.chompPrefix("signed ");
	
	if(cType.canFind("godot_object") && cType.endsWith("*"))
		return cType[0..$-1];
	else return cType;
}

