function set_music_pos() {
	global.music_pos = audio_sound_get_track_position(global.music) * global.bpm_offset;
}