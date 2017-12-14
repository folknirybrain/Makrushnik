var pers1=argument0;
var pers2=argument1;
var pers3=argument2;
pers1.hinput_=keyboard_check(vk_right)-keyboard_check(vk_left);
pers1.vinput_=keyboard_check_pressed(vk_up);
pers1.kick=keyboard_check_pressed(vk_space);
if(gamepad_is_connected(1)){
	pers1.hinput_=round(gamepad_axis_value(1,gp_axislh));
	pers1.vinput_=gamepad_button_check_pressed(1,gp_face1);
	pers1.kick=gamepad_button_check_pressed(1,gp_face3);
}

//show_debug_message(string(pers2));

pers2.hinput_=keyboard_check(vk_numpad6)-keyboard_check(vk_numpad4);
pers2.vinput_=keyboard_check_pressed(vk_numpad8);
pers2.kick=keyboard_check_pressed(vk_numpad0);

pers3.hinput_=keyboard_check(vk_numpad3)-keyboard_check(vk_numpad1);
pers3.vinput_=keyboard_check_pressed(vk_numpad5);
pers3.kick=keyboard_check_pressed(vk_numpad2);


if(keyboard_check(vk_escape)){
	game_end();	
}
