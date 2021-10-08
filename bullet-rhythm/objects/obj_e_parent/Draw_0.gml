draw_self();

// draw_circular_bar(x, y, value, max, colour, radius, transparency, width)
var hp_draw = hp;
if (hp_draw < hp_max) {
	if (hp_draw >= hp_max - 3)
		hp_draw -= .7;
	else if (hp_draw > hp_max / 2)
		hp_draw -= .5;
	else if (hp_draw <= 2)
		hp_draw -= .5;
	else 
		hp_draw -= .3;
}
var r_diff = sprite_width / hp_r;
draw_circular_bar(x, y, hp_draw, hp_max, hp_col, hp_r + r_diff, .7, 6);

/*draw_set_halign(fa_middle);
draw_set_font(fnt_placeholder);
if (hp == maxHp) var col = c_lime;
else if (hp > maxHp / 2) var col = c_teal;
else if (hp > 10) var col = c_silver;
else					 var col = c_orange;
draw_text_colour_outline(x, y - 76, string(hp), col, col, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
draw_text_colour_outline(x, y + 40, string(hp), col, col, 1, c_black, c_black, 1, 2, 10, 1, 1, 0);
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);