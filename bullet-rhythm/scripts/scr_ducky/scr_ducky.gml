function ducky_attack1() {
	ducky_change();
	
	var avg = (sprite_width + sprite_height) / 2 - 5;
	var xx = lengthdir_x(avg / 2 + 5, bubble_dir);
	var yy = lengthdir_y(avg / 2 + 5, bubble_dir);
	boss_fire_bull(obj_bull_ducky, 20 + xx, 10 + yy, bubble_dir, 2, .3, .3, 1, 1, c_blue, water);
	bubble_dir += 60 + bubble_tick;
	bubble_tick++;
	if (bubble_dir >= 360)
		bubble_dir -= 360;
	if (bubble_tick >= 5)
		bubble_tick = 0;
}

function ducky_attack2() {
	ducky_change();
	//from the beak
	var avg = (sprite_width + sprite_height) / 2;
	var xx = lengthdir_x(avg / 2 + 5, direction);
	var yy = lengthdir_y(avg / 2 + 5, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction, 4, 1, .3, 1, 1.5, c_blue, water);
}

function ducky_attack3() {
	ducky_change();
	
	var avg = (sprite_width + sprite_height) / 2 - 5;
	var xx = lengthdir_x(avg / 2 + 5, bubble_dir);
	var yy = lengthdir_y(avg / 2 + 5, bubble_dir);
	boss_fire_bull(obj_bull_ducky, 20 + xx, 10 + yy, bubble_dir, 4, .5, .5, 1.5, 1.5, c_blue, water);
	bubble_dir += 60 + bubble_tick;
	bubble_tick++;
	if (bubble_dir >= 360)
		bubble_dir -= 360;
	if (bubble_tick >= 5)
		bubble_tick = 0;
}

function ducky_attack4() {
	ducky_change();
	
	//from the beak
	var avg = (sprite_width + sprite_height) / 2;
	var xx = lengthdir_x(avg / 2 + 5, direction);
	var yy = lengthdir_y(avg / 2 + 5, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction, 4, 1, .2, 1.5, 2, c_blue, water);
}

function ducky_attack5() {
	ducky_change();
	
	//from the beak
	var avg = (sprite_width + sprite_height) / 2;
	var xx = lengthdir_x(avg / 2 + 5, direction);
	var yy = lengthdir_y(avg / 2 + 5, direction);
	boss_fire_bull(obj_bull_ducky, xx, yy, bubble_dir, 4, .5, .5, 1.5, 1.5, c_blue, water);
	bubble_dir += 60 + bubble_tick;
	bubble_tick++;
	if (bubble_dir >= 360)
		bubble_dir -= 360;
	if (bubble_tick >= 5)
		bubble_tick = 0;
}

function ducky_attack6() {
	ducky_change();
}

function ducky_attack7() {
	ducky_change();
	
	boss_fire_bull(obj_bull_ripple, 0, y_adjust / 4, 0, 0, .01, .01, 1, 1, c_blue, water);
}