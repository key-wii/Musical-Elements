image_alpha = .05;

var xx = room_width / 2;
if (x > xx) {
	global.edge_right_x = x - sprite_width / 4;
	//global.edge_right_y = y;
} else {
	global.edge_left_x = x + sprite_width / 4;
	//global.edge_left_y = y;
}