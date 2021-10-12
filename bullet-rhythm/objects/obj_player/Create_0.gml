sprite_default = sprite_index;
spriteHurt = spr_hurt;
hp = 3;
heart_rot = 360 / hp;
hp_rot = irandom(359);
iFrames = 120;
iFrame = 0;
regenTime = 300 + iFrames;

charge = 0;
chargeTime = 150;

y = room_height / 2;
x_adjust = 0;
y_adjust = 0;

dir_face = -1;
recoil = false;

//if (!instance_exists(obj_player_move))
move = instance_create_layer(x, y, "Player", obj_player_move);
move.owner = id;

//if (!instance_exists(obj_partner))
/*partner = instance_create_layer(x, y, "Player", obj_partner);
partner.hp = hp;
partner.owner = id;
partner.radius = partner.sprite_width + sprite_width;*/
gun = instance_create_layer(x, y, "Player", obj_arrow);
gun.owner = id;
gun.radius = sprite_width;
gun2dir = 0;

laser = false;