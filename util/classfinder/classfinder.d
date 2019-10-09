/++
The class finder parses D files and lists any classes defined inside.

It does not attempt to limit the search to Godot-related classes or expand
mixins; a completely accurate class list would require its own compiler or a
compiler plugin system for D to list the classes as they're compiled.
+/
module classfinder;

import godotutil.string;
import godotutil.classes;

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

/// libdparse visitor to be used with a dsymbol-like simple parser
private class GDVisitor : ASTVisitor
{
	FileInfo file;
	string[] moduleName;
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

	override void visit(in MixinTemplateName m)
	{
		import std.algorithm.searching;
		if(m.tokens.canFind!(t => t.text == "GodotNativeLibrary")) file.hasEntryPoint = true;
	}

	override void visit(in ClassDeclaration c)
	{
		auto name = (moduleName ~ c.name.text).joiner(".").text;
		file.classes ~= name;
		if(c.name.text.toLower == moduleName.back || c.name.text.camelToSnake == moduleName.back)
		{
			if(!file.mainClass.empty) throw new Exception("Multiple classes matching the module found");
			file.mainClass = name;
		}

		super.visit(c);
	}
}

/// 
FileInfo parse(string path)
{
	RollbackAllocator rba;
	StringCache stringCache = StringCache(StringCache.defaultBucketCount);

	ubyte[] bytes = cast(ubyte[])std.file.read(path);

	LexerConfig lexerConfig;
	lexerConfig.fileName = path;
	auto tokens = getTokensForParser(bytes, lexerConfig, &stringCache);

	Module m;
	m = parseModuleSimple(tokens, path, &rba);

	auto visitor = new GDVisitor;
	visitor.file.name = path;
	// for root modules
	visitor.moduleName = [path.baseName.stripExtension];

	m.accept(visitor);
	visitor.file.moduleName = visitor.moduleName.joiner(".").text;
	if(visitor.file.mainClass.empty && visitor.file.classes.length == 1) visitor.file.mainClass = visitor.file.classes[0];

	return visitor.file;
}




