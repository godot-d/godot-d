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
		"core|c", "Generate core types that probably should be reimplemented instead", &outputCore
	);
	
	if(args.length < 2 || opt.helpWanted)
	{
		defaultGetoptPrinter("Usage: [OPTION]... path/to/api.json [outputDir]\n", opt.options);
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
	
	string jsonPath = args[1];
	if(!jsonPath.exists) return;
	auto jsonData = jsonPath.readText;
	
	string outputDir;
	if(args.length >= 3) outputDir = args[2];
	else
	{
		outputDir = args[0].dirName.buildPath("binding-output");
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
	foreach(ref c; classes) c.base_class_ptr = classDictionary.get(c.base_class, null);
	
	import std.algorithm.searching;
	auto ep = classDictionary["EditorPlugin"];
	auto gn = ep.methods[].find!(m => m.name == "get_name")()[0];
	writeln("%s: %s", gn.name, gn);
	
	foreach(ref c; classes)
	{
		// output files for the selected lang
		foreach(const cof; lang.classOutputFiles)
		{
			import std.string;
			
			auto fileName = (cof.lowercaseFilename)?(c.name.toLower):(c.name);
			string p = buildPath(outputDir, cof.prefix~fileName~'.'~cof.extension);
			
			string data = cof.generator(c);
			if(data) std.file.write( p, data );
		}
	}
}
