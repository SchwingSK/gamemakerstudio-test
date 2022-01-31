// This object is placed in the room
// in the TileVariations layer so it
// can show up as different kinds of
// background tiles.
// It's a child of obj_respawn_parent so
// it moves down with the view and 
// respawns after it goes below the room.
event_inherited();

// Assign a random frame to this instance,
// from the ones available in the sprite.
// image_number is the number of frames in the sprite.
image_index = irandom_range(0, image_number - 1);