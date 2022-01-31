// When this instance is below the room, create the game over sequence
// so the player can choose to replay or go back to menu.
if (y > room_height + 50)
{
	layer_sequence_create("HUD", 0, 0, seq_game_over);

	// Also destroy this instance to make sure this code doesn't run again.
	instance_destroy();
}