point_mouse();
image_angle += charge * 12;

if (charge == 0) {
	image_xscale = 1;
	image_yscale = 1;
}

if (hp > 0) exit;
death();