
if(global.game_session==0){
		h1=instance_create_layer(150,980,"Characters",obj_health);
		h2=instance_create_layer(150,1020,"Characters",obj_health);
		h3=instance_create_layer(1650,980,"Characters",obj_health);
		h4=instance_create_layer(1650,1020,"Characters",obj_health);

		instance_create_layer(110,980,"Characters",obj_icon_yellow);
		instance_create_layer(110,1020,"Characters",obj_icon_red);
		instance_create_layer(1610,980,"Characters",obj_icon_blue);
		instance_create_layer(1610,1020,"Characters",obj_icon_green);
}else{
	h1.image_xscale=1;
	h2.image_xscale=1;
	h3.image_xscale=1;
	h4.image_xscale=1;
}
for(var i=0;i<4;i++){	
	if !(instance_exists(player[i])){   		
		if i==0{
			player[i] = instance_create_layer(125,194,"Characters",obj_players);	
			player[i].sprite_id_="yellow";	
			player[i].pad_num=-1;//uslovno keyboard
			player[i].active=true;
			
			
		}else if i==1{
			player[i] = instance_create_layer(125,420,"Characters",obj_players);	//100,895,
			player[i].sprite_id_="red";	
			player[i].pad_num=noone;
			player[i].active=true;
			
			
		}else if i==2{
			player[i] = instance_create_layer(125,640,"Characters",obj_players);	//1880,256
			player[i].sprite_id_="blue";	
		
			player[i].pad_num=noone;
			player[i].active=true;
		}else if i==3{
			player[i] = instance_create_layer(125,864,"Characters",obj_players);	//1880,895,
			player[i].sprite_id_="green";	
	
			player[i].pad_num=noone;
			player[i].active=true;
			
		}	
     }else{
		
		 if i==0{
			player[i].x=125;
			player[i].y=194;
		//	player[i].knife_=false;
			player[i].health_=100;
			player[i].active=true;
			player[i].image_xscale=1;	
			
		}else if i==1{
			player[i].x=125;
			player[i].y=420;
		
			player[i].health_=100;			
			player[i].active=true;
			player[i].image_xscale=1;	
		}else if i==2{
			player[i].x=125;
			player[i].y=640;
			player[i].health_=100;				
			player[i].image_xscale=1;			
			player[i].active=true;
		}else if i==3{
			player[i].x=125;
			player[i].y=864;		
			player[i].health_=100;				
			player[i].image_xscale=1;			
			player[i].active=true;
		}	
		show_debug_message("exist   "+string(player[i]));
	 }
}	


