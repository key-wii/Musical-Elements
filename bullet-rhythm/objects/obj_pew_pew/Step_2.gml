var player = obj_player_move;
if (instance_exists(player)) {
	var last_dir = direction;
	direction = point_direction(x, y, player.x, player.y);
	if (last_dir - direction < 0 && direction > last_dir + 10) direction = last_dir + 10;
	else if (direction < last_dir - 10) direction = last_dir - 10;
	direction = direction + dir_adjust;
	image_angle = direction;
}