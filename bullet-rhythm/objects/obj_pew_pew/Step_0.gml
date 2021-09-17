jump_move(move);

if (stretch && image_xscale >= 1) {
	if (squash) {
		image_xscale -= .005;
		image_yscale += .004;
		if (image_xscale <= 1) stretch = false;
	} else {
		image_xscale += .005;
		image_yscale -= .004;
		if (image_xscale >= 1.15) squash = true;
	}
} else if (squash) {
	if (stretch) {
		image_yscale -= .005;
		image_xscale += .004;
		if (image_yscale <= 1) squash = false;
	} else {
		image_yscale += .005;
		image_xscale -= .004;
		if (image_yscale >= 1.15) stretch = true;
	}
}

/*tiltCount++;
if (tiltCount < 40) {
	image_angle += .75;
} else if (tiltCount >= 45 && tiltCount < 95) {
	image_angle -= .75;
}  else if (tiltCount >= 95) {
	tiltCount = 0;
}*/

if (upWait == 0) {
	if (up) {
		y_adjust -= .5;
		image_angle -= .35;
		upCount++;
		if (upCount >= 140) {
			up = false;
			upWait = 5;
		}
	} else {
		y_adjust += .5;
		image_angle += .35;
		upCount--;
		if (upCount <= 0) {
			up = true;
			upWait = 5;
		}
	}
} else {
	upWait--;
}