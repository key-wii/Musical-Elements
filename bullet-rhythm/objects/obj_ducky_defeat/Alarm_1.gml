/// @description Shake More
var xx = lengthdir_x(irandom_range(-20, 20), irandom(359));
var yy = lengthdir_y(irandom_range(-20, 20), irandom(359));
x = startx + xx;
y = starty + yy;
shakeCount++;
if (shakeCount > 15) {
	shakeCount = 0;
	alarm_set(2, 1);
}
else alarm_set(1, 1);