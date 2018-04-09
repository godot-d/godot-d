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
	
	$(TR $(TD $(B Scripts)))
	$(TR $(TD Inheritance:) $(TD `class MyNode extends Node:`) $(TD $(D class MyNode : GodotScript!Node { })))
	$(TR $(TD Export method:) $(TD `func _ready(): # automatically exported`) $(TD $(D @Method void _ready() { })))
	$(TR $(TD Export property:) $(TD `export var text = "asdf"`) $(TD $(D @Property String text = "asdf";)))
	
	$(TR $(TD $(B Naming conventions)))
	$(TR $(TD Class/node:) $(TD PascalCase) $(TD PascalCase))
	$(TR $(TD Function/variable:) $(TD snake_case) $(TD camelCase))
	$(TR $(TD Constant/enum:) $(TD ALL_CAPS) $(TD camelCase))
)

+/
module godot.docs.differences;
