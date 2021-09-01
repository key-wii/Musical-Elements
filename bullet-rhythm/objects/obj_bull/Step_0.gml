if (place_meeting(x, y, obj_wall)) {
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			splatterWall(other.col, spr_splatter, .5);
			splatterWallAt(other.col, spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
			splatterWallAt(other.col, spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
    
			with (other) {
				collide_wall();
				wall_hits++;
				if (wall_hits > 20) {
					instance_change(obj_bull_explode, true);
					exit;
				}
				//bounce off wall
				turn(30);
				/*var enemy = instance_nearest(x, y, obj_e_parent);
				if (instance_exists(enemy)) {
					turn(60);
					var ddis = point_distance(x, y, enemy.x, enemy.y);
					var max_turn = 45;
					if (ddis < 100) {
						//aim for nearest enemy
						var last_dir = direction;
						direction = point_direction(x, y, enemy.x, enemy.y);
						var diff = direction - last_dir;
						var diff2 = last_dir - direction;
						if (abs(diff) > max_turn && abs(diff2) > max_turn)
							if (diff > max_turn) direction = last_dir + max_turn;
							else if (diff < -max_turn) direction = last_dir - max_turn;
					}
				} else {
					turn(60);
				}*/
				image_angle = direction;
				if (image_xscale > 1 && alarm_get(0) >= 0) image_xscale = 1;
				if (image_yscale > 1 && alarm_get(0) >= 0) image_yscale = 1;
			}
		}
	}
}

if (place_meeting(x, y, obj_bull_e)) {
	with (obj_bull_e) {
		if (place_meeting(x, y, other.id)) {
			with (other) instance_change(obj_bull_ele, true);
			other.col = col;
		}
	}
}

//coll_destroy_bull_e();