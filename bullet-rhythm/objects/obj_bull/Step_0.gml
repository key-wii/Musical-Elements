if (place_meeting(x, y, obj_bull_e)) {
	with (obj_bull_e) {
		if (place_meeting(x, y, other.id)) {
			with (other) instance_change(obj_bull_ele, true);
			other.col = col;
			exit;
		}
	}
}

if (sprite_index != spr_muzzleflash && place_meeting(x, y, obj_wall)) {
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			/*splatterWall(other.col, spr_splatter, .5);
			splatterWallAt(other.col, spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));
			splatterWallAt(other.col, spr_splatter, .05 + random(.1), x + random_range(-35, 35), y + random_range(-35, 35));*/
			with (other) if (!lost_hp) {
				hp -= 1;
				if (hp <= 0) instance_change(obj_bull_explode, true);
				else lost_hp = true;
			}
		}
	}
}

if (place_meeting(x, y, obj_e_parent)) {
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id)) {
			with (other) {
				image_xscale = 2;
				image_yscale = 2;
				speed = 0;
				instance_change(obj_bull_explode, true);
			}
		}
	}
}

//coll_destroy_bull_e();