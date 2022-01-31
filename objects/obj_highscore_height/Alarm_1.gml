// Increase scale
image_xscale += 0.04;
image_yscale += 0.04;

// Change frame to 1
image_index = 1;

// If instance is big enough now
if (image_xscale >= 1.2)
{
	// Run alarm 2
	alarm[2] = 1;
}
// Otherwise
else
{
	// Run same alarm again
	alarm[1] = 1;
}