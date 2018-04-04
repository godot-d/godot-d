/++
Attributes for specifying how Godot-D should register the marked classes,
properties, methods, and signals into Godot.
+/
module godot.d.udas;

import godot.core, godot.c;
import godot.d.meta;

import std.meta, std.traits;

/++
A UDA to enable a script class to run in the Godot editor even without the game
running. Required for $(D EditorPlugin)s and other tools used in the editor.
+/
enum Tool;

/// 
enum RPCMode
{
	disabled,
	remote,
	sync,
	master,
	slave,
}

/++
A UDA to change the Godot name of a method, property, or signal. Useful for
overloads, which D supports but Godot does not.
+/
struct Rename
{
	string name;
}

/++
A UDA to mark a method that should be registered into Godot
+/
struct Method
{
	RPCMode rpcMode = RPCMode.disabled;
}

/++

+/
struct OnReady(alias arg)
{
	
}

/++
A UDA to mark a public variable OR accessor methods as a property in Godot.

Using just the type as a UDA uses default configuration. The UDA can also be
constructed at compile-time to customize how the property should be registered
into Godot.
+/
struct Property
{
	/// 
	enum Hint
	{
		none, /// no hint provided.
		range, /// hintText = "min,max,step,slider; //slider is optional"
		expRange, /// hintText = "min,max,step", exponential edit
		enumType, /// hintText= "val1,val2,val3,etc"
		expEasing, /// exponential easing funciton (math::ease)
		length, /// hintText= "length" (as integer)
		spriteFrame,
		keyAccel, /// hintText= "length" (as integer)
		flags, /// hintText= "flag1,flag2,etc" (as bit flags)
		layers2DRender,
		layers2DPhysics,
		layers3DRender,
		layers3DPhysics,
		file, /// a file path must be passed, hintText (optionally) is a filter "*.png,*.wav,*.doc,"
		dir, /// a directort path must be passed
		globalFile, /// a file path must be passed, hintText (optionally) is a filter "*.png,*.wav,*.doc,"
		globalDir, /// a directort path must be passed
		resourceType, /// a resource object type
		multilineText, /// used for string properties that can contain multiple lines
		colorNoAlpha, /// used for ignoring alpha component when editing a color
		imageCompressLossy,
		imageCompressLossless,
		objectId,
		typeString, /// a type string, the hint is the base type to choose
		nodePathToEditedNode, /// so something else can provide this (used in scripts)
		methodOfVariantType, /// a method of a type
		methodOfBaseType, /// a method of a base type
		methodOfInstance, /// a method of an instance
		methodOfScript, /// a method of a script & base
		propertyOfVariantType, /// a property of a type
		propertyOfBaseType, /// a property of a base type
		propertyOfInstance, /// a property of an instance
		propertyOfScript, /// a property of a script & base
	}
	
	/// 
	enum Usage
	{
		storage = 1,
		editor = 2,
		network = 4,
		editorHelper = 8,
		checkable = 16, /// used for editing global variables
		checked = 32, /// used for editing global variables
		internationalized = 64, /// hint for internationalized strings
		group = 128, /// used for grouping props in the editor
		category = 256,
		storeIfNonZero = 512, /// only store if nonzero
		storeIfNonOne = 1024, /// only store if false
		noInstanceState = 2048,
		restartIfChanged = 4096,
		scriptVariable = 8192,
		storeIfNull = 16384,
		animateAsTrigger = 32768,
		updateAllIfModified = 65536,
		
		defaultUsage = storage | editor | network, /// storage | editor | network
		defaultIntl = storage | editor | network | internationalized, /// storage | editor | network | internationalized
		noEditor = storage | network, /// storage | network
	}
	
	Hint hint = Hint.none; /// 
	string hintString = null; /// 
	Usage usage = Usage.defaultUsage; /// 
	RPCMode rpcMode = RPCMode.disabled; /// 
	
	/// 
	this(Hint hint, string hintString = null, Usage usage = Usage.defaultUsage,
		RPCMode rpcMode = RPCMode.disabled)
	{
		this.hint = hint;
		this.hintString = hintString;
		this.usage = usage;
		this.rpcMode = rpcMode;
	}
	
	/// 
	this(Usage usage, Hint hint = Hint.none, string hintString = null,
		RPCMode rpcMode = RPCMode.disabled)
	{
		this.hint = hint;
		this.hintString = hintString;
		this.usage = usage;
		this.rpcMode = rpcMode;
	}
}

/++
A UDA for marking script variables that should be automatically created when
the script is created, right before _init() is called.

Options for automatically deleting or adding as child node the tagged variable
can be set in the UDA.
+/
struct RAII
{
	bool autoCreate = true; /// create it when the script is created
	bool autoDelete = true; /// delete it when the script is destroyed
	bool autoAddChild = true; /// add it as a child (only for Node types)
	
	private import godot.node;
	package(godot) enum bool canAddChild(R, Owner) = extends!(GodotClass!R, Node)
		&& extends!(GodotClass!Owner, Node);
	
	static RAII makeDefault(R, Owner)()
	{
		import godot.reference, godot.node, godot.resource;
		RAII ret;
		static if( is(GodotClass!R : Reference) ) ret.autoDelete = false; // ref-counted
		static if( canAddChild!(R, Owner) )
		{
			ret.autoAddChild = true;
			ret.autoDelete = false; // owned by parent node
		}
		return ret;
	}
}
/// TODO: support static arrays

