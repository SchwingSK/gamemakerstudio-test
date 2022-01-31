// Draw the button sprite itself
draw_self();

// Change font and alignment
draw_set_font(fnt_button);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw text on button
draw_text(x, y - 5, text);

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);