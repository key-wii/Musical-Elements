if (element_stolen_by == -1) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, col, image_alpha);
else instance_destroy();
if (image_xscale < .1) draw_circle_color(x, y, sprite_width * image_xscale * 5, col, col, false);