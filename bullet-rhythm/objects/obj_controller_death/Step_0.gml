if ((mouse_check_button(mb_left) || mouse_check_button(mb_right))) {
	if (heldClick < 10)
		heldClick++;
}
if ((mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right))) {
	if (heldClick < 10)
		room_goto(global.currentRoom);
	heldClick = 0;
}