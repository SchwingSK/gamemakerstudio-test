// Switch from the transition sprite to the rescued sprite based on the civilian type
switch (sprite_index)
{
	case spr_civilian_transition_0:
		sprite_index = spr_civilian_rescued_0;
	break;

	case spr_civilian_transition_1:
		sprite_index = spr_civilian_rescued_1;
	break;

	case spr_civilian_transition_2:
		sprite_index = spr_civilian_rescued_2;
	break;
}

// Make it jump and enable gravity
vspeed = -18;
gravity = 0.5;

// Change depth to appear above player
depth = obj_player.depth - 10;

// Create gold particles
repeat (irandom_range(5, 7))
{
	instance_create_layer(x, y - 100, "Foam", obj_gold_particle);
}

// Play fall sound (player's fall sound but with a lower pitch)
snd = audio_play_sound(snd_player_fall, 0, 0);

audio_sound_pitch(snd, random_range(0.6, 0.7));

audio_sound_gain(snd, 0.5, 0);