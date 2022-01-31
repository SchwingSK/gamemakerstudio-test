// Get an oscillating direction
// value using the sin() function
// Uses current_time which
// stores the time since the
// game was started
osc_direction = sin((current_time / 200) * osc_speed);

// Multiply with oscillation amount
osc_direction = osc_direction * osc_amount;

// Apply instance direction
// by adding together the
// base direction and osc
// direction
direction = base_direction + osc_direction;

// Set image angle equal to
// direction so it looks in
// that direction
image_angle = direction;

// Reduce alpha by fade rate
image_alpha -= fade_rate;