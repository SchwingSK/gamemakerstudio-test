// Only move if there is gravity force
// Gravity force is stopped temporarily
// in obj_window collision event
if (gravity > 0)
{
	// Move target X left
	target_x -= move_speed;
}