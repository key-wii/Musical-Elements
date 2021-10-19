if (iFrame > 0) iFrame--;
if (iFrame mod 25 >= 13) exit;

if (laser) draw_line_width_color(x, y, x + lengthdir_x(1500, direction), y + lengthdir_y(1500, direction), 1, c_white, c_white);
draw_self();

event_inherited();

//Draw star on top of player at end of charging gun
if (charge >= chargeTime - 2 && charge != chargeTime) {
	draw_set_alpha(1 - (charge * .004));
	draw_sprite(spr_charge_final, 0, x, y);
	draw_set_alpha(1);
	exit;
}
//Draw circles around player while charging gun
if (charge > 10 && charge != chargeTime) for (var i = 0; i < 4; i++) {
	var len = chargeTime / 4 * (chargeTime / charge * 1.333);
	
	if (charge < chargeTime / 5) var cc = charge;
	else if (charge < chargeTime / 2) cc = charge * 7.5 - (charge / (chargeTime / 20));
	else if (charge < chargeTime - 15) var cc = charge * 5;
	else var cc = charge * 15;
	
	var xx = lengthdir_x(len, (i * 90) - cc);
	var yy = lengthdir_y(len, (i * 90) - cc);
	if (charge < chargeTime / 5) draw_set_alpha(charge / 100 - .1);
	else draw_set_alpha(1 - (charge * .003));
	draw_sprite(spr_charge, 0, x + xx, y + yy);
	draw_set_alpha(1);
}