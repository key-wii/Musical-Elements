if (instance_number(obj_e_parent) > 1){
	room_speed = 20;
	with (obj_controller) alarm_set(2, 1);
} else {
	room_speed = 10;
	alarm_set(4, 1);
}

image_alpha = .2;
alarm_set(0, 1);

alarm_set(3, 1);


win = false;