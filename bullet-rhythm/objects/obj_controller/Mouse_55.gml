if (instance_exists(obj_controller_cutscene) && room != Room_pew) {
	instance_destroy(obj_textbox);
	instance_destroy(obj_controller_cutscene);
}
//else game_restart();