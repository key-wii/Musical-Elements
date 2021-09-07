function boss_fire_bull(bul, xx, yy, ddir, spd, xs, ys, xs_end, ys_end, ccol, ele) {
	var bull = instance_create_layer(x + xx, y + yy, "Bull_e", bul);
	with (bull) {
		direction = ddir;
		image_angle = ddir;
		speed = spd;
		image_xscale = xs;
		image_yscale = ys;
		xscale = xs_end;
		yscale = ys_end;
		col = ccol;
		element = ele;
	}
}