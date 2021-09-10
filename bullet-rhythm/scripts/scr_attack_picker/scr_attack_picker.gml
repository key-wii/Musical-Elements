function attack_picker() {
	if (instance_exists(obj_ducky)) attack_handler = boss_attack_ducky;
	else if (instance_exists(obj_zapper)) attack_handler = boss_attack_zapper;
}