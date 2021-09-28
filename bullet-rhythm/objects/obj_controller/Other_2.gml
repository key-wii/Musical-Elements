global.focusKey = vk_space;

global.win = false;

//UIcolor = make_color_rgb(150, 223, 244); //light blue
UIcolor = c_white;
UIselectedColor = make_color_rgb(193, 239, 95); //light green
UIcolorAlt = $f662d1; //pink
//UIselectedColor = make_color_rgb(213, 227, 172); //almost white green
//UIselectedColor = make_color_rgb(248, 157, 49); //orange

global.partSystem = part_system_create();
part_system_depth(global.partSystem, layer_get_depth("Controller") - 1);

global.partDash = part_type_create();
part_type_sprite(global.partDash, spr_part_dash, false, false, false);
part_type_size(global.partDash, 1, 1, -.05, 0);
part_type_speed(global.partDash, 2, 2, .2, 1);
part_type_alpha1(global.partDash, 1);
part_type_blend(global.partDash, true);
part_type_life(global.partDash, 20, 20);