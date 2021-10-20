w = display_get_gui_width();
h = display_get_gui_height();
x = w / 2;
y = h - (h / 16);

fullText = "";
charCount = 0;
textSound = 0;
finished = false;

space = 10;
//p_space = 14;
p_space = 4;

box_w = 1600 - (space * 2);
box_h = 300;
yy = h - (h / 1.9) + 92;
box_left = space;
box_top = h - box_h - space;
alarm_set(0, 1);
alarm_set(2, 1);

clickHeld = 0;

textfile = "intro.txt";
portrait = spr_por_ducky;