function point_boss() {
	if (instance_exists(obj_e_parent)) {
		direction = point_direction(x, y, obj_e_parent.x, obj_e_parent.y);
		image_angle = direction;
	} else if (instance_exists(obj_corpse)) {
		direction = point_direction(x, y, obj_corpse.x, obj_corpse.y);
		image_angle = direction;
	} 
}