
import api.util;
import api.classes, api.methods;

import language;
import language.d;

import asdf;

import std.stdio;
import std.file;
import std.path;
import std.format;
import std.getopt;
import std.range;

void main(string[] args)
{
	string outputLang = "D";
	bool outputCore = false;
	auto opt = args.getopt(
		"language|l", "The language to generate bindings for", &outputLang,
	);
	
	writeln(args);
	if(opt.helpWanted)
	{
		defaultGetoptPrinter("Usage: [OPTION]... [path/to/api.json] [outputDir]\n", opt.options);
		return;
	}
	
	
	Language lang;
	switch(outputLang)
	{
		case "D":
		case "d":
			lang = getDLanguage();
			break;
		default:
			throw new Exception("Language %s is not supported.".format(outputLang));	
	}
	
	string jsonPath;
	if(args.length >= 2) jsonPath = args[1];
	else
	{
		jsonPath = "api.json";
		writefln("Using default api.json from working directory");
	}
	if(!jsonPath.exists)
	{
		throw new Exception("API file %s doesn't exist".format(jsonPath));
	}
	auto jsonData = jsonPath.readText;
	
	string outputDir;
	if(args.length >= 3) outputDir = args[2];
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
		throw new Exception("%s is not a directory".format(outputDir));
	}
	
	ClassList classList;
	classList.classes = jsonData.deserialize!(GodotClass[]);
	foreach(ref c; classList.classes)
	{
		classList.dictionary[c.name] = c;
		c.parent = &classList;
	}
	foreach(ref c; classList.classes) if(c.base_class.length)
	{
		c.base_class_ptr = classList.dictionary.get(c.base_class, null);
		c.base_class_ptr.descendant_ptrs ~= c;
	}
	
	/+
	Break constness for methods overridden by non-const methods in descendents.
	This kind of overload is a compile-time error in D.
	
	Note that Godot doesn't have overloads differing in argument types.
	+/
	foreach(ref c; classList.classes)
	{
		foreach(mi, ref m; c.methods)
		{
			auto b = c.base_class_ptr;
			while(b)
			{
				foreach(bmi, ref bm; b.methods)
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
	
	foreach(ref c; classList.classes)
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
