w = display_get_gui_width();
h = display_get_gui_height();
x = w / 2;
y = h - (h / 16);

fullText = "";
charCount = 0;
textSound = 0;

space = 10;

box_w = 1600 - (space * 2);
box_h = 170;
yy = h - (h / 1.9) + 92;
box_left = space;
box_top = h - box_h - space;
alarm_set(0, 1);

text_load();
text_read();