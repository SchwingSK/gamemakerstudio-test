// This event changes the window frame when its fire is extinguished
// so there are no light reflections on the window

// If my fire instance exists,
// And the fire is fading away
// And the window frame is 3 (the one used for the fire)
if (instance_exists(my_fire) && my_fire.image_alpha < 1 && image_index == 3)
{
	// Change to frame 4
	image_index = 4;
		
	// Start fade to that frame
	fire_fade_alpha = 1;
		
	// Forget fire reference
	my_fire = noone;
		
	// Start Alarm 0 in my_smoke so it fades away too
	my_smoke.alarm[0] = 1;
}