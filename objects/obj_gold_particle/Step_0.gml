// Animate properties
image_alpha -= fade_rate;

// Scale is based on alpha
image_xscale = scale * image_alpha;
image_yscale = scale * image_alpha;

// Add oscillation to direction
direction += sin(current_time / 100) * osc_value;

// Destroy if invisible
if (image_alpha <= 0)
{
	instance_destroy();
}