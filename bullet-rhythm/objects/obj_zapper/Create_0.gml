y = room_height / 2;
hp = 100;
spriteDefault = sprite_index;
spriteHurt = spr_e_hurt;
col = c_blue;
element = water;

image_angle -= 40;
stretch = true;
squash = false;
tiltCount = 0;
up = true;
upCount = 0;
upWait = 0;

move = instance_create_layer(x, y, "Enemy", obj_zapper_move);

alarm_set(0, 120);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

event_inherited();

attack1 = zapper_attack1;
attack2 = zapper_attack2;
attack3 = zapper_attack3;
attack4 = zapper_attack4;
attack5 = zapper_attack5;
attack6 = zapper_attack6;


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