// Is the current height score greater than the height highscore?
if (global.score_height > global.highscore_height)
{
	// Update the height highscore to be equal to the height score
	global.highscore_height = global.score_height;

	// Play highscore sound
	audio_play_sound(snd_highscore, 0, 0);

	// Create gold particles
	repeat (30)
	{
		instance_create_layer(irandom_range(bbox_left, bbox_right), y, "TopLayer", obj_gold_particle);
	}

	// Run Alarm 1 after 1 step, to start animation
	alarm[1] = 1;
}