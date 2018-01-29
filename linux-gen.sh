#!/bin/bash

#Godot path
GODOT="godot"

echo "==== Getting api.json ====="
$GODOT --gdnative-generate-json-api api.json

echo "==== Downloading gdnative_api.json ===="
curl -O https://raw.githubusercontent.com/godotengine/godot/master/modules/gdnative/gdnative_api.json

echo "==== Generating ===="
dub run godot-d:generator
