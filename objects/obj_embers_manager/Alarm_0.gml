// Initialize current ember from pool
with (embers[ember_current]) {
	// These actions apply to the current
	// ember in the pool, taken from the
	// embers array using the ember_current
	// index variable
	// Its X position is randomized,
	// Y position is reset and
	// User Event 0 is called, which sets
	// it moving
	// See obj_ember's User Event 0 for
	// more info
	x = irandom_range(other.spawn_area_x, other.spawn_area_x + other.spawn_area_width);
	y = -50;

	event_user(0);
}

// Increase ember_current value so
// the next ember in the pool is
// used
ember_current += 1;

// If we are at the limit
// of the pool, go back to 0
// This way we keep recycling
// the same instances instead
// of creating new ones
if (ember_current >= ember_count)
{
	ember_current = 0;
}

// Run alarm again after 10 steps
// This is the frequency of the embers
alarm[0] = 10;