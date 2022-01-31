// Now decrease scale
image_xscale -= 0.04;
image_yscale -= 0.04;

// Change frame to 0
image_index = 0;

// If instance scale is normal now
if (image_xscale <= 1)
{
	// Make sure it's exactly 1
	image_xscale = 1;
	image_yscale = 1;
}
// Otherwise
else
{
	// Run same alarm again
	alarm[2] = 1;
}