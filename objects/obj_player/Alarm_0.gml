// If the player is falling
if (sprite_index == sprite_fall)
{
	// and there is no window below the player as far as 600 pixels
	var window_found = collision_rectangle(bbox_left, y, bbox_right, y + 600, obj_window, true, 1);
	if (!window_found)
	{
		// Then play the falling sound
		audio_play_sound(snd_player_fall, 0, 0);
	}
}