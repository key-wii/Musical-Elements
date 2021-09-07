if (!instance_exists(obj_player_move) || !instance_exists(owner))
	exit;
if (!instance_exists(owner)) with (obj_camera_controller) {
	target = obj_player_move;
	alarm_set(2, 1);
	exit;
}

full = point_distance(obj_player_move.x, obj_player_move.y, owner.x, owner.y);
ddir = point_direction(obj_player_move.x, obj_player_move.y, owner.x, owner.y)
if (pointLength <= full / 2) {
	pointLength += 8;
	midXlen = lengthdir_x(pointLength, ddir);
	midYlen = lengthdir_y(pointLength, ddir);
	x = obj_player_move.x + midXlen;
	y = obj_player_move.y + midYlen;
	alarm_set(1, 1);
} else alarm_set(0, 1);