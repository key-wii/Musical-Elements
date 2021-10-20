global.music_pos = 0;
col = c_white;

hp_r = sprite_width;
switch (element) {
	case water: hp_col = c_aqua; break;
	default: hp_col = c_purple; break;
}

image_speed = 0;
x_adjust = 0;
y_adjust = 0;
recoil = false;
dir_adjust = 0;

attack_handler = boss_attack_ducky;

if (bpm == 100) global.bpm_offset = 320.833333;
if (bpm == 120) global.bpm_offset = 385;
if (bpm == 240) global.bpm_offset = 385 * 2;
song_load(msc, chart);

global.win = false;