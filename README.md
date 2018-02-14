Godot-D
=======
D language bindings for the [Godot Engine](https://godotengine.org/)'s
[GDNative API](https://github.com/GodotNativeTools/godot_headers).

**WIP**: These bindings are still under development. Not all of the design,
implementation, or documentation is final. Comments/suggestions are welcome
(see GitHub issues).

Usage
-----
#### Dependencies
- D compiler:
  - [DMD 2.076+](https://dlang.org/download.html#dmd) or
  - [LDC 1.6.0+](https://github.com/ldc-developers/ldc#from-a-pre-built-package)

#### Dynamic library
Create a [DUB project](https://code.dlang.org/getting_started) with `godot-d`
as a dependency and `targetType` set to `dynamicLibrary`.

The compiled library should go in your Godot project's folder. Depending on how
your folder is set up, you can use the `targetPath` setting in your DUB project
to automate this.

In the Godot editor, create a GDNativeLibrary resource and specify the path to
your library for each platform you'll compile the library for.

#### D native scripts
In Godot, a "script" is an object that exposes methods, properties, and signals
to the engine. It is always attached to one of the engine's own C++ classes,
listed in the [class reference](http://docs.godotengine.org/en/latest/classes/).  
To expose a D class to the engine as a native script, inherit from GodotScript
with the Godot class the script should be attached to:  
```D
import godot, godot.button;

class TestButton : GodotScript!Button
{
	...
}
```
GodotScript contains a pointer to the Button the script is attached to, called
`owner`, which can be used to call Button methods or passed to methods taking
Button as an argument. The `owner` manages the lifetime of the script.

Normal OOP inheritance and polymorphism can be simulated by simply adding
`alias owner this;` to the D script class. For low-level code, just keep in
mind that `owner` is a separate C++ object.

#### Initialization
Your D scripts still need to be registered into Godot when your library is
loaded by the engine. The GodotNativeLibrary mixin template will generate the
C interface for you; instantiate it with the list of script classes to add to
Godot and functions to be called at init or termination:  
```D
mixin GodotNativeLibrary!
(
	"testLibrary", // same as the symbol_prefix in the GDNativeLibrary resource
	
	TestButton,
	
	(GodotInitOptions o){ writeln("Library initialized"); },
	(GodotTerminateOptions o){ writeln("Library terminated"); }
);
```

#### Godot API
Godot's full [script API](http://docs.godotengine.org/) can be used from D:  
- `godot.core` submodules contain container, math, and engine structs like
  `Vector3` and `String`.
- Other submodules of `godot` contain bindings to Godot classes, auto-generated
  from the engine's API. These are the C++ classes scripts can be attached to.
- This bindings use camelCase instead of snake_case.

  Change window to fullscreen example:
  ```GDSCRIPT
  OS.set_window_fullscreen(false)
  ```
  Would be:
  ```D
  OS.setWindowFullscreen(false);
  ```

Building Godot-D
----------------
The DUB package will only be updated for official releases of Godot, but if you
keep Godot up-to-date with `master` branch, you can make a local clone of
Godot-D and generate updated bindings using the [API generator](generator/README.md).

[DUB](https://code.dlang.org/getting_started) has various ways of using your
modified local Godot-D package, or you can simply include the contents of `src`
and `classes` in your own project instead of a DUB dependency.

License
-------
MIT - <https://opensource.org/licenses/MIT>  

Links
-----
GitHub repository - <https://github.com/GodotNativeTools/godot-d>  
The C++ bindings these are based on - <https://github.com/GodotNativeTools/cpp_bindings>  
The Godot Engine - <https://godotengine.org/>  
