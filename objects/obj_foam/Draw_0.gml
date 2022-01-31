// Use 'add' blend mode: makes it look brighter
gpu_set_blendmode(bm_add);

// Draw foam using that blend mode
draw_self();

// Reset blend mode
gpu_set_blendmode(bm_normal);