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
import std.stdio : writeln, writefln;

size_t startLocation(in BaseNode node) { return node.tokens.front.index; }
size_t endLocation(in BaseNode node) { return node.tokens.back.index; }

/// A named scope such as a class or struct and its location in the file
struct ScopeRange
{
	string name;
	enum Type { class_, struct_, template_ }
	Type type;
	size_t start, end;
}

/// libdparse visitor to be used with a dsymbol-like simple parser
private class GDVisitor : ASTVisitor
{
	FileInfo file;
	string[] moduleName;
	string overrideName; // manually set the class; TODO: not implemented yet
	size_t[2][] overrideAttributeRanges;

	ScopeRange[] scopeRanges;
	size_t[] classScopeRange; /// which ScopeRange each class corresponds to

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

	override void visit(in StructDeclaration s)
	{
		ScopeRange range = ScopeRange(s.name.text, ScopeRange.Type.struct_, s.startLocation, s.endLocation);
		scopeRanges ~= range;
	}
	override void visit(in InterfaceDeclaration i)
	{
		ScopeRange range = ScopeRange(i.name.text, ScopeRange.Type.struct_, i.startLocation, i.endLocation);
		scopeRanges ~= range;
	}
	override void visit(in ClassDeclaration c)
	{
		string name = c.name.text.dup;

		classScopeRange ~= scopeRanges.length;
		ScopeRange range = ScopeRange(name, ScopeRange.Type.class_, c.startLocation, c.endLocation);
		scopeRanges ~= range;

		file.classes ~= name;
		if(c.name.text.toLower == moduleName.back || c.name.text.camelToSnake == moduleName.back)
		{
			if(!file.mainClass.empty) writefln!"Module %s: found multiple classes matching the module name (%s and %s)"(
				moduleName, file.mainClass, name);
			else file.mainClass = name;
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

	foreach(ci, c; visitor.file.classes)
	{
		import std.algorithm : filter, multiSort, map;

		auto cScope = visitor.scopeRanges[visitor.classScopeRange[ci]];
		// names of the scopes that enclose cScope, outermost first
		auto parentScopeNames = visitor.scopeRanges
			.filter!(sr => sr.start <= cScope.start && sr.end >= cScope.end)
			.array
			.multiSort!((a, b) => a.start < b.start, (a, b) => a.end > b.end)
			.map!(sr => sr.name);

		visitor.file.classes[ci] = chain(only(visitor.file.moduleName), parentScopeNames).joiner(".").text;
	}

	return visitor.file;
}




