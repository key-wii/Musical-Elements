function boss_attack(data) {
	if (string_length(data) < 3) exit;
	var lane = real(string_char_at(data, 1));
	var atk = real(string_char_at(data, 3));
	//dir_adjust = (lane - 2) * 20;
	switch(atk) {
		case 0: with (obj_e) attack1(); break;
		case 1: with (obj_e) attack1(); break;
		case 2: with (obj_e) attack1(); break;
		case 3: with (obj_e) attack1(); break;
		case 4: with (obj_e) attack1(); break;
		default: with (obj_e) attack1(); break;
	}
}