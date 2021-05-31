import classfinder;

import godotutil.classes;

import std.process;
import std.stdio;
import std.string;
import std.conv : text;
import std.getopt;
import std.file;
import std.path : asRelativePath, buildPath, dirName, isRooted;
import std.range;
import std.algorithm.searching : find, endsWith, countUntil, canFind;
import std.algorithm.sorting : sort;
import std.array : replace;

enum MakeEntryPoint
{
	no,
	yes,
	detect
}

enum classesFilename = "classes.csv";
enum entryPointFilename = "entrypoint.d";

enum entryPointRoot = "/// Godot-D entry point";
static immutable string entryPointSource = q{$ENTRYPOINTROOT
/// This file was automatically generated by godot-d:pregenerate.
import godot.d.register;

mixin GodotNativeLibrary!("$PREFIX");

}.replace("$ENTRYPOINTROOT", entryPointRoot);

/// Sanitize a space-separated list of absolute paths.
/// DUB's IMPORT_PATHS and STRING_IMPORT_PATHS seem to always be absolute paths.
string[] sanitized(const string paths)
{
	if(paths.empty) return null;

	auto parts = paths.split(' ');
	if(!parts.front.isRooted) assert(0, "Paths passed to sanitized() are not absolute paths!");

	string[] ret;
	foreach(part; parts)
	{
		if(part.isRooted) ret ~= part;
		else ret[$-1] = ret[$-1] ~ " " ~ part;
	}
	return ret;
}

int main(string[] args)
{
	MakeEntryPoint makeEntryPoint = MakeEntryPoint.detect;
	string prefix = environment.get("DUB_PACKAGE")
		.replace('-', '_')
		.replace(':', '_');
	auto opt = args.getopt(
			"makeEntryPoint", "Create GodotNativeLibrary entry point (if it doesn't already exist)", &makeEntryPoint,
			"prefix|p", "GDNativeLibrary symbolPrefix", &prefix
	);

	bool firstTimeSetup = false;
	void setupStart()
	{
		if(firstTimeSetup) return;
		writeln("**********************************");
		writeln("* Performing first-time setup... *");
		writeln("**********************************");
		firstTimeSetup = true;
	}

	ProjectInfo project;

	string packageDir = environment.get("DUB_PACKAGE_DIR");
	auto importPaths = environment.get("IMPORT_PATHS", null).sanitized;
	if(importPaths.empty)
	{
		if(exists("source")) importPaths ~= "source";
		else importPaths ~= "src";
	}

	/* ************************************************************************
	Parse all D files to find the classes and potentially the entry point.
	************************************************************************ */
	string[] sourceFiles = environment.get("SOURCE_FILES", null).sanitized;
	foreach(importPath; importPaths)
	{
		if(exists(importPath) && isDir(importPath))
		{
			foreach(DirEntry de; dirEntries(importPath, SpanMode.depth))
			{
				if(de.isFile && de.name.endsWith(".d"))
				{
					if(!sourceFiles.canFind(de.name)) sourceFiles ~= de.name;
				}
			}
		}
	}
	foreach(sourceFile; sourceFiles)
	{
		/// TODO: `parse` needs to relativize the path differently. The cwd is irrelevant to Godot.
		///       Maybe relative to DUB package or Godot project - how will it be used?
		string relativePath = sourceFile.asRelativePath(getcwd()).text;
		FileInfo file = parse(relativePath);
		writefln!"%s classes: %s"(file.moduleName, file.classes);
		project.files ~= file;
	}

	/* ************************************************************************
	Determine where to put the class list, creating a new string import folder
	if necessary.
	************************************************************************ */
	string viewsEnv = environment.get("STRING_IMPORT_PATHS");
	string classesFile;
	if(viewsEnv.empty)
	{
		setupStart(); // `views` will not be recognized until DUB is restarted
		string viewsDir = packageDir.buildPath("views");
		if(!exists(viewsDir))
		{
			mkdirRecurse(viewsDir);
			classesFile = viewsDir.buildPath(classesFilename);
		}
	}
	else
	{
		auto splitted = viewsEnv.sanitized.sort();
		foreach(dir; splitted)
		{
			auto cf = dir.buildPath(classesFilename);
			if(exists(cf)) classesFile = cf;
		}
		if(classesFile.empty)
		{
			string viewsDir;
			auto found = splitted.find!(d => d.endsWith("/views") || d.endsWith("/views/"));
			if(found.length) viewsDir = found.front;
			else viewsDir = splitted.front;
			classesFile = viewsDir.buildPath(classesFilename);
		}
	}

	/* ************************************************************************
	Determine where to put the entry point, if it doesn't already exist.
	Existing entry point does NOT need to be modified thanks to the class list.
	************************************************************************ */
	string entryPointFile;
	if(makeEntryPoint)
	{
		auto found = project.files.find!(f => f.hasEntryPoint);
		if(found.length)
		{
			writeln("Entry point found in ", found.front.name);
			// re-generate it if it is the auto-generated one, in case the prefix was changed.
			// TODO: detect based on content, not name
			if(found.front.name.endsWith("entrypoint.d")) entryPointFile = found.front.name;
		}
		else
		{
			entryPointFile = importPaths.front.buildPath(entryPointFilename);
			if(entryPointFile.exists) assert(0, entryPointFile~" exists but does not contain the GodotNativeLibrary mixin.");
		}
	}

	/* ************************************************************************
	Write necessary files
	************************************************************************ */
	if(makeEntryPoint && entryPointFile)
	{
		string entryPointText = entryPointSource
			.replace("$PREFIX", prefix);
		writeln("Writing entry point to ", entryPointFile);
		std.file.write(entryPointFile, entryPointText);
	}
	writeln("Writing class list to ", classesFile);
	std.file.write(classesFile, project.toCsv);
	string gdignore = classesFile.dirName.buildPath(".gdignore");
	if(!gdignore.exists) std.file.write(gdignore, "");

	if(firstTimeSetup)
	{
		writeln("*******************************************************");
		writeln("* DUB must be restarted to complete first-time setup. *");
		writeln("* This will only be necessary once.                   *");
		writeln("*******************************************************");
		return 2;
	}

	return 0;
}

