// Check if menu music has loaded
var loaded = audio_sound_is_playable(snd_menu_music);

// If it loaded, play it
if (loaded)
{
	audio_play_sound(snd_menu_music, 0, 1);
}
// Otherwise, run alarm after 30 steps to check again
else
{
	alarm[0] = 30;
}