// If the player is falling down, switch to the jump animation
// Once that animation ends, the player jumps (see the Animation End event)
if (vspeed > 0)
{
	sprite_index = sprite_jump;
	image_index = 0;

	// Stop player until Animation End
	vspeed = 0;

	// Disable gravity so the player stays stopped
	gravity = 0;

	// Position player relative to window
	// so no matter where the collision happens
	// vertically it's always in the correct
	// position for the jump animation
	y = other.y - (bbox_bottom - y);
}