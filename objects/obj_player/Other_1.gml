// If the player is on the bottom boundary
// of the room, defeat it
if (y >= room_height)
{
	// Create defeated instance
	var defeated = instance_create_layer(x, y, "Player", obj_player_defeated);

	// Set the frame of the defeated player instance
	// to 1 because we lost by falling (its default
	// frame is the fire one)
	defeated.image_index = 1;

	// Play sound for when the player loses by touching
	// the bottom of the room
	audio_play_sound(snd_player_defeat_bottom, 0, 0);
	
	// Destroy the player
	instance_destroy();
}