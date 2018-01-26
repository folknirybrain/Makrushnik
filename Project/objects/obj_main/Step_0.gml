
h1.image_xscale=player[0].health_/100;
h2.image_xscale=player[1].health_/100;
h3.image_xscale=player[2].health_/100;
h4.image_xscale=player[3].health_/100;
if(alarm[0]<=0){
	var end_=sign(player[0].health_)+sign(player[1].health_)+sign(player[2].health_)+sign(player[3].health_)
	if(end_==1){
		//global.Save=true;
		//game_save("Save.dat")
	
		
		alarm[0]=50;
		
		
		
		//end_=0;
	}
}else if alarm[0]<20{
	end_=0;
	global.game_session+=1;
	layer_set_visible("EndGround",true);
	scr_create_game();
}
if(global.mode_type==3){
	view_set_xport(0,-obj_gush.x);
	
}
