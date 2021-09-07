function zapper_attack1() {
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction, 6, .1, .1, .7, .5, c_blue, water);
}