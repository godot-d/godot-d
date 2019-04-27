import godot;
import godot.object;
import godot.node;
import godot.spatial;
import godot.rigidbody;

import std.random;
import std.math;

import player;

mixin GodotNativeLibrary!(
	"asteroids",
	Asteroids,
	Player
);


class Asteroids : GodotScript!Node
{
	alias owner this;
	
	enum float spread = PI / 4f;
	enum float speed = 20f;
	enum float speedVariance = 5f;
	
	@OnReady!"CameraTarget" Spatial cameraTarget;
	@OnReady!"Player" Spatial player;
	
	@OnReady!"Asteroids" Node asteroids;
	
	@Method _ready()
	{
		foreach(i; 0..10) addAsteroid();
	}
	
	@Method _process(float delta)
	{
		cameraTarget.translation = player.translation;
		
		foreach(ch; asteroids.getChildren)
		{
			RigidBody rock = ch.as!RigidBody;
			if(rock.translation.length > 60f) addAsteroid(rock);
		}
	}
	
	@Method addAsteroid(RigidBody recycled = RigidBody.init)
	{
		import godot.resourceloader, godot.packedscene;
		
		RigidBody rock = recycled;
		
		if(!rock)
		{
			Ref!PackedScene scene = ResourceLoader.load(gs!"res://Rock.tscn").as!PackedScene;
			rock = scene.instance().as!RigidBody;
			asteroids.addChild(rock);
		}
		
		Vector3 randomDir = Vector3(0,0,1).rotated(Vector3(0,1,0), uniform(0f, 2f * PI));
		rock.translation = 55f * randomDir;
		
		Vector3 velocity = (-randomDir).rotated(Vector3(0,1,0), uniform!"[]"(-spread, spread));
		velocity *= speed + uniform!"[]"(-speedVariance, speedVariance);
		rock.linearVelocity = velocity;
	}
}


