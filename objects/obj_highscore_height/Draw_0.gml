// Draw instance itself
draw_self();

// Change font and alignment
draw_set_font(fnt_score);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw height highscore
// round() is used because the height highscore
// is a decimal value, but we need to display an integer,
// which is why we round it
// string() is used to convert it from a number into a text string
draw_text(x, y, "Best Height " + string(round(global.highscore_height)));

// Reset alignment
draw_set_halign(fa_left);
draw_set_valign(fa_top);