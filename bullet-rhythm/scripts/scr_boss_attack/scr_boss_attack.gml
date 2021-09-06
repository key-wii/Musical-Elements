function boss_attack1(data) {
	if (string_length(data) < 3) exit;
	var lane = real(string_char_at(data, 1));
	var atk = real(string_char_at(data, 3));
	dir_adjust = (lane - 2) * 20;
	switch(atk) {
		case 0: boss_fire_bull(); break;
		case 1: boss_fire_bull(); break;
		case 2: boss_fire_bull(); break;
		case 3: boss_fire_bull(); break;
		case 4: boss_fire_bull(); break;
		default: boss_fire_bull(); break;
	}
}