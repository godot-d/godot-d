// just docs: Memory management
/++
Godot classes can be instanced with the engine's $(D memnew) template function. Other allocation methods such as D's GC $(D new) will not work with Godot classes, since the C++ engine is often responsible for deleting the objects.

After being created with $(D memnew), most Godot objects are managed automatically:
$(UL
	$(LI $(D Node)s delete all their child nodes when they are themselves destroyed. Since nodes are usually children of a single large node tree, the $(D SceneTree), it is rarely necessary to manually delete them.
		$(UL
			$(LI If the node is not part of the tree or was removed with $(D Node.removeChild), delete it with $(D memdelete).)
			$(LI To manually delete a node that is still in the tree, call $(D Node.queueFree) on it instead of $(D memdelete). This will remove and delete the node only after notifications and signals from the current frame have reached it.)
		)
	)
	$(LI $(D Reference)s, including $(D Resource)s, are reference-counted with the $(D Ref!T) wrapper.
		$(UL
			$(LI $(D memnew) and functions returning References always return them already wrapped in Ref.)
			$(LI Never manually delete a Reference with $(D memdelete); there may be other references to it elsewhere.)
			$(LI Only pass around a raw pointer taken from a Ref if you can ensure that at least one Ref to it will exist for as long as the pointer does. This will be enforced with $(D scope) in $(D @safe) code once DIP1000 is accepted.)
			$(LI Like Ref, $(D Variant) also adds to the ref-count when a Reference is assigned to it.)
		)
	)
)

Examples:
---
class Test : GodotScript!Node
{
	@Method _ready()
	{
		Node a = memnew!Node;
		Node b = memnew!Node;
		a.addChild(b);
		memdelete(a); // MUST manually delete nodes that aren't in the tree
		// deleting the parent `a` also first deletes `b`
		
		Node c = memnew!Node;
		owner.addChild(c); // add `c` to the tree as a child of `this`
		// the tree will delete `c` right before it deletes `this` when the game is exited
		
		Node d = memnew!Node;
		owner.addChild(d);
		d.queueFree(); // remove and delete `d` once notifications and signals are finished being sent to it
		
		Ref!ArrayMesh mesh = memnew!ArrayMesh;
		// Ref will delete `mesh` at end of scope
		
		Ref!Texture tex = ResourceLoader.load("res://icon.png").as!Texture;
		// Ref will delete `tex` only if it isn't already loaded elsewhere.
		
		GodotObject manuallyManaged = memnew!GodotObject;
		memdelete(manuallyManaged); // MUST manually delete plain GodotObjects
	}
}
---

+/
module godot.docs.memorymanagement;
