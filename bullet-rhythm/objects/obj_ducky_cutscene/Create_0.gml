image_angle = 320;
stretch = true;
squash = false;
tiltCount = 0;
up = true;
upCount = 0;
upWait = 0;

move = instance_create_layer(x, y, "Enemy", obj_ducky_move);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

left = true;

image_speed = 0;
x_adjust = 0;
y_adjust = 0;
recoil = false;
dir_adjust = 0;

boss = obj_ducky;