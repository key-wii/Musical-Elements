fire_bull(start_dir, true);
	
sound_machine(snd_shoot);
bulls++;

var ddir = start_dir + 180;
x_adjust = lengthdir_x(5, ddir);
y_adjust = lengthdir_y(5, ddir);
with (move) { 
	var xx = lengthdir_x(1, ddir);
	var yy = lengthdir_y(1, ddir);
	if (!place_meeting(x + xx, y, obj_wall)) x += xx;
	if (!place_meeting(x, y + yy, obj_wall)) y += yy;
}

instance_change(obj_player, false);