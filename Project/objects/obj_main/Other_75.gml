/// @description Insert description here
// You can write your code in this editor
show_debug_message("Event = " + async_load[? "event_type"]);        // Debug cocde so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));  
//show_debug_message("Pad_num = " + string(player[]));   // triggered and the pad associated with it.// triggered and the pad associated with it.

switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
case "gamepad discovered":                     // A game pad has been discovered
    var pad = async_load[? "pad_index"];  	
    gamepad_set_axis_deadzone(pad, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(pad, 0.1);
	for(var i=0;i<4;i++){
	    if player[i].pad_num>19{
	       player[i].pad_num = pad;
		   break;
		}
	}
    break;
case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
    var pad = async_load[? "pad_index"];       // Get the pad index
    for(var i=0;i<4;i++){
	    if player[i].pad_num==pad{
	       player[i].pad_num = 20;
		   break;
		}
	}
    break;
}