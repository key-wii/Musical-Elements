/// @description Unlock debug
if (!global.debug && (keyboard_check(vk_tab) && keyboard_check(vk_shift))) {
	sound_machine(snd_text);
	global.debug = true;
}
else if (global.debug && (keyboard_check_pressed(vk_tab) && keyboard_check_pressed(vk_shift))) {
	sound_machine(snd_text);
	if (instance_exists(obj_e_parent)) with (obj_e_parent) hp = 1;
}