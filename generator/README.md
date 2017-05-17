Godot-D API Generator
=====================
This program generates D bindings for the class API exported by Godot.

All the modules in `src/godot/classes` are generated using this program.

Usage
-----
- Export the API from the Godot editor with `<godot editor executable> --gdnative-generate-json-api api.json`.
- Move the `api.json` to where `dub.json` is.
- Compile and run the generator with `dub run godot-d:generator`. It will place the generated classes in `src/godot/classes` automatically.  
(Remember to empty the classes directory first when re-exporting, in case any classes were removed.)

The main Godot-D package can now be compiled.

If you need the generator to use a different API JSON or output directory, you can still specify those options: `godot-d_generator [path/to/api.json] [output/dir]`
