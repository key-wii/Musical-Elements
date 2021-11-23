global.cutscene = false;

switch (room) {
	case Room_duck: with(obj_ducky_cutscene) instance_change(boss, true);
	//case Room_pew: with(obj_pew_pew_cutscene) instance_change(boss, true);
	case Room_pew: with(obj_pew_pew_cutscene) game_end();
}