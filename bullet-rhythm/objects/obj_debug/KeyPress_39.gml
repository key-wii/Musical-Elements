if (global.debug && room != Room_duck) {
	audio_stop_sound(global.music);
	room_goto_previous();
}