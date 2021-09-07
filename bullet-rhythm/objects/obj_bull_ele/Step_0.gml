if (place_meeting(x, y, obj_e_parent)) {
	var kbDir = direction;
	with (obj_e_parent) {
		if (place_meeting(x, y, other.id)) {
			take_damage(other.pow, kbDir);
			var xx = lengthdir_x(5, direction);
			var yy = lengthdir_y(5, direction);
			splatterRadiusAt(other.col, x + xx, y + yy, 8, 16, 30);
			sound_machine(snd_hit_bull);
			ssSudden(1, 1, false, false);
			with (other) {
				var hit = instance_create_layer(x + xx, y + yy, "UI", obj_hitmarker);
				hit.col = col;
				image_xscale = 2;
				image_yscale = 2;
				speed = 0;
				instance_change(obj_bull_explode, true);
			}
		}
	}
}


if (sprite_index != spr_muzzleflash && place_meeting(x, y, obj_wall)) {
	with (obj_wall) {
		if (place_meeting(x, y, other.id)) {
			with (other) if (!lost_hp) {
				hp -= 1;
				if (hp <= 0) {
					var ran = irandom(3);
					for (var i = 0; i < ran + 2; i++)
						splatterRadiusAt(col, x + irandom_range(-1, 1), y + irandom_range(-1, 1), .2, .6, irandom(1));
					with (other) splatterWall(other.col, spr_splatter, 1);
					for (var i = 0; i < irandom_range(2, 5); i++)
						splatterWallAt(col, spr_splatter, .06 + random(.1), x + random_range(-60, 60), y + random_range(-60, 60));
					
					instance_change(obj_bull_explode, true);
				}
				else lost_hp = true;
			}
		}
	}
}

//coll_destroy_bull_e();