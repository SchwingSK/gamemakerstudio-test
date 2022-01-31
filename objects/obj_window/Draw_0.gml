// If fire fade alpha is >0
// Then draw the firey frame at that alpha
// This is used to fade away the fire frame for the window after the fire is extinguished
if (fire_fade_alpha > 0)
{
	// Current frame is drawn at inverse alpha of the fading
	// frame so their alphas blend together correctly
	draw_sprite_ext(spr_window, image_index, x, y, 1, 1, 0, c_white, 1 - fire_fade_alpha);

	draw_sprite_ext(spr_window, 3, x, y, 1, 1, 0, c_white, 0.4 + fire_fade_alpha);
	
	// Reduce fire alpha
	fire_fade_alpha -= 0.2;
}
// Otherwise, draw normally
else
{
	draw_self();
}