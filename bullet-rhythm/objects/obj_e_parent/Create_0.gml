//maxHp = hp;
//hp = 1;
col = c_white;

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