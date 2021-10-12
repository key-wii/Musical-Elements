function boss_attack_ducky(data) {
	if (string_length(data) < 3) exit;
	//var lane = real(string_char_at(data, 1));
	var atk = real(string_char_at(data, 3));
	//dir_adjust = (lane - 2) * 20;
	switch(atk) {
		case 0: with (obj_e_parent) attack1(); break;
		case 1: with (obj_e_parent) attack2(); break;
		case 2: with (obj_e_parent) attack3(); break;
		case 3: with (obj_e_parent) attack4(); break;
		case 4: with (obj_e_parent) attack5(); break;
		case 5: with (obj_e_parent) attack6(); break;
		case 6: with (obj_e_parent) attack7(); break;
	}
}