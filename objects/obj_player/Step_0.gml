// This event handles moving everything down so it looks like the player is moving up.
// Please refer to Part 1 of the tutorial for detailed information.
// If the player is in the upper half of the room
if (y < room_height / 2)
{
	// And if the player is going upwards
	if (vspeed < 0)
	{
		// Flip its vspeed to create a downward speed
		var downspeed = -vspeed;
	
		// Apply to all children of obj_move_parent
		with (obj_move_parent) {
			y += downspeed;
		}
	
		// Stick the player to the center of the screen, vertically
		y = room_height / 2;
	
		// Get the Background layer's Y position
		var back_y = layer_get_y("Background");
	
		// Move the background along with the other instances
		layer_y("Background", back_y + downspeed);
	
		// Add to the height score
		global.score_height += downspeed / 100;
	}
}

// Apply touch input on X axis
target_x += min(abs(touch_input_x), move_speed * 1.2) * sign(touch_input_x);

// Smoothly interpolate touch input down to 0
touch_input_x = lerp(touch_input_x, 0, 0.2);