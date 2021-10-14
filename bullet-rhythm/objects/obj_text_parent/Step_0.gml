if (image_alpha <= .5) image_alpha -= .025;
image_alpha -= .005 + random(.02);
if (image_alpha <= 0) instance_destroy();
speed += .02;
direction += random_range(.02, -.02);