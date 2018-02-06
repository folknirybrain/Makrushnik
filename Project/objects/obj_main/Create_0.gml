///@description  Create main object game

creation_time=date_current_datetime();							// creation time start
global.game_session=0;											// count lap

//scr_load();									
for(var i=3;i>=0;i--){	
	player[i]=noone;											// create empty array for players object
}	
							
// Init point of creating weapons or target
var right_up_x=window_get_width()-3*32;
var right_up_y=8*32;
var right_mid_x=window_get_width()-window_get_width()/4;
var right_mid_y=12*32;
var right_down_x=window_get_width()-3*32;
var right_down_y=window_get_height()-6*32;
var center_up_x=window_get_width()/2;
var center_up_y=9*32;
var center_mid_x=window_get_width()/2;
var center_mid_y=window_get_height()/2;
var center_down_x=window_get_width()/2;
var center_down_y=window_get_height()-9*32;
var left_up_x=4*32;
var left_up_y=8*32;
var left_mid_x=window_get_width()/4;
var left_mid_y=12*32;
var left_down_x=4*32;
var left_down_y=window_get_height()-6*32;
var left_mid_x2=window_get_width()/4;
var left_mid_y2=window_get_height()-13*32;
var right_mid_x2=window_get_width()-window_get_width()/4;
var right_mid_y2=window_get_height()-13*32;


   
// record point in 2D array if mode 1
if(global.mode_type!=3){
	array_point_knife[0,0]=right_up_x;
	array_point_knife[0,1]=right_up_y;

	array_point_knife[1,0]=right_mid_x;
	array_point_knife[1,1]=right_mid_y;

	array_point_knife[2,0]=right_down_x;
	array_point_knife[2,1]=right_down_y;

	array_point_knife[3,0]=center_up_x;
	array_point_knife[3,1]=center_up_y;

	array_point_knife[4,0]=center_mid_x;
	array_point_knife[4,1]=center_mid_y;

	array_point_knife[5,0]=center_down_x;
	array_point_knife[5,1]=center_down_y;

	array_point_knife[6,0]=left_up_x;
	array_point_knife[6,1]=left_up_y;

	array_point_knife[7,0]=left_mid_x;
	array_point_knife[7,1]=left_mid_y;

	array_point_knife[8,0]=left_down_x;
	array_point_knife[8,1]=left_down_y;

	array_point_knife[9,0]=left_mid_x2;
	array_point_knife[9,1]=left_mid_y2;

	array_point_knife[10,0]=right_mid_x2;
	array_point_knife[10,1]=right_mid_y2;
	
	// start script to create game for mode 1
	scr_create_game();
}else{
	// start script to create game for mode 3
	scr_create_game_3();
	
}
// alarm for black screen to go to next room
alarm[1]=100;





