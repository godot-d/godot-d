import classfinder;

import godotutil.classes;

import std.process;
import std.stdio;
import std.string;
import std.conv : text;

import std.file;
import std.path : asRelativePath, buildPath;
import std.algorithm.searching : endsWith, countUntil;

int main(string[] args)
{
	writeln(args);

	ProjectInfo project;

	string packageDir = environment.get("DUB_PACKAGE_DIR");

	auto importPaths = environment.get("IMPORT_PATHS", null);
	foreach(importPath; importPaths.split())
	{
		foreach(DirEntry de; dirEntries(importPath, SpanMode.depth))
		{
			if(de.isFile && de.name.endsWith(".d"))
			{
				/// TODO: `parse` needs to relativize the path differently. The cwd is irrelevant to Godot.
				///       Maybe relative to DUB package or Godot project - how will it be used?
				string relativePath = de.name.asRelativePath(getcwd()).text;
				FileInfo file = parse(relativePath);
				writefln!"%s classes: %s"(file.moduleName, file.classes);
				project.files ~= file;
			}
		}
	}

	string viewsDir = packageDir.buildPath("views");
	if(!exists(viewsDir))
	{
		mkdirRecurse(viewsDir);
	}

	string viewsEnv = environment.get("STRING_IMPORT_PATHS");
	if(viewsEnv.split().countUntil(viewsDir) == -1)
	{
		writeln("ERROR: there was no 'views' directory. It has been created now, so this error should never occur again. However, DUB needs to be restarted to recognize the directory as a string import path.");
		return 2;
	}

	std.file.write(viewsDir.buildPath("classes.csv"), project.toCsv);


	return 0;
}

