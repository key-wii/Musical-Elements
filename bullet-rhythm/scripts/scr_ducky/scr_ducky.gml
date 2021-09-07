function ducky_attack1() {
	boss_fire_bull(obj_bull_ducky, 20, 10, bubble_dir, 2, .1, .1, 1, 1, c_blue, water);
	bubble_dir += 60 + bubble_tick;
	bubble_tick++;
	if (bubble_dir >= 360)
		bubble_dir -= 360;
	if (bubble_tick >= 5)
		bubble_tick = 0;
}

function ducky_attack2() {
	//from the beak
	var avg = (sprite_width + sprite_height) / 2;
	var xx = lengthdir_x(avg / 2 + 5, direction);
	var yy = lengthdir_y(avg / 2 + 5, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction, 4, .1, .15, 1, 1.5, c_blue, water);
}