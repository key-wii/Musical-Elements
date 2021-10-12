y = room_height / 2;
hp_max = 25;
hp = hp_max;
spriteDefault = sprite_index;
spriteHurt = spr_e_hurt;
col = c_blue;
element = water;

defeat = obj_ducky_defeat;
image_angle -= 40;
stretch = true;
squash = false;
tiltCount = 0;
up = true;
upCount = 0;
upWait = 0;

move = instance_create_layer(x, y, "Enemy", obj_ducky_move);

alarm_set(0, 120);

var player = obj_player_move;
if (instance_exists(player)) direction = point_direction(x, y, player.x, player.y);

msc = msc_ducky;
chart = "ducky.chart";
bpm = 100;

event_inherited();

bubble_dir = 205;
bubble_tick = 0;
attack1 = ducky_attack1;
attack2 = ducky_attack2;
attack3 = ducky_attack3;
attack4 = ducky_attack4;
attack5 = ducky_attack5;
attack6 = ducky_attack6;
attack7 = ducky_attack7;

left = true;

sprite_wait = false;