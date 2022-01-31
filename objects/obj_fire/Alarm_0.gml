// Reduce alpha
image_alpha -= 0.12;

// If the alpha is >0
if (image_alpha > 0)
{
	// Run alarm again in next step
	alarm[0] = 1;
}