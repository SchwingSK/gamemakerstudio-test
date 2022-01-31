// If the player does not exist, exit
if (!instance_exists(obj_player))
{
	exit;
}

// Get new mouse coordinates
new_mouse_x = device_mouse_x(0);
new_mouse_y = device_mouse_y(0);

// If LMB is pressed, update previous coordinates
if (mouse_check_button_pressed(mb_left))
{
	prev_mouse_x = new_mouse_x;
	prev_mouse_y = new_mouse_y;
}

// Calculate delta movement
delta_mouse_x = new_mouse_x - prev_mouse_x;
delta_mouse_y = new_mouse_y - prev_mouse_y;

// If LMB is released
if (mouse_check_button_released(mb_left))
{
	// If the mouse was only moved under 10 pixels while held
	if (held_movement < 10)
	{
		// Run the player's Key Press - Space event so it jumps
		with (obj_player) {
			event_perform(ev_keypress, vk_space);
		}
	}
}

// If the mouse is being held
if (mouse_check_button(mb_left))
{
	// If the mouse X speed is >2
	if (abs(delta_mouse_x) > 2)
	{
		// Apply touch input to the player
		obj_player.touch_input_x = delta_mouse_x * 1.5;
		
		// Increase held movement variable
		held_movement += point_distance(0, 0, delta_mouse_x, delta_mouse_y);
	}
}
// Otherwise, reset held distance
else
{
	held_movement = 0;
}