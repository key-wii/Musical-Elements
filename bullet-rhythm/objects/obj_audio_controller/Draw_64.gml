draw_set_color(c_white);
draw_text(0, 0, "chart debugging");
draw_text(0, 100, global.chart);
draw_set_color(c_yellow);
draw_text(160, 100, "attack: " + string(global.attack));
draw_text(160, 150, "next: " + string(global.nextNumber));

draw_set_color(c_white);
draw_text(400, 100, global.music_pos);

/*draw_text(510, 100, global.events);
draw_set_color(c_yellow);
draw_text(830, 100, "event: " + string(global.event));
draw_text(830, 150, "next: " + string(global.nextEvent));
draw_set_color(c_white);*/