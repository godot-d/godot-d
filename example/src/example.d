import godot.c;

import godot;
import godot.core.defs;
import godot.core.string;
import godot.core.variant;
import godot.core.vector2;
import godot.core.array;

import core.runtime;
import std.stdio;
import std.conv;
import std.string : toStringz, fromStringz;
import core.stdc.string;
import std.algorithm.iteration;
import std.meta;

import godot.control.all;

class Test : GodotScript!Label
{
	/++
	Simulate OOP inheritance and polymorphism with implicit conversion to Label
	+/
	alias owner this;
	
	private string _prop = "default text";
	@Property
	String property() const
	{
		return String(_prop~" ~ hello from the getter!");
	}
	@Property
	void property(in String v)
	{
		_prop = v.c_string.fromStringz.idup~" ~ hello from the setter!";
	}
	
	private long _num = 5;
	@Property
	long number() const { return _num+1; }
	@Property
	void number(long v) { _num = v + 1; }
	
	@Property
	{
		float freal;
		double dreal;
	}
	
	// Some variables demonstrating OnReady, assigned right before _ready():
	
	// string -> Node: assign the variable to the specified path using get_node
	@OnReady!"ColorRect"
	ColorRect colorRect;
	
	// lambda: call it, assign return value to the variable
	@OnReady!((){ print("In OnReady of onReadyInt"); return 99; })
	int onReadyInt;
	
	@Property NodePath longNodePath;
	// another variable in this class: use it instead of some compile-time value
	@OnReady!longNodePath
	Label longNode;
	
	this()
	{
		writefln("Test.this(); this: %x", cast(void*)this);
	}
	
	@(godot.Method) // fully qualified name, in case you have another "Method" in the module
	void writeStuff()
	{
		writeln("Writing stuff...");
	}
	
	@Method @Rename("writeStuffInt")
	int writeStuff(int v)
	{
		writeln(v);
		return 1;
	}	
	
	@Method @Rename("formatNum") // rename the method
	String formatNumbers(real_t r, long i)
	{
		import std.format, std.string;
		auto res = format("real r = %f\n int i = %d\n", r, i);
		String ret = String(res);
		return ret;
	}
	
	@Method
	void _ready()
	{
		// the node variables will have been set by OnReady
		colorRect.set_frame_color(Color(0f, 1f, 0f));
		longNode.set_text(String("This node was set by OnReady"));
		
		writefln("owner: %x", cast(void*)owner);
		// print() will write into Godot's editor output, unlike writeln
		print("Test._ready()");
		print();
		print("Hello", " Godot", " o/");
		print();
		
		writeln("This as Variant: ", Variant(this));
		writeln("3 as Variant: ", Variant(3));
		writeln("\"asdf\" as Variant: ", Variant(String("asdf")));
		
		{
			writefln("This (%s) is a normal D method of type %s.",
				__FUNCTION__, typeof(_notification).stringof);
		}
		
		{
			import std.compiler;
			writefln("This D library was compiled with %s compiler, v%d.%03d",
				name, version_major, version_minor);
		}
		
		writeln(" ---TEST--- ");
		test();
	}
	
	@Method
	void test()
	{
		/++
		
		Currently, this is a collection of tests checking that the types and
		methods work as intended.
		
		Once D class registration is finished, it'll be replaced with a proper
		example game.
		
		+/
		
		Variant vVec2Ctor = Variant(Vector2(21, 6));
		writefln("vVec2Ctor.type: %s", vVec2Ctor.type);
		assert(vVec2Ctor.type == Variant.Type.vector2);
		Vector2 vec2Back = vVec2Ctor.as!Vector2;
		writefln("vec2Back: %f,%f", vec2Back.x, vec2Back.y);
		
		String str = String("qwertz");
		Variant vStr = str;
		String strBack = vStr.as!String;
		auto strBackC = strBack.c_string;
		printf("strBack.c_string: <%s>\n", strBackC);
		
		Variant vDStr = "D string assigned to Variant";
		writefln("vDStr: <%s>", vDStr);
		
		Variant vLongCtor = Variant(1L);
		writefln("vLongCtor.type: %s", vLongCtor.type);
		assert(vLongCtor.type == Variant.Type.int_);
		auto vLongBack = vLongCtor.as!long;
		writefln("vLongCtor.as!long: %d", vLongBack);
		assert(vLongBack == 1L);
		
		Variant vUbyteCtor = Variant(ubyte(250));
		writefln("vUbyteCtor.type: %s", vUbyteCtor.type);
		assert(vUbyteCtor.type == Variant.Type.int_);
		long vUbyteBackL = vUbyteCtor.as!long;
		writefln("vUbyteCtor.as!long: %d", vUbyteBackL);
		assert(vUbyteBackL == 250L);
		ubyte vUbyteBack = vUbyteCtor.as!ubyte;
		writefln("vUbyteCtor.as!ubyte: %d", vUbyteBack);
		assert(vUbyteBack == ubyte(250));
		
		Variant vAssigned = -33;
		writefln("vAssigned.type: %s", vAssigned.type);
		assert(vAssigned.type == Variant.Type.int_);
		auto vAssignedBack = vAssigned.as!int;
		writefln("vAssignedBack.as!int: %d", vAssignedBack);
		assert(vAssignedBack == -33);
		
		Array arr = Array.empty_array;
		arr ~= vVec2Ctor;
		arr ~= vStr;
		arr ~= vLongCtor;
		arr ~= vUbyteCtor;
		arr ~= vAssigned;
		writefln("arr.length: %d", arr.length);
		assert(arr.length == 5);
		write("Types:");
		foreach(i; 0..arr.length)
		{
			writef(" <%s>", arr[i].type);
		}
		writeln();
		
		// test null String
		{
			String empty;
			writefln("empty.length: %d", empty.length);
			auto cStr = empty.c_string;
			writefln("empty.c_string: %x <%s>", cast(void*)cStr, cStr.fromStringz);
			
			String other = empty;
			auto ocStr = other.c_string;
			writefln("other.c_string: %x <%s>", cast(void*)ocStr, ocStr.fromStringz);
			
			String cat = empty ~ String("cat");
			writefln("cat: <%s>", cat.c_string.fromStringz);
			
			empty = String("assigned");
			writefln("assigned: <%s>", empty.c_string.fromStringz);
		}
		
		// test singletons
		{
			import godot.os;
			import std.string;
			
			String name = OS.get_name();
			writefln("OS is %s on device %s", name.c_string().fromStringz,
				OS.get_model_name().c_string().fromStringz);
			String exe = OS.get_executable_path();
			print("Executable path: ", exe);
			
			import godot.projectsettings;
			String projectName = ProjectSettings.get("application/config/name").as!String;
			print("ProjectSettings property \"application/config/name\": ", projectName);
		}
		
		// test extension of Label
		{
			import std.string;
			
			// Test has no "set_uppercase" or "set/get_text", so they're forwarded to base
			
			set_uppercase(true);
			
			String oldText = get_text();
			writefln("Old Label text: %s", oldText.c_string.fromStringz);
			set_text("New text set from D Test class");
		}
		
		// test resource loading
		{
			import godot.resource, godot.resourceloader;
			import std.string;
			
			String iconPath = String("res://icon.png");
			writefln("assert(!ResourceLoader.has(%s))", iconPath.c_string.fromStringz);
			assert(!ResourceLoader.has(iconPath));
			
			Resource res = ResourceLoader.load(iconPath, "", false);
			writefln("Loaded Resource %s at path %s", res.get_name.c_string.fromStringz,
				res.get_path.c_string.fromStringz);
			
			// test upcasts
			import godot.texture, godot.mesh;
			Mesh wrongCast = cast(Mesh)res;
			assert(wrongCast == null);
			Texture rightCast = cast(Texture)res;
			assert(rightCast != null);
			auto size = rightCast.get_size();
			writefln("Texture size: %f,%f", size.x, size.y);
			
			writefln("assert(ResourceLoader.has(%s))", iconPath.c_string.fromStringz);
			assert(ResourceLoader.has(iconPath));
		}
		
		// test properties
		// FIXME: D Object has "get" shadowing GodotObject.get
		{
			String pn = String("property");
			String someText = String("Some text.");
			Variant someTextV = Variant(someText);
			
			writeln("setting property to \"Some text.\"...");
			owner.set(pn, someTextV);
			writefln("Internally, property now contains <%s>.", _prop);
			auto res = owner.get(pn).as!String;
			writefln("getting property: <%s>", res.c_string.fromStringz);
		}
		{
			String pn = String("number");
			long someNum = 42;
			Variant someNumV = Variant(someNum);
			
			writeln("setting number to 42...");
			owner.set(pn, someNumV);
			writefln("Internally, number now contains <%d>.", _num);
			auto res = owner.get(pn).as!long;
			writefln("getting number: <%d>", res);
		}
	}
}

// register Test; also initializes D Runtime and Godot assert handler
mixin GodotNativeInit!
(
	Test,
	(godot_gdnative_init_options* o)
	{
		writeln("GodotNativeInit func");
		writeln("Godot is in ", o.in_editor ? "EDITOR" : "GAME", " mode.");
	}
);
// terminate D Runtime
mixin GodotNativeTerminate!( (){ writeln("GodotNativeTerminate func"); } );

