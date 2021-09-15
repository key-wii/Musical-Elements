var player = obj_player_move;
if (instance_exists(player)) {
	var ddir = point_direction(player.x, player.y, x, y);
	if (left && (ddir >= 90 && ddir < 270)) {
		left = false;
		image_angle += 80;
		image_index = 1;
	}
	else if (!left && (ddir >= 270 || ddir < 90)) {
		left = true;
		image_angle -= 80;
		image_index = 0;
	}
}
if (!left) {
	direction = image_angle - 115;
	direction += 50;
} else {
	direction = image_angle - 115;
}