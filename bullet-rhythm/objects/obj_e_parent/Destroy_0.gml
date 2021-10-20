instance_destroy(move);
var corpse = instance_create_layer(x, y, "Floor", defeat);
corpse.col = corpse;
ssSteady(16, 15, true, true);
global.win = true;
with (obj_controller) alarm_set(11, 40);