function zapper_attack1() {
	var blue = make_color_rgb(86, 246, 226);
	direction += 60;
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction, 6, .1, .1, .7, .5, blue, electric);
}

function zapper_attack2() {
	direction += 30;
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 10, 6, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 10, 6, .1, .1, .7, .5, c_yellow, electric);
}

function zapper_attack3() {
	var blue = make_color_rgb(86, 246, 226);
	direction -= 150;
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 5, 4, .1, .1, .7, .5, blue, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 5, 4, .1, .1, .7, .5, blue, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 10, 4, .1, .1, .7, .5, blue, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 10, 4, .1, .1, .7, .5, blue, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 15, 4, .1, .1, .7, .5, blue, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 15, 4, .1, .1, .7, .5, blue, electric);
}

function zapper_attack4() {
	direction -= 90;
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction, 3, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 20, 3, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 20, 3, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 40, 3, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 40, 3, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 60, 3, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 60, 3, .1, .1, .7, .5, c_yellow, electric);
}

function zapper_attack5() {
	direction += 120;
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 10, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 10, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 20, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 20, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 40, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 40, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 60, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 60, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction + 80, 2, .1, .1, .7, .5, c_yellow, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - 80, 2, .1, .1, .7, .5, c_yellow, electric);
}

function zapper_attack6() {
	var blue = make_color_rgb(86, 246, 226);
	direction += 180;
	var xx = lengthdir_x(sprite_width / 2, direction);
	var yy = lengthdir_y(sprite_width / 2, direction);
	boss_fire_bull(obj_bull_e, xx, yy, direction + .1, 6, .1, .1, .7, .5, blue, electric);
	boss_fire_bull(obj_bull_e, xx, yy, direction - .1, 6, .1, .1, .7, .5, blue, electric);
}