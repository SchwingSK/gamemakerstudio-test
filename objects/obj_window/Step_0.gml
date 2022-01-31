// If the window is below the room, we are going to move it back above the room
// so it can show up again
// In this way we recycle windows instead of spawning new ones
if (y > room_height + 360)
{
	// Random x value in room, with 250 pixel margin
	var new_x = irandom_range(250, room_width - 250);

	// Go to that position
	x = new_x;
	y = -200;

	with (my_smoke) {
		// Move the my_smoke instance
		// back on the window
		x = other.x;
		y = other.y + other.smoke_y_offset;
	
		// Change its alpha
		// It will be random meaning it's visible now
		// unless it's changed in the default case at the bottom
		image_alpha = random_range(0.4, 1);
	}

	// Roll a dice for what happens to this window
	// Value is between 0 and 3 (inclusive)
	// 0 - Civilian on this window
	// 1 - Fire on this window
	// 2 & 3 - Nothing
	var chance = irandom_range(0, 3);

	// Change frame to closed window by default
	// Either 0 or 1
	image_index = choose(0, 1);

	// Do something based on the random chance value we got
	switch (chance)
	{
		// Create civilian and change window frame to 2 which is used for civilians
		case 0:
			instance_create_layer(x, y, "Spawns", obj_fire_civilian); // Just a visual fire in the background
			
			instance_create_layer(x, y + 10, "Spawns", obj_civilian); // The actual civilian
		
			image_index = 2;
		break;
	
		// Create fire and change frame to 3 which is used for fire
		case 1:
			my_fire = instance_create_layer(x, y, "Spawns", obj_fire);
		
			image_index = 3;
		break;
	
		// If neither of the other cases ran
		default:
			// Set my_smoke's alpha to 0 so it disappears as the
			// window is now closed
			my_smoke.image_alpha = 0;
		break;
	}
}