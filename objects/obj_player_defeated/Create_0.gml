// This instance is created when the player loses, at which moment
// the player instance itself is destroyed.
// This event stops the game music and makes this instance jump
// and fall.
audio_stop_sound(snd_game_music);

// Take the player's defeated sprite and use it
sprite_index = obj_player.sprite_defeated;

// Jump up and enable gravity
vspeed = -25;
gravity = 1;