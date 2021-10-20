function text_load(textfile) {
	var file = file_text_open_read(textfile);
	global.text_original = "";
	
	while !file_text_eof(file) {
		global.text_original += file_text_readln(file);
	}
	
	global.text = global.text_original;
}