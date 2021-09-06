/// music_machine(snd)
function music_machine(snd) {
	
	with (obj_audio_controller) global.music = audio_play_sound(snd, false, true);
	
}