creation_time=date_current_datetime();
//scr_load();
for(var i=0;i<4;i++){	
	player[i]=noone;	//array for players
}	
global.game_session=0;
if(global.mode_type!=3){
	array_point_knife[0,0]=190;
	array_point_knife[0,1]=255;

	array_point_knife[1,0]=890;
	array_point_knife[1,1]=255;

	array_point_knife[2,0]=1792;
	array_point_knife[2,1]=255;

	array_point_knife[3,0]=190;
	array_point_knife[3,1]=542;

	array_point_knife[4,0]=890;
	array_point_knife[4,1]=542;

	array_point_knife[5,0]=1792;
	array_point_knife[5,1]=542;

	array_point_knife[6,0]=190;
	array_point_knife[6,1]=893;

	array_point_knife[7,0]=890;
	array_point_knife[7,1]=795;

	array_point_knife[8,0]=1792;
	array_point_knife[8,1]=893;

	array_point_knife[9,0]=517;
	array_point_knife[9,1]=378;

	array_point_knife[10,0]=1500;
	array_point_knife[10,1]=700;
	scr_create_game();
}else{
	scr_create_game_3();
	
}





