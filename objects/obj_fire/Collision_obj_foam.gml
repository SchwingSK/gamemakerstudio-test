// If the alpha is <1 meaning that the fire is fading away
// then we don't want to run this event
// In this case this event will be exited
if (image_alpha < 1)
{
	exit;
}

// Foam destroys fire so this event plays a random
// fire extinguish sound, creates fire out instance
// and starts an alarm then destroys the foam (which is
// the "other" instance)
var snd = choose(snd_extinguish_01, snd_extinguish_02, snd_extinguish_03);

audio_play_sound(snd, 0, 0);

instance_create_layer(x, y, layer, obj_fire_out);

// Start alarm that makes this instance fade away
alarm[0] = 1;

// Set alarm 0 in other instance (foam) so it is destroyed later
with (other) {
	alarm[0] = 1;
}