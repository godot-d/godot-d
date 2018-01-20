
import api.util;
import api.c;
import api.classes, api.methods, api.enums;

import language;
import language.d;

import asdf;

import std.stdio : writeln, writefln;
import std.file : exists, readText, mkdirRecurse, isDir, writeFile = write;
import std.path : buildPath, dirName;
import std.format : format, string;
import std.getopt : defaultGetoptPrinter, getopt, GetoptResult;
import std.range : empty;

void usage(GetoptResult opt)
{
	defaultGetoptPrinter("Usage: [OPTION]... [outputDir]\n", opt.options);
	writeln();
}

int main(string[] args)
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
		return 0;
	}
	
	Language lang = getDLanguage();
	
	if(!gdnativeJson.exists)
	{
		usage(opt);
		writefln("GDNative API file %s doesn't exist", gdnativeJson);
		return 1;
	}
	if(!classesJson.exists)
	{
		usage(opt);
		writefln("Class API file %s doesn't exist", classesJson);
		return 1;
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
		writefln("%s is not a directory", outputDir);
		return 1;
	}
	
	API gdnativeAPI = gdnativeJson.readText.deserialize!(API);
	auto cPath = buildPath(outputDir, "classes", "godot", "c", "api.d");
	if(!cPath.dirName.exists) cPath.dirName.mkdirRecurse;
	writeFile(cPath, gdnativeAPI.source);
	
	ClassList classList;
	classList.classes = classesJson.readText.deserialize!(GodotClass[]);
	foreach(c; classList.classes)
	{
		classList.dictionary[c.name] = c;
		c.parent = &classList;
	}
	foreach(c; classList.classes) if(c.base_class)
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
	
	foreach(c; classList.classes)
	{
		// output files for the selected lang
		foreach(const cof; lang.classOutputFiles)
		{
			
			string[2] arr = cof.generator(c);
			if(!arr[0].empty)
			{
				string p = buildPath(outputDir, arr[0]);
				
				string dir = dirName(p);
				if(!dir.exists) mkdirRecurse(dir);
				
				writeFile(p, arr[1]);
			}
		}
	}
	return 0;
}
