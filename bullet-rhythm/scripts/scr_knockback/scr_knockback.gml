function knockbacked(knockback, knockbackDir) {
	with (move) /*if (!kBack)*/ {
		direction = knockbackDir;
		var xx = lengthdir_x(knockback, knockbackDir);
		var yy = lengthdir_y(knockback, knockbackDir);
		if (!place_meeting(x + xx, y, obj_wall)) x += xx;
		if (!place_meeting(x, y + yy, obj_wall)) y += yy;
		speed = knockback;
		kBack = true;
		alarm_set(5, 1);
	}
}

function knockbacked3(knockback, knockbackDir) {
	with (move) {
		direction = knockbackDir;
		speed = knockback;
		kBack = true;
		alarm_set(5, 3);
	}
}

function knockbacked_player(knockback, knockbackDir) {
	with (move) /*if (!kBack)*/ {
		direction = knockbackDir;
		var xx = lengthdir_x(knockback * 5, knockbackDir);
		var yy = lengthdir_y(knockback * 5, knockbackDir);
		if (!place_meeting(x + xx, y, obj_wall)) x += xx;
		if (!place_meeting(x, y + yy, obj_wall)) y += yy;
		kBack = true;
		alarm_set(5, 1);
	}
}