// By default, each time you run the game,
// random functions return the same results.
// This is done for easier testing, but
// when you actually build an executable
// of your game, seeds are randomized so 
// each play is unique.
// We use this Randomize action to randomize
// the seed even when we're just testing the
// game so we can get unique experiences.
randomize();

// Initialize global highscore variables
global.highscore_rescue = 0;
global.highscore_height = 0;

// This is the ID of the character that is
// selected (0 or 1)
global.char = 0;