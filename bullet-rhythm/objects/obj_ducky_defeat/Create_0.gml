/*if (instance_number(obj_e_parent) > 1){
	room_speed = 20;
	with (obj_controller) alarm_set(2, 1);
} else {
	room_speed = 10;
	alarm_set(4, 1);
}*/
room_speed = 20;
with (obj_controller) alarm_set(2, 1);

image_alpha = 1;
layer = layer_get_id("Bull");

startx = x;
starty = y;
shakeCount = 0;
alarm_set(0, 1);

alarm_set(3, 1);

win = false;

obj_camera_controller.target = instance_create_layer(x,y, "UI", obj_camera_midpoint_target);
obj_camera_controller.target.owner = id;
with (obj_camera_controller.target) {
	if (instance_exists(obj_player_parent))
		ddir = point_direction(obj_player_parent.x, obj_player_parent.y, owner.x, owner.y)
	midXlen = lengthdir_x(pointLength, ddir);
	midYlen = lengthdir_y(pointLength, ddir);
	if (instance_exists(obj_player_parent)) {
		x = obj_player_parent.x + midXlen;
		y = obj_player_parent.y + midYlen;
	}
}