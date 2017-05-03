D Example
=========
This demonstrates registering a `Test` class into Godot. It extends a Label node and changes the text on the Label when run.

The `register` function and attributes to mark Godot methods are in the `godot` module. Details of class registration, like what the attributes should be called (`@GodotMethod` currently), can be discussed in [issue #1](https://github.com/GodotNativeTools/d_bindings/issues/1) - suggestions are welcome. A more complete demo game will replace this example soon, now that most of Godot's API is wrapped for use in D.

Usage
-----
- Run the API generator first! Generated classes are not included in the repo yet. There's a README in the `generator` folder.
- Build the D example with `dub build godot-d:example`. It'll generate a shared/dynamic library; the filename depends on OS, but it will be placed in the Godot project's `lib` folder, ready to use.
- Open the Godot project and find the `DLibrary.tres` resource. This wraps the library itself; make sure your OS's library path is set to the DLL you compiled.
- Run the project. The Label is already set up with a GDNative Script using `DLibrary.tres` and the `Test` D class.

Since all the tests are in the `_notification` method, they'll run automatically when you run the scene.

You can modify the `_notification` method with anything you want to test.

Links
-----
The GDNative headers page has pictures for these instructions, but slightly outdated: <https://github.com/GodotNativeTools/godot_headers#how-do-i-use-native-scripts-from-the-editor>
