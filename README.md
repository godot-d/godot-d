Godot-D
=======
D language bindings for the [Godot Engine](https://godotengine.org/)'s
[GDNative API](https://github.com/GodotNativeTools/godot_headers).

**WIP**: These bindings are still under development. Not all of the design,
implementation, or documentation is final. Comments/suggestions are welcome
(see GitHub issues).

Usage
-----
#### Dynamic library
Create a [DUB project](https://code.dlang.org/getting_started) with `godot-d`
as a dependency and `targetType` set to `dynamicLibrary`.

The compiled library should go in your Godot project's folder. Depending on how
your folder is set up, you can use the `targetPath` setting in your DUB project
to automate this.

In the Godot editor, create a GDNativeLibrary resource and specify the path to
your library for each platform you'll compile the library for.

#### D native scripts
To expose a D class to Godot as a native "script", use the `godot.extends`
mixin with the Godot class the script should be attached to:  
```D
import godot, godot.classes.button;

class TestButton
{
	mixin extends!Button;
	
	...
}
```
Instances of TestButton will now always be paired with a Button (a C++ object,
one of Godot's built-in Node types).

#### Initialization
Your D "scripts" still need to be registered into Godot in the C function
called when your library is loaded. This is also the right place to initialize
the D runtime if you plan to use it:  
```D
import core.runtime;

export extern(C) void godot_native_init(godot_native_init_options* options)
{
	Runtime.initialize(); // needed for GC and many other things
	
	register!TestButton();
}

export extern(C) void godot_native_terminate(godot_native_terminate_options* options)
{
	Runtime.terminate();
}
```

#### Godot API
Godot's full [script API](http://docs.godotengine.org/) can be used from D:  
- `godot.core` submodules contain container, math, and engine structs like
  `Vector3` and `String`.
- `godot.classes` submodules contain the rest of Godot's classes, auto-generated
  from the engine's API. These are the classes D "scripts" can be attached to.

Building Godot-D
----------------
The DUB package will only be updated for official releases of Godot, but if you
keep Godot up-to-date with `master` branch, you can make a local clone of
Godot-D and generate updated bindings using the [API generator](generator/README.md).

[DUB](https://code.dlang.org/getting_started) has various ways of using your
modified local Godot-D package, or you can simply include the contents of `src`
in your own project instead of a DUB dependency.

License
-------
MIT - <https://opensource.org/licenses/MIT>  

Links
-----
GitHub repository - <https://github.com/GodotNativeTools/d_bindings>  
The C++ bindings these are based on - <https://github.com/GodotNativeTools/cpp_bindings>  
The Godot Engine - <https://godotengine.org/>  
