// Use the multiply blend mode so color
// values are multiplied with the background,
// making it look darker and also so it blends
// better
gpu_set_blendmode_ext(bm_dest_color, bm_zero);

// Draw the gradient sprite
// Set its x scale to room width
// so it covers the whole room
// (since the original width
// of the sprite is 1 pixel)
// Since we're using the multiply
// blend mode, this gradient will
// blend with the background
// instead of overlapping it
draw_sprite_ext(spr_gradient, 0, 0, room_height, room_width, 1, 0, c_white, 1);

// Reset blend mode to normal
gpu_set_blendmode(bm_normal);