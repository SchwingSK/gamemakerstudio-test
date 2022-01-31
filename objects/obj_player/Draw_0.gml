// Draw the player itself
draw_self();

// If the player is wrapping, then we need
// to draw the sprite on the other side of
// the screen so we can see the player on
// both sides
if (wrapping)
{
	// If the player is currently on
	// the right side of the screen
	if ((x + wrap_margin) > room_width)
	{
		// Draw the player sprite but with a -room_width
		// offset on the x axis, so it draws on the left
		// side of the screen
		draw_sprite_ext(sprite_index, image_index, x - room_width, y, image_xscale, 1, image_angle, c_white, 1);
	}
	// Otherwise
	else
	{
		// If the player is currently on
		// the left side of the screen
		if ((x - wrap_margin) < 0)
		{
			// Draw the player sprite with a +room_width offset
			// on the x axis, so it draws on the right side of the
			// screen
			draw_sprite_ext(sprite_index, image_index, x + room_width, y, image_xscale, 1, image_angle + 0, c_white, 1);
		}
	}
}