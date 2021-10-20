function take_damage_player(knockback, knockbackDir) {
	if (global.nextRoom || global.win) exit;
	sound_machine(snd_hurt);
	room_speed = 15;
	with (obj_controller) alarm_set(2, 2);
	sprite_index = spriteHurt;
	alarm_set(9, 7);
	spr_hitstun();
	charge = 0;
	
	hp -= other.pow;
	iFrame = iFrames;
	alarm_set(0, regenTime);
	/*if (hp <= 0) {
		sound_machine(snd_dead);
		instance_destroy();
	}*/
	
	knockbacked_player(knockback * 2, knockbackDir);
}