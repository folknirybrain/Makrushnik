
var pad_num_=argument0;

if(pad_num_>=0){
	if(pad_type=="Other"||pad_type=="Xbox"){
		hinput_=round(gamepad_axis_value(pad_num_,gp_axislh));
		vinput_=gamepad_button_check_pressed(pad_num_,gp_face3);
		kick=gamepad_button_check_pressed(pad_num_,gp_face2);
		attack=gamepad_button_check_pressed(pad_num_,gp_face1);	
	}else if (pad_type=="Dualshock"){
		hinput_=round(gamepad_axis_value(pad_num_,gp_axislh));
		vinput_=gamepad_button_check_pressed(pad_num_,gp_face1);
		kick=gamepad_button_check_pressed(pad_num_,gp_face2);
		attack=gamepad_button_check_pressed(pad_num_,gp_face3);
	}
}else if(pad_num_==-1){
	hinput_=keyboard_check(vk_right)-keyboard_check(vk_left);
	vinput_=keyboard_check_pressed(vk_up);
	kick=keyboard_check_pressed(vk_space);
	
	attack=keyboard_check_pressed(vk_control);	
}

if(keyboard_check(vk_escape)){
	game_end();	
}
