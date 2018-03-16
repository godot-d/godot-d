import godot;
import godot.object;
import godot.area;
import godot.camera;
import godot.input;
import godot.inputevent.all;

class Player : GodotScript!Area
{
	alias owner this;
	
	enum float speed = 25; /// units per second
	
	@Method _ready()
	{
		
	}
	
	@Method _process(float delta)
	{
		Vector2 mousePos = getTree.root.getMousePosition;
		Camera camera = getTree.root.getCamera;
		Vector3 rayOrigin = camera.projectRayOrigin(mousePos);
		Vector3 rayNormal = camera.projectRayNormal(mousePos);
		
		Plane plane = Plane(Vector3(0f, 1f, 0f), 0f);
		Vector3 intersect;
		if(plane.intersectsRay(rayOrigin, rayNormal, &intersect))
		{
			lookAt(intersect, Vector3(0f, 1f, 0f));
		}
		
		
		if(Input.isActionPressed("fly"))
		{
			translateObjectLocal(Vector3(0f, 0f, -delta * speed));
			if(translation.length > 50f) translation = 50f * translation.normalized;
		}
	}
	
	@Method hit(GodotObject o)
	{
		import godot.control;
		setProcess(false);
		hide();
		getNode("GameOver").as!Control.show();
	}
}

