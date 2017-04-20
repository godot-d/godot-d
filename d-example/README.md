D Example
=========
For now, this is just a test function to check if the Godot types and methods work as intended.

Usage
-----
- Build the D example with `dub build godot-d:d-example`. It'll generate a shared/dynamic library; the filename depends on OS, but should contain "d-example".
- Create a new Godot scene with a single Node.
- Create a Resource of type GDNativeLibrary, with your platform's property set to the shared/dynamic library from D.
- Save the GDNativeLibrary
- Add a script to that node, with Class Name `Test`, Language `Native`, and Path set to the GDNativeLibrary resource you saved.
- Save and run the scene.

Since all the tests are in the `notification` class, they'll run automatically when you run the scene. They can only write into the standard OS console at the moment, not the Godot console (need a Godot `print` function!)

You can modify the `notification` function with anything you want to test.

Links
-----
The GDNative headers page has pictures for these instructions, but slightly outdated: <https://github.com/GodotNativeTools/godot_headers#how-do-i-use-native-scripts-from-the-editor>
