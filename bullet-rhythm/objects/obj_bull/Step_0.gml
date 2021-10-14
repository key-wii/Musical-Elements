if (place_meeting(x, y, obj_bull_e)) {
	with (obj_bull_e) {
		if (place_meeting(x, y, other.id)) {
			if (element_stolen_by != -1 && element_stolen_by != other.id) {
				with (other) if (!lost_hp) {
					hp -= 1;
					if (hp <= 0) instance_change(obj_bull_explode, true);
					else lost_hp = true;
				}
			} else {
				with (other) {
					if (sprite_index == spr_muzzleflash) var flashing = true;
					else var flashing = false;
					instance_change(obj_bull_ele, true);
					if (flashing) sprite_index = spr_muzzleflash;
				}
				element_stolen_by = other.id;
				other.col = col;
				other.element = element;
				exit;
			}
		}
	}
}

if (sprite_index != spr_muzzleflash && place_meeting(x, y, obj_destructible)) {
	with (obj_destructible) {
		if (place_meeting(x, y, other.id)) {
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
			instance_create_layer(x, y, "UI", obj_heart);
			hp += 1;
			if (hp > hp_max) hp = hp_max;
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