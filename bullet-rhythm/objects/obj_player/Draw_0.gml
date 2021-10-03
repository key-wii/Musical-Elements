if (iFrame > 0) iFrame--;
if (iFrame mod 25 >= 13) exit;
draw_self();

event_inherited();

//Draw circles around player while charging gun
if (charge == chargeTime - 1) {
	draw_set_alpha(1 - (charge * .005));
	draw_sprite(spr_charge_final, 0, x, y);
	draw_set_alpha(1);
	exit;
}
if (charge > 0 && charge != chargeTime) for (var i = 0; i < 4; i++) {
	var len = chargeTime / 4 * (chargeTime / charge * 1.333);
	
	if (charge < chargeTime / 5) var cc = charge;
	else if (charge < chargeTime / 2) cc = charge * 7.5 - (charge / (chargeTime / 20));
	else var cc = charge * 5;
	
	var xx = lengthdir_x(len, (i * 90) - cc);
	var yy = lengthdir_y(len, (i * 90) - cc);
	draw_set_alpha(1 - (charge * .005));
	draw_sprite(spr_charge, 0, x + xx, y + yy);
	draw_set_alpha(1);
}