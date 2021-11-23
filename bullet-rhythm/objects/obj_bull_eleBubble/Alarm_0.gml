/// @description Grows/Shrinks slower than normal
if (image_xscale < xscale) {
	image_xscale *= 1.05;
	if (image_xscale > xscale) image_xscale = xscale;
} else
if (image_xscale > xscale) {
	image_xscale /= 1.05;
	if (image_xscale < xscale) image_xscale = xscale;
}
if (image_yscale < yscale) {
	image_yscale *= 1.05;
	if (image_yscale > yscale) image_yscale = yscale;
} else
if (image_yscale > yscale) {
	image_yscale /= 1.05;
	if (image_yscale < yscale) image_yscale = yscale;
}
if (image_xscale != xscale || image_yscale != yscale) alarm_set(0, 1);
else lethal = true;