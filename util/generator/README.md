Godot-D API Binding Generator
=============================
This program generates D bindings for the API exported by Godot. It requires two JSON files: `gdnative_api.json` for the C interface, `api.json` for the rest of Godot's API. The JSONs from the most recent [official Godot release](https://godotengine.org/download) are included in the Godot-D repository, but the steps below show how to obtain them from a custom Godot build.

All the modules in `classes/` are generated using this program.

Usage
-----
- Export the API from the Godot editor with `<godot editor executable> --gdnative-generate-json-api api.json`.
- Copy (or symlink) the generated `api.json` to `godot-d/` (next to `dub.json`).
- Copy (or symlink) `modules/gdnative/gdnative_api.json` from Godot source to `godot-d/`.
  - Note: take it from up-to-date Godot source even if you'll use an older Godot binary. Any newer GDNative functions used by the bindings must be declared for them to compile, but your library will be backwards-compatible thanks to GDNative's extension API.
- Compile and run the generator with `dub run :api-binding-generator`. It will place the generated classes in `classes/` automatically.  
(Remember to delete the entire `classes` directory first when re-exporting, in case any classes were removed.)

The main Godot-D package can now be compiled.

If you need the generator to use a different API JSON or output directory, you can still specify those options: `dub run :api-binding-generator -- [path/to/api.json] [output/dir]`

API Documentation
-----------------
The generator can include Godot's API documentation as ddoc comments by reading it from the XML files in the Godot source. This can be useful for generating D-themed doc pages or for showing class/method documentation in your IDE. Pass your Godot source directory to the generator with the `-s` switch:  

``` sh
dub run :api-binding-generator -- -s path/to/godot
```

