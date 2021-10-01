/// music_machine(snd)
function music_machine(snd) {
	
	with (obj_audio_controller) {
		//if (!global.firstSong) audio_stop_sound(global.music);
		audio_stop_all();
		global.music = audio_play_sound(snd, false, true);
		playing_music = true;
		global.music_pos = audio_sound_get_track_position(global.music) * 385 * 2;
		global.firstSong = true;
	}
	
}