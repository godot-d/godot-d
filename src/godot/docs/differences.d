// just docs: Differences
/++
$(H1 Differences from GDScript)

$(TABLE
	$(CLASS small-table)
	$(TR $(TH ) $(TH GDScript) $(TH D))
	
	$(TR $(TD $(B Variables)))
	$(TR $(TD Instantiation:) $(TD `var n = Node.new()`) $(TD $(D auto n = memnew!Node;)))
	$(TR $(TD Deletion:) $(TD `n.free()`) $(TD $(D memdelete(n);)))
	$(TR $(TD Reference-counting:) $(TD All vars inheriting Reference are automatically ref-counted) $(TD $(D Ref!ArrayMesh rc = memnew!ArrayMesh; // explicit Ref!T wrapper increments ref-count)))
	$(TR $(TD Dynamic typing:) $(TD All vars are dynamically-typed) $(TD $(D Variant v; // accepts any Godot-compatible type)))
	$(TR $(TD Checking inheritance:) $(TD `if n is Node2D:`) $(TD $(D if(n.as!Node2D) // null if n doesn't inherit Node2D)))
	
	$(TR $(TD $(B Scripts)))
	$(TR $(TD Inheritance:) $(TD `class MyNode extends Node:`) $(TD $(D class MyNode : GodotScript!Node { })))
	$(TR $(TD Export method:) $(TD `func _ready(): # automatically exported`) $(TD $(D @Method void _ready() { })))
	$(TR $(TD Export property:) $(TD `export var text = "asdf"`) $(TD $(D @Property String text = "asdf";)))
	
	$(TR $(TD $(B Naming conventions)))
	$(TR $(TD Class/node:) $(TD PascalCase) $(TD PascalCase))
	$(TR $(TD Function/variable:) $(TD snake_case) $(TD camelCase))
	$(TR $(TD Constant/enum:) $(TD ALL_CAPS) $(TD camelCase))
	
	$(TR $(TD $(B Math)) $(TD $(B in $(LINK2 https://godot.readthedocs.io/en/latest/classes/class_@gdscript.html, global scope))) $(TD $(B in $(MREF std, math))))
	$(TR $(TD ) $(TD abs) $(TD ))
	$(TR $(TD ) $(TD acos) $(TD ))
	$(TR $(TD ) $(TD asin) $(TD ))
	$(TR $(TD ) $(TD atan) $(TD ))
	$(TR $(TD ) $(TD atan2) $(TD ))
	$(TR $(TD ) $(TD ceil) $(TD ))
	$(TR $(TD ) $(TD cos) $(TD ))
	$(TR $(TD ) $(TD cosh) $(TD ))
	$(TR $(TD ) $(TD deg2rad) $(TD $(D x*(PI/180))))
	$(TR $(TD ) $(TD exp) $(TD ))
	$(TR $(TD ) $(TD floor) $(TD ))
	$(TR $(TD ) $(TD fmod) $(TD ))
	$(TR $(TD ) $(TD is_inf) $(TD $(D isInfinity)))
	$(TR $(TD ) $(TD is_nan) $(TD $(D isNaN)))
	$(TR $(TD ) $(TD log) $(TD ))
	$(TR $(TD ) $(TD nearest_po2) $(TD $(D x.isPowerOf2 ? x : x.nextPow2)))
	$(TR $(TD ) $(TD PI) $(TD ))
	$(TR $(TD ) $(TD pow) $(TD ))
	$(TR $(TD ) $(TD rad2deg) $(TD $(D x*(180/PI))))
	$(TR $(TD ) $(TD round) $(TD ))
	$(TR $(TD ) $(TD sign) $(TD $(D sgn)))
	$(TR $(TD ) $(TD sin) $(TD ))
	$(TR $(TD ) $(TD sinh) $(TD ))
	$(TR $(TD ) $(TD sqrt) $(TD ))
	$(TR $(TD ) $(TD tan) $(TD ))
	$(TR $(TD ) $(TD tanh) $(TD ))
	
	$(TR $(TD $(B Algorithms)) $(TD $(B in $(LINK2 https://godot.readthedocs.io/en/latest/classes/class_@gdscript.html, global scope))) $(TD $(B in $(MREF std, algorithm))))
	$(TR $(TD ) $(TD clamp) $(TD ))
	$(TR $(TD ) $(TD max) $(TD ))
	$(TR $(TD ) $(TD min) $(TD ))
	
	$(TR $(TD $(B Other functions)) $(TD $(B in $(LINK2 https://godot.readthedocs.io/en/latest/classes/class_@gdscript.html, global scope))) $(TD ))
	$(TR $(TD ) $(TD assert) $(TD $(D assert) keyword))
	$(TR $(TD ) $(TD load) $(TD $(D ResourceLoader.load)))
	$(TR $(TD ) $(TD preload) $(TD not usable from D))
	$(TR $(TD ) $(TD print) $(TD $(REF print, godot, d, output)))
	
	$(TR $(TD $(B Constants and enums)) $(TD $(B Globals in $(LINK2 https://godot.readthedocs.io/en/latest/classes/class_@globalscope.html, global scope))) $(TD $(B in $(MREF godot, globalconstants))))
	$(TR $(TD Class constants:) $(TD `Material.RENDER_PRIORITY_MAX`) $(TD $(D Material.Constants.renderPriorityMax)))
)

+/
module godot.docs.differences;
