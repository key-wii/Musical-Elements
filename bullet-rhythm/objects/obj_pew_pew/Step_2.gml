var player = obj_player_move;
if (instance_exists(player)) {
	var dir = direction;
	var last_dir = direction;
	direction = point_direction(x, y, player.x, player.y);
	if (last_dir - dir < 0 && dir > last_dir + 10) direction = last_dir + 10;
	else if (dir < last_dir - 10) direction = last_dir - 10;
	direction = direction + dir_adjust;
	image_angle = direction + dir_adjust;
}