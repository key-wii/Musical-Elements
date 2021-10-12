/// @description Unlock debug
if (!global.debug && (keyboard_check(vk_tab) && keyboard_check(vk_shift))) {
	global.debug = true;
	sound_machine(snd_text);
}