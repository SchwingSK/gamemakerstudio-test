// Reduce alpha
image_alpha += -0.04;

// If alpha is still >0
if (image_alpha > 0)
{
	// Run alarm again in next step
	alarm_set(0, 1);
}