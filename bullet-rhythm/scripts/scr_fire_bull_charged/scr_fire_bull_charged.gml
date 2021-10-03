function fire_bull_charged(dddir) {
	point_mouse();
	fire_bull2(direction, 3);
	
	sound_machine(snd_shoot);
	
	recoil = true;
	var ddir = direction + 180;
	x_adjust = lengthdir_x(10, ddir);
	y_adjust = lengthdir_y(10, ddir);
	alarm_set(10, 5);

	instance_change(obj_player, false);
}

function fire_bull2(dddir, ppow) {
	var xx = lengthdir_x(sprite_width / 2 + 5, dddir);
	var yy = lengthdir_y(sprite_width / 2 + 5, dddir);
	var bull = instance_create_layer(x + xx, y + yy, "Bull", obj_bull);
	bull.direction = dddir;
	bull.image_angle = dddir;
	bull.spd = 40;
	bull.dir_face = dir_face;
	bull.image_xscale = 5;
	bull.image_yscale = 5;
	bull.min_size = 2;
	bull.pow = ppow;
	drop_casing(dddir, false);
	drop_casing(dddir + 30, false);
	drop_casing(dddir - 30, false);
}