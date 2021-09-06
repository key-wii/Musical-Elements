jump_move(move);

audio_stop_sound(snd_chargeWave);

if ((mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) && !recoil) {
	instance_change(obj_player_fire, true);
}