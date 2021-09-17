image_alpha = .05;

var yy = room_height / 2;
if (y > yy) {
	//global.edge_bottom_x = x;
	global.edge_bottom_y = y - sprite_height / 4;
} else {
	//global.edge_top_x = x;
	global.edge_top_y = y/* + sprite_height / 4*/;
}