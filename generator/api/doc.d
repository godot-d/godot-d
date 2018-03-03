module api.doc;

import api.classes, api.methods, api.util;

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
		if(bd.childText) ddoc ~= bd.childText;
	}
	
	if(cDoc.hasChild("description"))
	{
		auto fd = cDoc.child("description");
		if(fd.childText)
		{
			string t = fd.childText;
			// in case it starts with brief_description; only possible to detect if exactly the same, unfortunately
			t = t.chompPrefix(ddoc).strip;
			if(t)
			{
				if(ddoc) ddoc ~= "\n\n";
				ddoc ~= t;
			}
		}
	}
	
	/// TODO: remove any */ from inside comment and change BBCode-style stuff to ddoc macros
	c.ddoc = "/**\n"~ddoc~"\n*/\n";
	
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
	
	/// TODO: properties ("members")
	
	/// TODO: enums and constants
}

void parseMethodDoc(GodotMethod m, DOMEntity!string mDoc)
{
	string ddoc;
	if(mDoc.hasChild("description"))
	{
		auto fd = mDoc.child("description");
		if(fd.childText) ddoc ~= fd.childText;
	}
	
	m.ddoc = "/**\n"~ddoc~"\n*/\n";
}


// ddoc util functions




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


