// Use the multiply blend mode so color
// values are multiplied with the background,
// making it look darker and also so it blends
// better
gpu_set_blendmode_ext(bm_dest_color, bm_zero);

draw_self();

// Reset blend mode to normal
gpu_set_blendmode(bm_normal);