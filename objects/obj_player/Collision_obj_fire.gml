// If the fire's alpha is <0 which means it's fading away
// then the player should not collide with it
// In that case we exit the event so the rest of the code doesn't run
if (other.image_alpha < 1)
{
	exit;
}

// Let the fire defeat the player
// Create defeated instance
// and remove current instance
instance_create_layer(x, y, "Player", obj_player_defeated);
instance_destroy();

// Play sound for when fire defeats the player
audio_play_sound(snd_player_defeat_fire, 0, 0);
