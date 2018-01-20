/// @description Insert description here
// You can write your code in this editor
switch obj_start_game.mode_type
	{
		case 1:
		alarm[0]=20;
		layer_set_visible("Backgrounds_2",true);
		//layer_background_speed("Backgrounds_2",5);
		
		break;
		case 2:
		room_goto(2);
		break;
	}