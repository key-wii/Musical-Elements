if ((mouse_check_button(mb_left) || mouse_check_button(mb_right))) {
	clickHeld++;
}
if ((mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right))) {
	if (clickHeld < 30 && clickHeld > 2) {
		if (finished) {
			alarm_set(1, 5);
		} else {
			charCount = 9999;
			finished = true;
		}
	}
	clickHeld = 0;
}