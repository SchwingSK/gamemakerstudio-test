// This condition checks if the top boundary of the instance
// is below the room
if (bbox_top > room_height)
{
	// Subtract room_height from y so the instance moves back 
	// above the room to enter again and keep being recycled
	y -= room_height;

	// Also subtract its sprite_height
	// from y so it doesn't appear
	// in the room first but above it
	y -= sprite_height;

	// If the instance needs to get
	// a new random x position on
	// respawning, get a random x
	// and apply it
	if (random_x_on_respawn)
	{
		x = irandom_range(0, room_width);
	}
}