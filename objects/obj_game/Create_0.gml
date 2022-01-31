// Stop the menu music
audio_stop_sound(snd_menu_music);

// Play the game music
audio_play_sound(snd_game_music, 0, 1);

// Create transition "end" sequence which ends
// the transition, because the game has started
layer_sequence_create("Transition", 0, 0, seq_transition_end);