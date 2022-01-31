// Make the player jump and enable gravity
vspeed = -35;
gravity = 0.8;

// Initialize the player's rescue and height scores as global variables
global.score_rescue = 0;
global.score_height = 0;

// Horizontal movement speed
// Used by events for Left, Right, A & D keys
// Left & A are the same, and
// Right & D are the same
move_speed = 12;

// Target position on x axis where this instance needs to move
// Used to smoothen horizontal movement
target_x = x;

// Whether the player is currently wrapping the screen horizontally
wrapping = false;

// How much margin the player has (horizontally, from the center) to wrap on the sides of the screen
wrap_margin = 70;

// Initialize sprites when using the first character [0]
if (global.char == 0)
{
	sprite_air = spr_player_1_air;
	sprite_defeated = spr_player_1_defeated;
	sprite_fall = spr_player_1_fall;
	sprite_jump = spr_player_1_jump;
	sprite_air_to_fall = spr_player_1_air_to_fall;
	sprite_jump_to_air = spr_player_1_jump_to_air;
}
// Initialize sprites when using the second character [1]
else if (global.char == 1)
{
	sprite_air = spr_player_2_air;
	sprite_defeated = spr_player_2_defeated;
	sprite_fall = spr_player_2_fall;
	sprite_jump = spr_player_2_jump;
	sprite_air_to_fall = spr_player_2_air_to_fall;
	sprite_jump_to_air = spr_player_2_jump_to_air;
}

// Start with the "in-air" sprite of the selected character
sprite_index = sprite_air;

// Touch input for the X axis (relative variable, default 0)
touch_input_x = 0;