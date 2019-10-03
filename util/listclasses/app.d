import classfinder;

import std.process;
import std.stdio;
import std.string;
import std.conv : text;

import std.file;
import std.path : asRelativePath;
import std.algorithm.searching : endsWith;

void main()
{
	auto importPaths = environment.get("IMPORT_PATHS", null);
	foreach(importPath; importPaths.split())
	{
		foreach(DirEntry de; dirEntries(importPath, SpanMode.depth))
		{
			if(de.isFile && de.name.endsWith(".d"))
			{
				ClassesInFile classes = parse(de.name.asRelativePath(getcwd()).text);
				// for now, just print them to see if everything works.
				writefln!"%s classes: %s"(classes.moduleName, classes.classes);
				// TODO: add them to a list, write the list to a parseable file in `views`
			}
		}
	}
}

