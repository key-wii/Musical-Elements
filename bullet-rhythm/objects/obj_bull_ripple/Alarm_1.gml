/// @description fade out
if (image_alpha < 0.3) {
	image_alpha -= .02;
	lethal = false;
} else image_alpha -= .01;
if (image_alpha > 0) alarm_set(1, 2);
else instance_destroy();