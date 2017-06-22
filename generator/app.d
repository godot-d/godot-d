import godotapi;
import language;
import language.d;

import asdf;

import std.stdio;
import std.file;
import std.path;
import std.format;
import std.getopt;

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
		outputDir = args[0].dirName.buildPath("src");
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
	
	GodotClass[] classes;
	classes = jsonData.deserialize!(GodotClass[]);
	GodotClass*[string] classDictionary;
	foreach(ref c; classes) classDictionary[c.name] = &c;
	foreach(ref c; classes) if(c.base_class.length)
	{
		c.base_class_ptr = classDictionary.get(c.base_class, null);
		c.base_class_ptr.descendant_ptrs ~= &c;
	}
	
	/+
	Break constness for methods overridden by non-const methods in descendents.
	This kind of overload is a compile-time error in D.
	
	Note that Godot doesn't have overloads differing in argument types.
	+/
	foreach(ref c; classes)
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
	
	foreach(ref c; classes)
	{
		// output files for the selected lang
		foreach(const cof; lang.classOutputFiles)
		{
			import std.string;
			
			auto fileName = (cof.lowercaseFilename)?(c.name.toLower):(c.name);
			string p = buildPath(outputDir, cof.prefix~fileName~'.'~cof.extension);
			
			string dir = dirName(p);
			if(!dir.exists) mkdirRecurse(dir);
			
			string data = cof.generator(c);
			if(data) std.file.write( p, data );
		}
	}
}
