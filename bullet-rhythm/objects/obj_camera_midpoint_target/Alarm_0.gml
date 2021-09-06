if (!instance_exists(owner)) {
	with (obj_camera_controller) target = obj_player_move;
	alarm_set(2, 1);
}
if (!instance_exists(obj_player_move) || !instance_exists(owner))
	exit;

//get midpoint between player and boss
/*if (point_distance(obj_player_move.x, obj_player_move.y, owner.x, owner.y) > 300) {
	var ddir = point_direction(obj_player_move.x, obj_player_move.y, owner.x, owner.y);
	var xx = lengthdir_x(256, ddir + 180);
	var yy = lengthdir_y(256, ddir + 180);
} else { xx = 0; yy = 0; }*/
var xx = owner.x; var yy = owner.y;
full = point_distance(obj_player_move.x, obj_player_move.y, xx, yy);
var cam = full / 2;

/*var maxMidpoint = 900;
if (cam > 835 && cam <= maxMidpoint) {
	with (obj_camera_controller) {
		cameraWidth = clamp(cam * 2, global.cameraWidth, 999999);
		cameraHeight = clamp(cam * 2, global.cameraHeight, 999999);
		alarm_set(11, 1);
	}
} else if (cam > maxMidpoint) {
	with (obj_camera_controller) {
		cameraWidth = clamp(maxMidpoint * 2, global.cameraWidth, 999999);
		cameraHeight = clamp(maxMidpoint * 2, global.cameraHeight, 999999);
		alarm_set(11, 1);
	}
} else {
	with (obj_camera_controller) {
		cameraWidth = global.cameraWidth;
		cameraHeight = global.cameraHeight;
		alarm_set(11, 1);
	}
}*/

ddir = point_direction(obj_player_move.x, obj_player_move.y, owner.x, owner.y)
var notMid = 0;
//if (cam > maxMidpoint) notMid = cam - maxMidpoint;
midXlen = lengthdir_x(cam - notMid, ddir);
midYlen = lengthdir_y(cam - notMid, ddir);
x = obj_player_move.x + midXlen;
y = obj_player_move.y + midYlen;

alarm_set(0, 1);