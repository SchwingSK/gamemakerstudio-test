// This object manages falling ember instances
// It uses a 'pooling' system where it has a fixed amount
// of instances pre-created and they are recycled

// ember_count is the number of ember instances in the
// pool
// ember_current is used in Alarm 0 to tell which ember
// instance is being used from the pool
ember_count = 100;
ember_current = 0;

// The ember spawn area
spawn_area_width = room_width * 2;
spawn_area_x = room_width - spawn_area_width;

// Temporary variable used in the repeat loop below
var ember_number = 0;

// This creates the ember instances
// for the pool by repeating the same
// code for each ember (so it's based on ember_count)
repeat (ember_count)
{
	// Spawn ember instances at a random x, at -50 y above the room
	// Store ID in an array called embers
	var spawn_x = irandom_range(spawn_area_x, spawn_area_x + spawn_area_width);

	embers[ember_number] = instance_create_layer(spawn_x, -50, layer, obj_ember);

	ember_number += 1;
}

// Start looping alarm for spawning embers
alarm[0] = 10;