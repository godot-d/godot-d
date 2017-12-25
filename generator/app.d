
import api.util;
import api.c;
import api.classes, api.methods, api.enums;

import language;
import language.d;

import asdf;

import std.stdio;
import std.file;
import std.path;
import std.format;
import std.getopt;
import std.range;

void usage(GetoptResult opt)
{
	defaultGetoptPrinter("Usage: [OPTION]... [outputDir]\n", opt.options);
	writeln();
}

void main(string[] args)
{
	string gdnativeJson = "gdnative_api.json";
	string classesJson = "api.json";
	auto opt = args.getopt(
		"gdnative|g", "GDNative API JSON (default: gdnative_api.json)", &gdnativeJson,
		"classes|c", "Classes API JSON (default: api.json)", &classesJson
	);
	
	writeln(args);
	if(opt.helpWanted)
	{
		usage(opt);
		return;
	}
	
	Language lang = getDLanguage();
	
	if(!gdnativeJson.exists)
	{
		usage(opt);
		throw new Exception("GDNative API file %s doesn't exist".format(gdnativeJson));
	}
	if(!classesJson.exists)
	{
		usage(opt);
		throw new Exception("Class API file %s doesn't exist".format(classesJson));
	}
	
	string outputDir;
	if(args.length >= 2) outputDir = args[1];
	else
	{
		outputDir = args[0].dirName.buildPath(".");
		writefln("Outputting to default directory %s",outputDir);
	}
	if(!outputDir.exists)
	{
		writefln("Output dir %s doesn't exist; creating it now", outputDir);
		outputDir.mkdirRecurse;
	}
	else if(!outputDir.isDir)
	{
		usage(opt);
		throw new Exception("%s is not a directory".format(outputDir));
	}
	
	API gdnativeAPI = gdnativeJson.readText.deserialize!(API);
	auto cPath = buildPath(outputDir, "classes", "godot", "c", "api.d");
	if(!cPath.dirName.exists) cPath.dirName.mkdirRecurse;
	std.file.write(cPath, gdnativeAPI.source);
	
	ClassList classList;
	classList.classes = classesJson.readText.deserialize!(GodotClass[]);
	foreach(c; classList.classes)
	{
		classList.dictionary[c.name] = c;
		c.parent = &classList;
	}
	foreach(c; classList.classes) if(c.base_class.length)
	{
		c.base_class_ptr = classList.dictionary.get(c.base_class, null);
		c.base_class_ptr.descendant_ptrs ~= c;
	}
	
	/+
	Break constness for methods overridden by non-const methods in descendents.
	This kind of overload is a compile-time error in D.
	
	Note that Godot doesn't have overloads differing in argument types.
	+/
	foreach(c; classList.classes)
	{
		foreach(mi, m; c.methods)
		{
			auto b = c.base_class_ptr;
			while(b)
			{
				foreach(bmi, bm; b.methods)
				{
					if(bm.name == m.name)
					{
						if(m.is_const != bm.is_const) bm.is_const = m.is_const = false;
					}
				}
				
				b = b.base_class_ptr;
			}
		}
	}
	
	/+
	TEMPORARY: change enum types back to int if the enums are missing.
	Once the API JSON accounts for all enum types, this can be removed.
	+/
	void checkEnumType(ref string type)
	{
		import std.algorithm.searching;
		if(type.isEnum)
		{
			auto split = type.splitEnumName;
			if(!split[0]) return; // not a class enum (Error, etc)
			auto cn = split[0].stripName;
			if(cn.isPrimitive || cn.isCoreType) return;
			GodotClass c = classList.dictionary[cn];
			assert(c);
			if(!c.enums.canFind!(e => e.name == split[1]))
			{
				//writeln("Could not find enum ", qualifyEnumName(type));
				type = "int";
			}
		}
	}
	foreach(c; classList.classes) foreach(m; c.methods)
	{
		checkEnumType(m.return_type);
		foreach(ref a; m.arguments) checkEnumType(a.type);
	}
	
	foreach(c; classList.classes)
	{
		// output files for the selected lang
		foreach(const cof; lang.classOutputFiles)
		{
			import std.string;
			
			string[2] arr = cof.generator(c);
			if(!arr[0].empty)
			{
				string p = buildPath(outputDir, arr[0]);
				
				string dir = dirName(p);
				if(!dir.exists) mkdirRecurse(dir);
				
				std.file.write( p, arr[1] );
			}
		}
	}
}
