global.cutscene = true;
var box = instance_create_layer(x, y, "UI", obj_textbox);
switch (room) {
	case Room_duck:
		if (global.win) box.textfile = "ducky_end.txt";
		else box.textfile = "ducky_start.txt";
		break;
	case Room_pew:
		if (global.win) box.textfile = "pew_end.txt";
		else box.textfile = "pew_start.txt";
		break;
}
box.controller = id;