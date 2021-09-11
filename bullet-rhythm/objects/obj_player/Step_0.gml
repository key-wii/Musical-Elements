jump_move_player(move);

if (iFrame > 0) exit;
/*if ((mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) && !recoil) {
	charge = 0;
	instance_change(obj_player_fire, true);
	exit;
}*/
if ((mouse_check_button(mb_left) || mouse_check_button(mb_right))) {
	if (charge < chargeTime) {
		var ttheta = charge * 12;
		var radius = floor(charge / 12);
		if (ttheta >= 360) ttheta -= 360;
		x_adjust = lengthdir_x(floor(radius / 2), ttheta);
		y_adjust = lengthdir_y(floor(radius / 2), ttheta);
		
		charge++;
		exit;
	} else {
		if (image_xscale == 1) {
			image_xscale += .25;
			image_yscale += .25;
		} else {
			image_xscale -= .25;
			image_yscale -= .25;
		}
	}
}
if ((mouse_check_button_released(mb_left) || mouse_check_button_released(mb_right))) {
	if (charge < 10) {
		instance_change(obj_player_fire, true);
	} else if (charge >= chargeTime) {
		fire_bull_charged(direction);
	}
	charge = 0;
}