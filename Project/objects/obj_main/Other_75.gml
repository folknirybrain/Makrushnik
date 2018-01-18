// @description Insert 
// You can write your code in this editor

show_debug_message("Event = " + async_load[? "event_type"]);        
show_debug_message("Pad = " + string(async_load[? "pad_index"]));  

switch(async_load[? "event_type"])          
{
	case "gamepad discovered":                    
	    var pad = async_load[? "pad_index"];  	
	    gamepad_set_axis_deadzone(pad, 0.5);       
	    gamepad_set_button_threshold(pad, 0.1);
		var gp_count = gamepad_get_device_count();
		for(var i=0;i<4;i++){
		    if player[i].pad_num == pad{
				break;
			}
			if i==3{
				for(var j=0;j<4;j++){
					if player[j].pad_num == noone{
						player[j].pad_num = pad;	
						player[j].pad_type=gamepad_get_description(pad);
						
						
						var desc=string_lower(player[j].pad_type);
						// Xbox
						if (string_pos("box",desc) || string_pos("360",desc) || string_pos("f310",desc) || string_pos("f710",desc))
						    {
								player[j].pad_type="Xbox"
						    }
						// Dualshock
						else if (string_pos("ps",desc) || string_pos("station",desc)||string_pos("dualshock",desc))
						    {
								player[j].pad_type="Dualshock"
						    }
						// Other
						else if string_pos("pad",desc)|| string_pos("USB",desc)
						    {
								player[j].pad_type="Other"
						    }
										
						break;
					}
				}	
			}
		}
		show_debug_message(string(gamepad_get_device_count()));
	break;
	case "gamepad lost":     
	    var pad = async_load[? "pad_index"]; 
		show_debug_message(string(pad)+"   lost it is true))  ");
		break; 
}
