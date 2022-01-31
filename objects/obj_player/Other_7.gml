// If the jump animation ended, make the player
// jump, and start transition to in-air animation
if (sprite_index == sprite_jump)
{
	sprite_index = sprite_jump_to_air;
	image_index = 0;

	vspeed = -35;

	// Resume gravity
	gravity = 1;

	// Select random jump sound from the 3 that are in the
	// assets
	var shoot_sound = choose(snd_player_jump_1, snd_player_jump_2, snd_player_jump_3);

	// Play that sound
	audio_play_sound(shoot_sound, 0, 0);

	// Create jump effect at 0, bbox_bottom
	// bbox_bottom is the bottom edge of the
	// instance's mask
	instance_create_layer(x, bbox_bottom, "Player", obj_jump_effect);
}
// If the jump to air transition animation
// ended, switch to in-air sprite
else if (sprite_index == sprite_jump_to_air)
{
	sprite_index = sprite_air;
	image_index = 0;
}
// If the air to fall transition animation
// ended, switch to fall sprite
else if (sprite_index == sprite_air_to_fall)
{
	sprite_index = sprite_fall;
	image_index = 0;
}