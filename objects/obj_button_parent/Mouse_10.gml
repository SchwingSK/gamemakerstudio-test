// Exit if on a browser
if (os_browser != browser_not_a_browser)
{
	exit;
}

// Hovering over mouse changes frame
image_index = 1;

// Play hover sfx
audio_play_sound(snd_button_hover, 0, 0);