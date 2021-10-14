draw_set_font(fnt_menu_f);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed_color(x, y, text, 1, 1,
	dir - 90, col1, col1, col2, col2, image_alpha);