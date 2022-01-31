// If the player is falling down
if (vspeed > 0)
{
	// and the current sprite is the in-air sprite
	if (sprite_index == sprite_air)
	{
		// Start in-air to fall transition
		sprite_index = sprite_air_to_fall;
		image_index = 0;
	
		// Run Alarm 0 later which will check if the
		// player is still falling and play the falling sfx
		alarm_set(0, 20);
	}
}

// If gravity is >0 meaning that the player is not
// charging for a jump and can move around
if (gravity > 0)
{
	// Use lerp to smoothly move the x towards target_x
	// The third argument is how quick it is, range is 0-1
	// Lower value, smoother but slower
	// Higher value, snaps but faster
	x = lerp(x, target_x, 0.1);

	// x - xprevious gets the movement
	// for the current step on the x axis,
	// by comparing the current and previous
	// x coordinates
	// If it's >4 it means we moved right
	// 4 is just our threshold for moving in
	// a direction, also gives the player more
	// weight
	var _x_movement = x - xprevious;
	if (_x_movement > 4)
	{
		// So we set the scale to normal
		image_xscale = 1;
	}
	// Otherwise
	else
	{
		// If it's <-4 it means we moved left
		if (_x_movement < -4)
		{
			// So we flip the sprite
			image_xscale = -1;
		}
	}
}

// HERE STARTS THE HORIZONTAL SCREEN WRAPPING LOGIC
// If wrapping is false, it means we are not wrapping,
// so we need to test if the player is starting to
// wrap the screen
if (!wrapping)
{
	// x - margin: this is the left border of
	// the instance according to our margin
	// value
	// If it's less than 0 it means it's beyond
	// the left border of the screen, so the player
	// should be teleported to the right side
	// of the screen
	if ((x - wrap_margin) < 0)
	{
		// Add +room_width to x
		x += room_width;
	
		// Add +room_width to target_x
		// to keep them in sync
		target_x += room_width;
	
		// The player is wrapping now so the variable
		// will be true, until it is finished
		wrapping = true;
	}
	// x + margin: right border
	// If this is greater than room width
	// then it's beyond the right border
	// of the screen, so we should be 
	// teleported to the left side of 
	// the screen
	else if ((x + wrap_margin) > room_width)
	{
		// Subtract room_width from x
		x -= room_width;
		
		// Subtract room_width from target_x
		target_x -= room_width;
		
		// Start wrapping
		wrapping = true;
	}
}

// If we are wrapping then we need to check if it
// is finished
// See Draw event to know what is drawn while this is true
if (wrapping)
{
	// If left border is >0, meaning it's inside the room
	if ((x - wrap_margin) > 0)
	{
		// and if right border is <room_width, meaning it's inside the room too
		if ((x + wrap_margin) < room_width)
		{
			// Now that both borders are inside the room, it means we are not 
			// wrapping anymore, we set it to false
			wrapping = false;
		}
	}

	// If the right border of the instance
	// is beyond the left border of the room
	// Which means the player is trying to
	// come back from a "right" wrap
	// Then we need to teleport it back
	// to the right side of the room
	if ((x + wrap_margin) < 0)
	{
		// +room_width to x and target_x
		x += room_width;
		target_x += room_width;
	
		// Disable wrapping
		wrapping = false;
	}

	// If the left border of the instance
	// is beyond the right border of the room
	// Which means the player is trying to
	// come back from a "left" wrap
	// Then we need to teleport it back
	// to the left side of the room
	if ((x - wrap_margin) > room_width)
	{
		// -room_width to x and target_x
		x += -room_width;
		target_x += -room_width;
	
		// Disable wrapping
		wrapping = false;
	}
}