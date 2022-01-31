// Use 'add' blend mode: Makes it look brighter
gpu_set_blendmode(bm_add);

// Draw jump effect
draw_self();

// Reset blend mode
gpu_set_blendmode(bm_normal);