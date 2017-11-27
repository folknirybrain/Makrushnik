var pers1=argument0;
var pers2=argument1;
pers1.hinput_=keyboard_check(vk_right)-keyboard_check(vk_left);
pers1.vinput_=keyboard_check(vk_up);
pers1.kick=keyboard_check_pressed(vk_space);
if(gamepad_is_connected(1)){
	pers1.hinput_=round(gamepad_axis_value(1,gp_axislh));
	pers1.vinput_=gamepad_button_check_pressed(1,gp_face1);
	pers1.kick=gamepad_button_check_pressed(1,gp_face3);
}

//show_debug_message(string(pers2));

pers2.hinput_=round(gamepad_axis_value(0,gp_axislh));
pers2.vinput_=gamepad_button_check_pressed(0,gp_face1);
pers2.kick=gamepad_button_check_pressed(0,gp_face3);


if(keyboard_check(vk_escape)){
	game_end();	
}
