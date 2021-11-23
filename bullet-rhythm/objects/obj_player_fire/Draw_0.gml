if (iFrame > 0) iFrame--;
if (iFrame mod 25 >= 13) exit;

//var ddis = point_distance(x, y, mouse_x, mouse_y);
var xx = lengthdir_x(1900, direction);
var yy = lengthdir_y(1900, direction);
if (laser) draw_line_width_color(x, y, x + xx, y + yy, 1, c_red, c_red);
draw_self();

event_inherited();