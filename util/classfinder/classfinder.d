/++
The class finder parses D files and lists any classes defined inside.

It does not attempt to limit the search to Godot-related classes or expand
mixins; a completely accurate class list would require its own compiler or a
compiler plugin system for D to list the classes as they're compiled.
+/
module classfinder;

import godotutil.string;

import dparse.parser, dparse.lexer;
import dparse.ast;
import dparse.rollback_allocator;

import dsymbol.conversion : parseModuleSimple;

import std.file, std.path;
import std.string;
import std.range;
import std.meta;
import std.typecons : scoped;
import std.algorithm.iteration : joiner, map;
import std.conv : text;

/// 
struct ClassesInFile
{
	string file;
	string moduleName;
	string mainClass;
	string[] classes;
}

/// libdparse visitor to be used with a dsymbol-like simple parser
private class GDVisitor : ASTVisitor
{
	string[] moduleName;
	string found; // class matching moduleName.back (fully qualified name)
	string[] all; // all classes (fully qualified names)
	string overrideName; // manually set the class; TODO: not implemented yet
	size_t[2][] overrideAttributeRanges;

	alias visit = ASTVisitor.visit;
	override void visit(in ModuleDeclaration m)
	{
		moduleName = m.moduleName.identifiers.map!(t => cast(string)t.text).array;
		super.visit(m);
	}

	// TODO: not implemented yet
	version(none) override void visit(in AtAttribute a)
	{
		import std.algorithm.searching : canFind;

		if(a.argumentList.items.canFind!(e => (cast(PrimaryExpression)e) && (cast(PrimaryExpression)e).primary.text == "MainClass"))
		{
			overrideAttributeRanges ~= [a.startLocation, a.endLocation];
		}
	}

	override void visit(in ClassDeclaration c)
	{
		auto name = (moduleName ~ c.name.text).joiner(".").text;
		all ~= name;
		if(c.name.text.toLower == moduleName.back || c.name.text.camelToSnake == moduleName.back)
		{
			if(!found.empty) throw new Exception("Multiple classes matching the module found");
			found = name;
		}

		super.visit(c);
	}
}

/// 
ClassesInFile parse(string path)
{
	ClassesInFile ret;
	ret.file = path;

	RollbackAllocator rba;
	StringCache stringCache = StringCache(StringCache.defaultBucketCount);

	ubyte[] bytes = cast(ubyte[])std.file.read(path);

	LexerConfig lexerConfig;
	lexerConfig.fileName = path;
	auto tokens = getTokensForParser(bytes, lexerConfig, &stringCache);

	Module m;
	m = parseModuleSimple(tokens, path, &rba);

	auto visitor = new GDVisitor;
	// for root modules
	visitor.moduleName = [path.baseName.stripExtension];

	m.accept(visitor);

	ret.moduleName = visitor.moduleName.joiner(".").text;
	if(!visitor.found.empty) ret.mainClass = visitor.found;
	else if(visitor.all.length == 1) ret.mainClass = visitor.all[0];
	ret.classes = visitor.all;

	return ret;
}




