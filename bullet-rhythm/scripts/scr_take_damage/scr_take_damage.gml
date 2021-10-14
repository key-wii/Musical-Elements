function take_damage(knockback, knockbackDir, ele) {
	sprite_index = spriteHurt;
	alarm_set(9, 7);
	room_speed = 50;
	
	var dmg = element_power(ele);
	hp -= dmg;
	if (hp <= 0) die();
	with (obj_controller) alarm_set(2, 1);
	
	knockbacked(ceil(knockback / 3), knockbackDir);
}

function take_damage3(knockback, knockbackDir, ele) {
	sprite_index = spriteHurt;
	alarm_set(9, 7);
	room_speed = 50;
	
	hp -= other.pow;
	if (hp <= 0) die();
	with (obj_controller) alarm_set(2, 2);
	
	knockbacked3(knockback, knockbackDir);
}

function element_power(ele) {
	var dmg = other.pow;
	switch (element) {
		case fire :
			switch (ele) {
				case water :	dmg *= 2; text_weakness(ele, obj_text_weak); break;
				case plant :	dmg /= 2; text_weakness(ele, obj_text_resist); break;
				case dark :		dmg *= 2; text_weakness(ele, obj_text_weak); break;
			}
			break;
		case water :
			switch (ele) {
				case fire :		dmg /= 2; text_weakness(ele, obj_text_resist); break;
				case electric : dmg *= 2; text_weakness(ele, obj_text_weak); break;
				case dark :		dmg *= 2; text_weakness(ele, obj_text_weak); break;
			}
			break;
		case electric :
			switch (ele) {
				case water :	dmg /= 2; text_weakness(ele, obj_text_resist); break;
				case plant :	dmg *= 2; text_weakness(ele, obj_text_weak); break;
				case dark :		dmg *= 2; text_weakness(ele, obj_text_weak); break;
			}
			break;
		case plant :
			switch (ele) {
				case fire :		dmg *= 2; text_weakness(ele, obj_text_weak); break;
				case electric : dmg /= 2; text_weakness(ele, obj_text_resist); break;
				case dark :		dmg *= 2; text_weakness(ele, obj_text_weak); break;
			}
			break;
		case dark :
			switch (ele) {
				case fire :		dmg *= 2; text_weakness(ele, obj_text_weak); break;
				case water :	dmg *= 2; text_weakness(ele, obj_text_weak); break;
				case electric : dmg *= 2; text_weakness(ele, obj_text_weak); break;
				case plant :	dmg *= 2; text_weakness(ele, obj_text_weak); break;
			}
			break;
	}
	return dmg;
}

function text_weakness(ele, text) {
	var ran = irandom_range(-45, 45);
	var textUp = instance_create_layer(x + irandom_range(-10, 10),
		y - lengthdir_y(sprite_height, 90 + ran), "UI", text);
	textUp.direction = 270 + ran;
	textUp.dir = 90 + ran;
	textUp.col1 = other.col;
	
	ran = irandom_range(-45, 45);
	var textDown = instance_create_layer(x + irandom_range(-10, 10),
		y + lengthdir_y(sprite_height, 90 - ran), "UI", text);
	textDown.direction = 90 - ran;
	textDown.dir = 90 + ran;
	textDown.col2 = other.col;
}

function die() {
	audio_stop_sound(global.music);
	playing_music = false;
	instance_destroy();
	exit;
}