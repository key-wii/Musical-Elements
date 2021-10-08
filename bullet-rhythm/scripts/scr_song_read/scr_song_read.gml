function song_read() {
	if (global.loop) {
		song_load(msc, chart);
		global.loop = false;
	}
	
	if (global.music_pos >= global.nextNumber) {
		if (global.nextNumber >= 0) {
			global.attack = getFirstLine(global.chart);
			song_atttack();
			global.chart = cutChart2(global.chart);
		}
		song_next_index();
	}
	/*if (global.music_pos >= global.nextEvent) {
		if (global.nextEvent >= 0) {
			global.event = getFirstLine(global.events);
			global.events = cutChart2(global.events);
		}
		song_next_event();
	}*/
}

function getFirstLine(str) {
	var substr = "\n";
	var newEnd = string_pos(substr, str);
	var temp = string_copy(str, 0, newEnd + 1);
	return temp;
}

function song_atttack() {
	var substr = "N";
	var newStart = string_pos(substr, global.attack);
	global.attack = string_digits(string_copy(global.attack, newStart, 7));
	if (instance_exists(obj_e_parent)) with (obj_e_parent) attack_handler(global.attack);
}

function cutChart2(str) {
	var substr = "\n";
	var pos = string_pos(substr, str);
	var newstart = pos + string_length(substr) + 2;
	var temp = string_copy(str, newstart, string_length(str) - pos + 1);
	pos = string_pos("}", temp);
	return string_copy(temp, 1, pos);
}

function song_next_index() {
	var minPos = 999999999;
	for (var i = 0; i <= 9; i++) {
		var temp = string_pos(i, global.chart);
		if (temp < minPos) minPos = temp;
	}
	if (minPos == 0) exit;
	var maxPos = string_pos(" =", global.chart);
	global.nextNumber = real(string_copy(global.chart, minPos, maxPos - minPos + 1));
}

/*function song_next_event() {
	var minPos = 999999999;
	for (var i = 0; i <= 9; i++) {
		var temp = string_pos(i, global.events);
		if (temp < minPos) minPos = temp;
	}
	if (minPos == 0) exit;
	var maxPos = string_pos(" =", global.events);
	global.nextEvent = real(string_copy(global.events, minPos, maxPos - minPos + 1));
}*/