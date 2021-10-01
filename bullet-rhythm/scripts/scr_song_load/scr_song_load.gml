function song_load(msc, chart) {
	music_machine(msc);
	var file = file_text_open_read(chart);
	global.chart_original = "";
	
	while !file_text_eof(file) {
	    global.chart_original += file_text_readln(file);
	}
	
	global.chart = global.chart_original;
	
	//global.events = cutChart("[Events]", global.chart);
	global.chart = cutChart("ExpertSingle", global.chart);
	global.nextNumber = -1;
	//global.nextEvent = -1;
	song_next_index();
	//song_next_event();
	
	attack_picker();
}

function cutChart(substr, str) {
	var pos = string_pos(substr, str);
	var newstart = pos + string_length(substr) + 2;
	var temp = string_copy(str, newstart, string_length(str) - pos + 1);
	pos = string_pos("}", temp);
	return string_copy(temp, 1, pos);
}