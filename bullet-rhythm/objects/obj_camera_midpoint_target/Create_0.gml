ddir = 270;
pointLength = 5;
midXlen = lengthdir_x(pointLength, ddir);
midYlen = lengthdir_y(pointLength, ddir);
if (instance_exists(obj_player_move)) {
	x = obj_player_move.x + midXlen;
	y = obj_player_move.y + midYlen;
}
alarm_set(1, 1);