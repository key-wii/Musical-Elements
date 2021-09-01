function fire_bull(dddir, small) {
	var xx = lengthdir_x(sprite_width / 2 + 5, dddir);
	var yy = lengthdir_y(sprite_width / 2 + 5, dddir);
	var bull = instance_create_layer(x + xx, y + yy, "Bull", obj_bull);
	bull.direction = dddir;
	bull.image_angle = dddir;
	bull.spd = 20;
	bull.dir_face = dir_face;
	drop_casing(dddir, false);
}

function drop_casing(dddir, clip) {
	dddir += 180;
	dddir += irandom_range(-12, 12);
	var xx = lengthdir_x(sprite_width / 2 + 0, dddir);
	var yy = lengthdir_y(sprite_width / 2 + 0, dddir);
	var casing = instance_create_layer(x + xx, y + yy, "Floor", obj_brass);
	casing.direction = dddir;
	with (casing) {
		image_angle = irandom(359);
		speed = 10 + irandom(120);
		if (irandom(4) == 0) speed += 30;
		if (clip) {
			sprite_index = spr_clip;
			exit;
		}
		image_xscale = .7;
		image_yscale = .7;
	}
}