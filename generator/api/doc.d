module api.doc;

import api.classes, api.methods, api.util;
import godot.d.string;

import std.stdio : writeln, writefln;
import std.string, std.range;
import std.algorithm.searching;
import std.exception : enforce;

import dxml.dom;
import dxml.util : stripIndent;

void parseClassDoc(GodotClass c, string xml)
{
	string ddoc;
	auto dom = parseDOM!simpleXML(xml);
	
	enforce(dom.children.length == 1 && dom.children[0].name == "class",
		"Expected a single <class name=\""~c.name.d~"\"> in the doc XML");
	auto cDoc = dom.children[0];
	
	if(cDoc.hasChild("brief_description"))
	{
		auto bd = cDoc.child("brief_description");
		if(bd.childText)
		{
			ddoc ~= bd.childText;
			c.ddocBrief = bd.childText;
		}
	}
	
	if(cDoc.hasChild("description"))
	{
		auto fd = cDoc.child("description");
		if(fd.childText)
		{
			string t = fd.childText;
			// in case it starts with brief_description; only possible to detect if exactly the same, unfortunately
			t = t.chompPrefix(c.ddocBrief).strip;
			if(t)
			{
				if(ddoc) ddoc ~= "\n\n";
				ddoc ~= t;
			}
		}
	}
	
	/// TODO: remove any */ from inside comment and change BBCode-style stuff to ddoc macros
	c.ddocBrief = c.ddocBrief.godotToDdoc;
	c.ddoc = ddoc.godotToDdoc;
	
	if(cDoc.hasChild("methods"))
	{
		auto methods = cDoc.child("methods");
		foreach(mDoc; methods.children)
		{
			auto index = c.methods.countUntil!"a.name == b"(mDoc.attribute("name"));
			if(index != -1)
			{
				parseMethodDoc(c.methods[index], mDoc);
			}
			else writefln("No method %s.%s", c.name.godot, mDoc.attribute("name"));
		}
	}
	
	if(cDoc.hasChild("members"))
	{
		auto members = cDoc.child("members");
		foreach(mDoc; members.children)
		{
			auto index = c.properties.countUntil!"a.name == b"(mDoc.attribute("name"));
			if(index != -1)
			{
				parsePropertyDoc(c.properties[index], mDoc);
			}
			else writefln("No property %s.%s", c.name.godot, mDoc.attribute("name"));
		}
	}
	
	if(cDoc.hasChild("constants"))
	{
		auto constants = cDoc.child("constants");
		foreach(ceDoc; constants.children)
		{
			auto cPtr = ceDoc.attribute("name") in c.constants;
			if(cPtr) c.ddocConstants[ceDoc.attribute("name")] = ceDoc.childText.godotToDdoc;
			
			if(!ceDoc.attribute("enum").empty)
			{
				auto index = c.enums.countUntil!"a.name == b"(ceDoc.attribute("enum"));
				if(index != -1) c.enums[index].ddoc[ceDoc.attribute("name")] = ceDoc.childText.godotToDdoc;
			}
		}
	}
	
	/// TODO: enums
}

void parseMethodDoc(GodotMethod m, DOMEntity!string mDoc)
{
	if(mDoc.hasChild("description"))
	{
		auto fd = mDoc.child("description");
		if(fd.childText) m.ddoc = fd.childText.godotToDdoc;
	}
}

void parsePropertyDoc(GodotProperty p, DOMEntity!string pDoc)
{
	p.ddoc = pDoc.childText.godotToDdoc;
}


// ddoc util functions

string godotToDdoc(string input)
{
	import std.algorithm, std.string, std.regex;
	string ret = input;
	
	// handle [tags] like Godot's doc/tools/makerst.py
	
	ret = ret.replaceAll!((Captures!string s){
		auto split = s[1].findSplit(".");
		if(split[1].empty) return "$(D "~s[1].snakeToCamel.escapeD~")";
		else return "$(D "~split[0].escapeType~"."~split[2].snakeToCamel.escapeD~")";
	})(ctRegex!(`\[(?:method|member|signal|enum) (.+?)\]`));
	
	/// TODO: not D code, can't use --- blocks. Maybe the GDScript can be parsed and converted to D...
	ret = ret.replaceAll!((Captures!string s) => "\n"~s[1]~"\n")
		(ctRegex!(`\[codeblock\]([\s\S]*?)\[/codeblock\]`));
	
	ret = ret.replaceAll(ctRegex!`\[br\][ \t]*`, "$(BR)");
	
	ret = ret.replaceAll!((Captures!string s) => "$("~s[1].toUpper~" "~s[2]~")")
		(ctRegex!`\[([bui])\](.*?)\[/\1\]`);
	
	ret = ret.replaceAll!((Captures!string s) => "`"~s[1]~"`")(ctRegex!`\[code\](.*?)\[/code\]`);
	
	// fallback for [Class]
	ret = ret.replaceAll!((Captures!string s) => "$(D "~s[1].escapeType~")")(ctRegex!`\[(.+?)\]`);
	
	return ret;
}


// dxml util functions

string attribute(DOMEntity!string e, string name)
{
	auto index = e.attributes.countUntil!"a.name == b"(name);
	if(index == -1) return null;
	return e.attributes[index].value;
}

bool hasChild(DOMEntity!string e, string name)
{
	return e.children.countUntil!"a.name == b"(name) != -1;
}

DOMEntity!string child(DOMEntity!string e, string name)
{
	auto index = e.children.countUntil!"a.name == b"(name);
	assert(index != -1);
	return e.children[index];
}

string childText(DOMEntity!string e)
{
	auto index = e.children.countUntil!"a.type == b"(EntityType.text);
	if(index == -1) return null;
	return e.children[index].text.stripIndent;
}


