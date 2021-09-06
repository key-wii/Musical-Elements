point_mouse();
fire_bull(direction, true);
	
sound_machine(snd_shoot);
bulls++;

recoil = true;
var ddir = direction + 180;
x_adjust = lengthdir_x(20, ddir);
y_adjust = lengthdir_y(20, ddir);
with (move) { 
	var xx = lengthdir_x(40, ddir);
	var yy = lengthdir_y(40, ddir);
	if (!place_meeting(x + xx, y, obj_wall)) x += xx;
	if (!place_meeting(x, y + yy, obj_wall)) y += yy;
}
alarm_set(10, 5);

instance_change(obj_player, false);