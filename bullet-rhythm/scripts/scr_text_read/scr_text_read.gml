function text_read() {
	setPortrait(global.text);
	global.text = cutHeader(global.text);
	global.textBox = getTextBox(global.text);
	with (obj_textbox) {
		fullText = global.textBox;
		charCount = 0;
		textSound = 0;
	}
	if (fullText == "END") {
		with (controller) instance_destroy();
		instance_destroy();
	}
}

function setPortrait(str) {
	var fromHere = string_pos("[", str);
	var toHere = string_pos("]", str);
	var chara = string_copy(str, fromHere + 1, toHere - fromHere - 1);
	switch (chara) {
		case "Player":
			global.portrait = spr_por_player;
			global.textSnd = snd_text;
			break;
		case "Ducky":
			global.portrait = spr_por_ducky;
			global.textSnd = snd_text2;
			break;
		case "Ducky2":
			global.portrait = spr_por_ducky2;
			global.textSnd = snd_text3;
			break;
		case "Ducky3":
			global.portrait = spr_por_ducky3;
			global.textSnd = snd_text2;
			break;
		case "Pew":
			global.portrait = spr_por_pew;
			global.textSnd = snd_text2;
			break;
	}
}

function cutHeader(str) {
	var toHere = string_pos("{", str);
	str = string_delete(str, 1, toHere + 1);
	return str;
}

function getTextBox(str) {
	var toHere = string_pos("}", str);
	return string_copy(str, 1, toHere - 2);
}