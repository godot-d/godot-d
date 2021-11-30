
import api.util;
import api.c;
import api.classes, api.methods, api.enums;
import api;
import api.doc;
//import generator.templates;

import asdf;

import std.string : toLower, chompPrefix;
import std.stdio : writeln, writefln;
import std.file : exists, readText, mkdirRecurse, isDir, writeFile = write, dirEntries, SpanMode, rmdirRecurse;
import std.path : buildPath, dirName, extension, stripExtension, baseName;
import std.format : format;
import std.getopt : defaultGetoptPrinter, getopt, GetoptResult;
import std.range : empty;

import sumtype;

void usage(GetoptResult opt)
{
	defaultGetoptPrinter("Usage: [OPTION]... [outputDir]\n", opt.options);
	writeln();
}

int main(string[] args)
{
	string json = "extension_api.json";
	string templatesPath = "templates";
	string godotSource;
	bool overwrite = false;
	auto opt = args.getopt(
		"json|j", "Extension API JSON (default: extension_api.json)", &json,
		"templates|t", "D class template directory (default: templates)", &templatesPath,
		"source|s", "Godot source directory, for documentation (also sets gdnative if unset)", &godotSource,
		"overwrite|o", "Overwrite outputDir unconditionally", &overwrite
	);
	
	writeln(args);
	if(opt.helpWanted)
	{
		usage(opt);
		return 0;
	}
	
	version(none) if(gdnativeJson.empty)
	{
		if(godotSource) gdnativeJson = buildPath(godotSource, "modules", "gdnative", "gdnative_api.json");
		else gdnativeJson = "gdnative_api.json";
	}
	if(!json.exists)
	{
		usage(opt);
		writefln("Error: Extension API file '%s' doesn't exist", json);
		return 1;
	}

	version(none) if(!templatesPath.exists || !templatesPath.isDir)
	{
		usage(opt);
		writefln("Error: Template directory '%s' doesn't exist", templatesPath);
		return 1;
	}
	/// TODO: use a different one, variant probably won't actually be here
	version(none) if(!templatesPath.buildPath("variant.d").exists)
	{
		usage(opt);
		writefln("Error: Template directory '%s' is empty or missing required core type templates", templatesPath);
		return 1;
	}

	string outputDir;
	if(args.length >= 2) outputDir = args[1];
	else
	{
		outputDir = args[0].dirName.buildPath("classes");
		writefln("Outputting to default directory %s...",outputDir);
	}
	version(none) if(outputDir.exists)
	{
		if(!outputDir.isDir)
		{
			usage(opt);
			writefln("Error: '%s' is not a directory", outputDir);
			return 1;
		}

		bool shouldOverwrite = overwrite;
		// check if it looks like the API directory
		if(outputDir.buildPath("godot", "c", "api.d").exists) shouldOverwrite = true;
		if(!shouldOverwrite)
		{
			usage(opt);
			writefln("Error: output directory '%s' already exists. Pass '-o' to overwrite it.", outputDir);
			return 1;
		}
		writefln("Overwriting existing output directory '%s'...", outputDir);
		rmdirRecurse(outputDir);
	}
	outputDir.mkdirRecurse;

	// test of new API generator
	Api api = json.readText.deserialize!(Api);
	foreach(BuiltinClass c; api.builtin_classes) c.name.base.typeApi = c;
	foreach(Class c; api.classes) c.name.base.typeApi = c;
	foreach(Class c; api.classes)
	{
		if(c.inherits.base !is null)
		{
			static Class as(T, V)(V v)
			{
				return v.match!((T t) => t, (_){assert(0); return null;});
			}
			Class baseClass = as!Class(c.inherits.base.typeApi);
			c.base = baseClass;
			baseClass.derived ~= c;
		}
		foreach(Enum e; c.enums)
		{
			e.type = BaseType.get("enum::"~c.name.base.godot~"."~e.name);
			e.type.typeApi = e;
			e.type.parent = c.name.base;
		}
	}
	writefln!("Builtins/Classes: %d/%d")(api.builtin_classes.length, api.classes.length);
	BaseType.printApiTypeCounts();

	//Templates templates;
	//templates.load(templatesPath);

	// generate classes
	foreach(const BuiltinClass c; api.builtin_classes)
	{
		//
	}













	
	version(none)
	{
	Api gdnativeApi = gdnativeJson.readText.deserialize!(Api);
	auto cPath = buildPath(outputDir, "godot", "c", "api.d");
	if(!cPath.dirName.exists) cPath.dirName.mkdirRecurse;
	writeFile(cPath, gdnativeApi.source);
	
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
		foreach(b; GodotClass.BaseRange(c.base_class_ptr))
		{
			import std.algorithm.searching : canFind;
			if(b.name.godot == "Object") break; // don't include godot.object
			if(!c.used_classes.canFind(b.name)) c.used_classes ~= b.name;
		}
		c.base_class_ptr.descendant_ptrs ~= c;
	}
	
	foreach(e; Type.enums)
	{
		import std.algorithm.searching : canFind;
		auto c = e.enumParent ? e.enumParent.objectClass : null;
		if(c && !c.enums.canFind!(ge => c.name.d~"."~ge.name == e.d))
		{
			c.missingEnums ~= e;
		}
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
	
	// add documentation XMLs
	if(!godotSource.empty && godotSource.exists)
	{
		string[] paths = [buildPath(godotSource, "doc", "classes")];
		if(buildPath(godotSource, "modules").exists)
		{
			foreach(de; dirEntries(buildPath(godotSource, "modules"), SpanMode.shallow))
			{
				auto p = buildPath(de.name, "doc_classes");
				if(p.exists) paths ~= p;
			}
		}
		foreach(p; paths) foreach(de; dirEntries(p, SpanMode.shallow)) if(de.isFile && de.extension.toLower == ".xml")
		{
			if(Type* t = de.name.baseName.stripExtension.escapeType in Type.typesByDName) if(t.objectClass)
			{
				parseClassDoc(t.objectClass, de.name.readText);
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
	} // version(none) old API gen
	writefln("Done! API bindings written to '%s'", outputDir);
	return 0;
}
