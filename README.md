Godot-D
=======
D language bindings for the [Godot Engine](https://godotengine.org/)'s
[GDNative API](https://github.com/GodotNativeTools/godot_headers).

Usage
-----
The Godot Engine can interface with D game code using the GDNative module.
Godot-D allows a D dynamic library to register its own classes into Godot as
"Native scripts" with all the capabilities of Godot's GDScripts.

Godot's full [script API](http://docs.godotengine.org/) can be used from D:  
- Module `godot.core` contains some engine types like `Vector3` reimplemented
  in D for native performance.
- `godot` submodules contain the rest of Godot's classes, auto-generated using
  the engine's API. These types can be used and inherited as normal D classes.
  All the classes and core types can be imported together with `import godot;`.
- Module `godot.c` contains the GDNative C functions wrapped by the D types,
  and generally should never be needed by D game code.

TODO: document D class registration and how to load the library in Godot

License
-------
MIT - <https://opensource.org/licenses/MIT>  

Links
-----
GitHub repository - <https://github.com/GodotNativeTools/d_bindings>  
The C++ bindings these are based on - <https://github.com/GodotNativeTools/cpp_bindings>  
The Godot Engine - <https://godotengine.org/>  
