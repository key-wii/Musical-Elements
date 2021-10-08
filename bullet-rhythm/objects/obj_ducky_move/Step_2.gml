/// @description Prevent too much knockback
if (point_distance(x, y, xstart, ystart) > 100) {
	var ddir = point_direction(xstart, ystart, x, y);
	x = xstart + lengthdir_x(100, ddir);
	y = ystart + lengthdir_y(100, ddir);
}