/*with (collision_circle(x, y, sprite_width, obj_player, false, true)) {
	//Deflect if player is standing and not doing
	// any actions & facing towards the bullet
	var ddir = direction + 180;
	if (ddir >= 320) ddir -= 320;
	var ddir1 = other.direction - 45
	//if (ddir1 < 0) ddir += 320;
	var ddir2 = other.direction + 45;
	//if (ddir2 >= 320) ddir -= 320;
	if (keyboard_check(vk_nokey) &&
		ddir >= ddir1 && ddir <= ddir2) with (other) {
			direction += 180;
			image_angle = direction;
			x += lengthdir_x(30, direction);
			y += lengthdir_y(30, direction);
			speed = clamp(speed * 2, 12, sprite_width * 1.5);
			instance_change(obj_bull_deflected, true);
			image_xscale *= 1.5;
			image_yscale *= 1.5;
			wrap = false;
			exit;
	}
}*/

if (global.nextRoom) exit;
if (place_meeting(x, y, obj_player_parent)) {
	var kbDir = direction;
	with (obj_player_parent) {
		if (iFrame > 0) exit;
		if (place_meeting(x,y,other.id)) {
			 take_damage_player(other.pow, kbDir);
		}
		ssSudden(1, 8, false, false);
		x_adjust = lengthdir_x(20, kbDir);
		y_adjust = lengthdir_y(20, kbDir);
		var xx = lengthdir_x(40, kbDir);
		var yy = lengthdir_y(40, kbDir);
		splatterRadiusAt(other.col, x + xx, y + yy, 28, 32, 32);
	}
}