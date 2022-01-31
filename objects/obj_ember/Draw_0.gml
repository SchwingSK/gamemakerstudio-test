// Use 'add' blend mode
gpu_set_blendmode(bm_add);

draw_self();

// Reset blend mode
gpu_set_blendmode(bm_normal);