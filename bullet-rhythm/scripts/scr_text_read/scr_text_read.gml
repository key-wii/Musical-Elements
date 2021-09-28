function text_read() {
	global.text = cutHeader(global.text);
	global.textBox = getTextBox(global.text);
	with (obj_textbox) {
		fullText = global.textBox;
		charCount = 0;
		textSound = 0;
	}
}

function cutHeader(str) {
	var toHere = string_pos("{", str);
	str = string_delete(str, 1, toHere + 2);
	return str;
}

function getTextBox(str) {
	var toHere = string_pos("}", str);
	return string_copy(str, 1, toHere - 2);
}