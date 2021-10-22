/// @description Shake
var xx = irandom_range(-2, 2);
var yy = irandom_range(-2, 2);
x = startx + xx;
y = starty + yy;
shakeCount++;
if (shakeCount > 80&& !global.cutscene) {
	shakeCount = 0;
	alarm_set(1, 1);
}
else alarm_set(0, 1);