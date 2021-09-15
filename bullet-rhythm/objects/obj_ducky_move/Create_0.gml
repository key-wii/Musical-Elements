event_inherited();

alarm_set(0, 1);



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