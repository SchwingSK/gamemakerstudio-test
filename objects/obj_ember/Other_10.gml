// Random base direction
base_direction = irandom_range(-50, -54);

// Random xscale
image_xscale = random_range(0.3, 1);

// 1/3rd chance of getting a larger xscale
if (choose(0, 0, 1))
{
	// See the range is larger here
	image_xscale = random_range(0.6, 4);
}

// If xscale is >1.5 then the ember should get thinner
// the longer it gets
if (image_xscale > 1)
{
	image_yscale = 1 / image_xscale;

	// Different sprite for longer embers
	sprite_index = spr_ember_long;
}
else
{
	// Match yscale to xscale
	image_yscale = image_xscale;

	// Different sprite for shorter embers
	sprite_index = spr_ember_short;
	image_index = 0;
}

// Random speed
// Higher for longer embers
speed = random_range(5 * image_xscale, 8 * image_xscale);

// Random alpha
image_alpha = random_range(0.6, 2);

// Random oscillation amount
// This can be higher for smaller embers
osc_amount = irandom_range(4, 8 / image_xscale);

// Set oscillation speed
osc_speed = 1;

// Random fade rate
fade_rate = random_range(0.001, 0.01);