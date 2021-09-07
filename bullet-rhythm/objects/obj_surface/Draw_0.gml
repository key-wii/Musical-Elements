if (surface_exists(damagemask)) {
	draw_set_alpha(.075);
    draw_surface(damagemask, 0, 0);
	draw_set_alpha(1);
} else {
	surface_free(damagemask);
	damagemask = surface_create(room_width, room_height);
}