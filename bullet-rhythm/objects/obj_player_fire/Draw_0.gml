if (iFrame > 0) iFrame--;
if (iFrame mod 25 >= 13) exit;

if (laser) draw_line_width_color(x, y, x + lengthdir_x(1500, direction), y + lengthdir_y(1500, direction), 1, c_white, c_white);
draw_self();

event_inherited();