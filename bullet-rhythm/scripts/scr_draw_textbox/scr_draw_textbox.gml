function draw_textbox(box_left, box_top, box_w, box_h) {
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_menu_f);
	draw_set_color(obj_controller.UIcolor);

	draw_9slice(box_left, box_top, box_w, box_h, spr_box, 0);

	var tLen = string_length(fullText);
	if (charCount < tLen + 8) {
		if (textSound mod 7 == 0 && charCount < tLen) sound_machine(snd_text);
		textSound += 1;
		charCount += .5;
		alarm_set(1, 30);
	}
	textPart = string_copy(fullText, 1, ceil(charCount));
	textHeight = string_height(textPart) + 2;
	var lines = string_count("\n", textPart) + 1;
	textHeight /= lines;
	var xxx = w / 2;
	var yyy = h - box_h - 12 + (lines * 7);
	draw_text(xxx, yyy + textHeight, textPart);
}