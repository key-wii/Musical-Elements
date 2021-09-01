image_xscale /= 1.1;
image_yscale /= 1.1;
if (image_xscale <= min_size) {
	image_xscale = min_size;
	image_yscale = min_size;
	exit;
}
alarm_set(0, 1);