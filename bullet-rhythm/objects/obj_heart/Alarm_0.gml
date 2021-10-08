y -= spd;
spd += 1;
if (image_xscale > 1) {
	image_xscale -= 1;
	image_yscale -= 1;
}
image_alpha -= .02;
if (image_alpha <= 0) instance_destroy();
alarm_set(0, 1);