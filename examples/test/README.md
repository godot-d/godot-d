Basic test project
==================
This demonstrates registering a `Test` class into Godot. It extends a Label node and changes the text on the Label when run.

Usage
-----
- Run the API generator first! Generated classes are not included in the repo yet. There's a README in the `generator` folder.
- Build the D example with `dub build godot-d:test`. It'll generate a shared/dynamic library; the filename depends on OS, but it will be placed in the Godot project's folder, ready to use.
- Open the Godot project and find the `DLibrary.tres` resource. This wraps the library itself; make sure your OS's library path is set to the DLL you compiled.
- Run the project. The Label is already set up with a GDNative Script using `DLibrary.tres` and the `Test` D class.

Since all the tests are in the `_notification` method, they'll run automatically when you run the scene.

You can modify the `_notification` method with anything you want to test.

Links
-----
The GDNative headers page has pictures for these instructions, but slightly outdated: <https://github.com/GodotNativeTools/godot_headers#how-do-i-use-native-scripts-from-the-editor>
