D Example
=========
This demonstrates registering a `Test` class, complete with methods, into Godot.

The `register` function and attributes to mark Godot methods are in the `godot` module. Details of class registration, like what the attributes should be called (`@GodotMethod` currently), can be discussed in [issue #1](https://github.com/GodotNativeTools/d_bindings/issues/1) - suggestions are welcome.

Usage
-----
- Build the D example with `dub build godot-d:d-example`. It'll generate a shared/dynamic library; the filename depends on OS, but should contain "d-example".
- Create a new Godot scene with a single Node.
- Create a Resource of type GDNativeLibrary, with your platform's property set to the shared/dynamic library from D.
- Save the GDNativeLibrary
- Add a script to that node, with Class Name `Test`, Language `Native`, and Path set to the GDNativeLibrary resource you saved.
- Save and run the scene.

Since all the tests are in the `_notification` method, they'll run automatically when you run the scene. They can only write into the standard OS console at the moment, not the Godot console (need a Godot `print` function!)

You can modify the `_notification` method with anything you want to test.

Links
-----
The GDNative headers page has pictures for these instructions, but slightly outdated: <https://github.com/GodotNativeTools/godot_headers#how-do-i-use-native-scripts-from-the-editor>
