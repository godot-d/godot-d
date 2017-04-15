module godot.core.inputevent;

import godot.c.input_event;
import godot.core.defs;
import godot.core.vector2;
import godot.core.transform2d;
import godot.core.string;

import std.math;

enum MouseButton : int
{
	none=0,
	left=1,
	right=2,
	middle=3,
	wheel_up=4,
	wheel_down=5,
	wheel_left=6,
	wheel_right=7,
}

enum MouseButtonMask : int
{
	left=(1<<(MouseButton.left-1)),
	right=(1<<(MouseButton.right-1)),
	middle=(1<<(MouseButton.middle-1)),
}

enum JoyButton : int
{
	button_0 = 0,
	button_1 = 1,
	button_2 = 2,
	button_3 = 3,
	button_4 = 4,
	button_5 = 5,
	button_6 = 6,
	button_7 = 7,
	button_8 = 8,
	button_9 = 9,
	button_10 = 10,
	button_11 = 11,
	button_12 = 12,
	button_13 = 13,
	button_14 = 14,
	button_15 = 15,
	button_max = 16,

	l = button_4,
	r = button_5,
	l2 = button_6,
	r2 = button_7,
	l3 = button_8,
	r3 = button_9,
	select = button_10,
	start = button_11,
	dpad_up = button_12,
	dpad_down = button_13,
	dpad_left = button_14,
	dpad_right = button_15,

	// a little history about game controllers (who copied who)

	snes_b = button_0,
	snes_a = button_1,
	snes_y = button_2,
	snes_x = button_3,

	sony_circle=snes_a,
	sony_x=snes_b,
	sony_square=snes_y,
	sony_triangle=snes_x,

	sega_b=snes_a,
	sega_a=snes_b,
	sega_x=snes_y,
	sega_y=snes_x,

	xbox_b=sega_b,
	xbox_a=sega_a,
	xbox_x=sega_x,
	xbox_y=sega_y,

	ds_a = snes_a,
	ds_b = snes_b,
	ds_x = snes_x,
	ds_y = snes_y,

	wii_c = button_5,
	wii_z = button_6,

	wii_minus = button_9,
	wii_plus = button_10,

	// end of history
}

enum JoyAxis : int
{
	axis_0=0,
	axis_1=1,
	axis_2=2,
	axis_3=3,
	axis_4=4,
	axis_5=5,
	axis_6=6,
	axis_7=7,
	axis_max=8,

	analog_0_x = axis_0,
	analog_0_y = axis_1,

	analog_1_x = axis_2,
	analog_1_y = axis_3,

	analog_2_x = axis_4,
	analog_2_y = axis_5,

	analog_l2 = axis_6,
	analog_r2 = axis_7,
}

struct InputModifierState
{
	bool shift;
	bool alt;
	/++ FIXME:
	
#ifdef APPLE_STYLE_KEYS
	union {
	bool command;
	bool meta; //< windows/mac key
	};
	bool control;
#else
	
	need to check whether that preprocessor var was set in Godot...
	+/
	union
	{
		bool command; //< windows/mac key
		bool control;
	}
	bool meta; //< windows/mac key
}





struct InputEventKey
{
	InputModifierState mod;

	bool pressed; /// otherwise release

	uint scancode; ///< check keyboard.h , KeyCode enum, without modifier masks
	uint unicode; ///unicode

	bool echo; /// true if this is an echo key
}


struct InputEventMouse
{
	InputModifierState mod;
	MouseButtonMask button_mask;
	float x,y;
	float global_x,global_y;
	int pointer_index;
}

/// FIXME: verify that these InputEventMouse subclasses match C++ memory layout

struct InputEventMouseButton
{
	// from InputEventMouse (no struct inheritance in D)
	InputModifierState mod;
	MouseButtonMask button_mask;
	float x,y;
	float global_x,global_y;
	int pointer_index;
	// end InputEventMouse
	
	
	int button_index;
	bool pressed; //otherwise released
	bool doubleclick; //last even less than doubleclick time
}

struct InputEventMouseMotion
{
	// from InputEventMouse (no struct inheritance in D)
	InputModifierState mod;
	MouseButtonMask button_mask;
	float x,y;
	float global_x,global_y;
	int pointer_index;
	// end InputEventMouse
	
	
	float relative_x,relative_y;
	float speed_x,speed_y;
}

struct InputEventJoypadMotion
{
	JoyAxis axis; ///< Joypad axis
	float axis_value; ///< -1 to 1
}

struct InputEventJoypadButton
{
	JoyButton button_index;
	bool pressed;
	float pressure; //0 to 1
}

struct InputEventScreenTouch
{
	int index;
	float x,y;
	bool pressed;
}
struct InputEventScreenDrag
{
	int index;
	float x,y;
	float relative_x,relative_y;
	float speed_x,speed_y;
}

struct InputEventAction
{
	int action;
	bool pressed;
}



struct InputEvent
{
	enum Type : int
	{
		none,
		key,
		mouse_motion,
		mouse_button,
		joypad_motion,
		joypad_button,
		screen_touch,
		screen_drag,
		action
	}
	
	uint ID;
	Type type;
	int device;
	
	union
	{
		InputEventMouseMotion mouse_motion;
		InputEventMouseButton mouse_button;
		InputEventJoypadMotion joy_motion;
		InputEventJoypadButton joy_button;
		InputEventKey key;
		InputEventScreenTouch screen_touch;
		InputEventScreenDrag screen_drag;
		InputEventAction action;
	}
	
	
	
	
	
	
	
	
	bool opEquals(in InputEvent p_event) const
	{
		if (type != p_event.type)
		{
			return false;
		}
	
		final switch(type)
		{
			case Type.none:
				return true;
			case Type.key:
				return key.unicode == p_event.key.unicode
					&& key.scancode == p_event.key.scancode
					&& key.echo == p_event.key.echo
					&& key.pressed == p_event.key.pressed
					&& key.mod == p_event.key.mod;
			case Type.mouse_motion:
				return mouse_motion.x == p_event.mouse_motion.x
					&& mouse_motion.y == p_event.mouse_motion.y
					&& mouse_motion.relative_x == p_event.mouse_motion.relative_x
					&& mouse_motion.relative_y == p_event.mouse_motion.relative_y
					&& mouse_motion.button_mask == p_event.mouse_motion.button_mask
					&& key.mod == p_event.key.mod;
			case Type.mouse_button:
				return mouse_button.pressed == p_event.mouse_button.pressed
					&& mouse_button.x == p_event.mouse_button.x
					&& mouse_button.y == p_event.mouse_button.y
					&& mouse_button.button_index == p_event.mouse_button.button_index
					&& mouse_button.button_mask == p_event.mouse_button.button_mask
					&& key.mod == p_event.key.mod;
			case Type.joypad_motion:
				return joy_motion.axis == p_event.joy_motion.axis
					&& joy_motion.axis_value == p_event.joy_motion.axis_value;
			case Type.joypad_button:
				return joy_button.pressed == p_event.joy_button.pressed
					&& joy_button.button_index == p_event.joy_button.button_index
					&& joy_button.pressure == p_event.joy_button.pressure;
			case Type.screen_touch:
				return screen_touch.pressed == p_event.screen_touch.pressed
					&& screen_touch.index == p_event.screen_touch.index
					&& screen_touch.x == p_event.screen_touch.x
					&& screen_touch.y == p_event.screen_touch.y;
			case Type.screen_drag:
				return screen_drag.index == p_event.screen_drag.index
					&& screen_drag.x == p_event.screen_drag.x
					&& screen_drag.y == p_event.screen_drag.y;
			case Type.action:
				return action.action == p_event.action.action
					&& action.pressed == p_event.action.pressed;
			//default:
			///	ERR_PRINT(String("No logic to compare InputEvents of this type, this shouldn't happen."));
		}
		//return false;
	}
	
	void set_as_action(in ref String p_action, bool p_pressed)
	{
		godot_input_event_set_as_action(cast(godot_input_event*)(&this), &p_action._godot_string, p_pressed);
	}
	
	bool is_pressed() const
	{
		switch(type)
		{
			case Type.key: return key.pressed;
			case Type.mouse_button: return mouse_button.pressed;
			case Type.joypad_button: return joy_button.pressed;
			case Type.screen_touch: return screen_touch.pressed;
			case Type.joypad_motion: return fabs(joy_motion.axis_value) > 0.5;
			case Type.action: return action.pressed;
			default: {}
		}
	
		return false;
	}
	
	bool is_echo() const
	{
		return (type==Type.key && key.echo);
	}
	
	bool is_action(in ref String p_action) const
	{
		return cast(bool)godot_input_event_is_action(cast(godot_input_event*)&this, &p_action._godot_string);
	}
	
	bool is_action_pressed(in ref String p_action) const
	{
		return is_action(p_action) && is_pressed() && !is_echo();
	}
	
	bool is_action_released(in ref String p_action) const
	{
		return is_action(p_action) && !is_pressed();
	}
	
	
	InputEvent xform_by(in Transform2D p_xform) const
	{
		InputEvent ev=this;
		switch(ev.type)
		{
			case Type.mouse_button: {
				Vector2 g = p_xform.xform(Vector2(ev.mouse_button.global_x,ev.mouse_button.global_y));
				Vector2 l = p_xform.xform(Vector2(ev.mouse_button.x,ev.mouse_button.y));
				ev.mouse_button.x=l.x;
				ev.mouse_button.y=l.y;
				ev.mouse_button.global_x=g.x;
				ev.mouse_button.global_y=g.y;
			} break;
			case Type.mouse_motion: {
				Vector2 g = p_xform.xform(Vector2(ev.mouse_motion.global_x,ev.mouse_motion.global_y));
				Vector2 l = p_xform.xform(Vector2(ev.mouse_motion.x,ev.mouse_motion.y));
				Vector2 r = p_xform.basis_xform(Vector2(ev.mouse_motion.relative_x,ev.mouse_motion.relative_y));
				Vector2 s = p_xform.basis_xform(Vector2(ev.mouse_motion.speed_x,ev.mouse_motion.speed_y));
				ev.mouse_motion.x=l.x;
				ev.mouse_motion.y=l.y;
				ev.mouse_motion.global_x=g.x;
				ev.mouse_motion.global_y=g.y;
				ev.mouse_motion.relative_x=r.x;
				ev.mouse_motion.relative_y=r.y;
				ev.mouse_motion.speed_x=s.x;
				ev.mouse_motion.speed_y=s.y;
			} break;
			case Type.screen_touch: {
				Vector2 t = p_xform.xform(Vector2(ev.screen_touch.x,ev.screen_touch.y));
				ev.screen_touch.x=t.x;
				ev.screen_touch.y=t.y;
			} break;
			case Type.screen_drag: {
				Vector2 t = p_xform.xform(Vector2(ev.screen_drag.x,ev.screen_drag.y));
				Vector2 r = p_xform.basis_xform(Vector2(ev.screen_drag.relative_x,ev.screen_drag.relative_y));
				Vector2 s = p_xform.basis_xform(Vector2(ev.screen_drag.speed_x,ev.screen_drag.speed_y));
				ev.screen_drag.x=t.x;
				ev.screen_drag.y=t.y;
				ev.screen_drag.relative_x=r.x;
				ev.screen_drag.relative_y=r.y;
				ev.screen_drag.speed_x=s.x;
				ev.screen_drag.speed_y=s.y;
			} break;
			default: break;
		}
		return ev;
	}
}

