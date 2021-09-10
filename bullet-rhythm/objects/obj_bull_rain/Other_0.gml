if (y < -10) {
	y = 0;
	fall = true;
	direction = 270;
	image_angle = direction;
	speed /= 16;
}

if (y > room_height)
	instance_destroy();