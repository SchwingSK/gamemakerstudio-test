// If civilian is not rescued yet
if (rescued == false)
{
	// Play rescue sound
	audio_play_sound(snd_civilian_rescue, 0, 0);

	// Increase rescue score
	global.score_rescue += 1;

	// Set rescued to true
	rescued = true;

	// Change sprite to rescue-transition sprite depending on current sprite
	switch(sprite_index)
	{
		case spr_civilian_0:
			sprite_index = spr_civilian_transition_0;
		break;
	
		case spr_civilian_1:
			sprite_index = spr_civilian_transition_1;
		break;
	
		case spr_civilian_2:
			sprite_index = spr_civilian_transition_2;
		break;
	}

	// Set alarm to end transition and make civilian jump
	alarm[0] = 4;
}