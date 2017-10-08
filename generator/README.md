Godot-D API Generator
=====================
This program generates D bindings for the class API exported by Godot.

All the modules in `classes/` are generated using this program.

Usage
-----
- Export the API from the Godot editor with `<godot editor executable> --gdnative-generate-json-api api.json`.
- Copy (or symlink) the generated `api.json` to `godot-d/` (next to `dub.json`).
- Copy (or symlink) `modules/gdnative/gdnative_api.json` from Godot source to `godot-d/`.
- Compile and run the generator with `dub run godot-d:generator`. It will place the generated classes in `classes/` automatically.  
(Remember to delete the entire `classes` directory first when re-exporting, in case any classes were removed.)

The main Godot-D package can now be compiled.

If you need the generator to use a different API JSON or output directory, you can still specify those options: `godot-d_generator [path/to/api.json] [output/dir]`
