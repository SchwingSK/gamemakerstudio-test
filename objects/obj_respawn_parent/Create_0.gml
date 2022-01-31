// Use this object as a parent for those objects that need
// to move with the view and respawn when they go below the room.
// Since this is a child of obj_move_parent this will
// cause these objects to move down with the view.

// This variable stores whether the instance should
// get a new, random x position after it is respawned.
// By default this behaviour is off, meaning it respawns
// at the same x position.
random_x_on_respawn = false;