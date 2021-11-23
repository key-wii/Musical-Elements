/// @description Squash & Stretch
if (stretch && image_xscale >= 1) {
	if (squash) {
		image_xscale -= .002;
		image_yscale += .001;
		if (image_xscale <= xscale) stretch = false;
	} else {
		image_xscale += .002;
		image_yscale -= .001;
		if (image_xscale >= xscale + .05) squash = true;
	}
} else if (squash) {
	if (stretch) {
		image_yscale -= .002;
		image_xscale += .001;
		if (image_yscale <= yscale) squash = false;
	} else {
		image_yscale += .002;
		image_xscale -= .001;
		if (image_yscale >= yscale + .05) stretch = true;
	}
}

alarm_set(3, 1);