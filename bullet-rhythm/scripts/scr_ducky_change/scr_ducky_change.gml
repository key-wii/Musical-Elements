function ducky_change() {
	if (sprite_wait) exit;
		 if (sprite_index == spr_ducky)  sprite_index = spr_ducky2;
	else if (sprite_index == spr_ducky2) sprite_index = spr_ducky3;
	else if (sprite_index == spr_ducky3) sprite_index = spr_ducky;
	/*y_adjust += upCount / 2;
	stretch = true;
	squash = false;
	tiltCount = 0;
	up = true;
	upCount = 0;
	upWait = 0;
	image_xscale = 1;
	image_yscale = 1;*/
	sprite_wait = true;
}