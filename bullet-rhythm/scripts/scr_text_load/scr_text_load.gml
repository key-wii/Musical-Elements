function text_load() {
	var file = file_text_open_read("intro.txt");
	global.text_original = "";
	
	while !file_text_eof(file) {
		global.text_original += file_text_readln(file);
	}
	
	global.text = global.text_original;
}