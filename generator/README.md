Godot-D API Generator
=====================
This program generates D bindings for the class API exported by Godot.

All the modules in `src/godot/classes` are generated using this program.

Usage
-----
- Export the API from the Godot editor with `<godot tools executable> --gdnative-generate-json-api api.json`.
- Compile the generator with `dub build godot-d:generator`.
- Move the `api.json` to where the generator executable is.
- Run `<godot-d_generator executable> api.json`. It will create all the classes in `binding-output`.
- Move all the D files in `binding-output` to `src/godot/classes`.  
(Remember to empty the classes directory first when re-exporting, in case any classes were removed.)

The main Godot-D package can now be compiled.
