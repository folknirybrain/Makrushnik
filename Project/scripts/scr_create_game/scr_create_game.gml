
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
var right_up_x=1920-3*32;
var right_up_y=8*32;

var right_down_x=1920-3*32;
var right_down_y=1080-6*32;

var left_up_x=4*32;
var left_up_y=8*32;

var left_down_x=4*32;
var left_down_y=1080-6*32;

//show_debug_message(string(spr_wall.)+"!!!!!!!!!!!!!!!!!!!!!")

for(var i=0;i<4;i++){	
	if !(instance_exists(player[i])){   		
		if i==0{
			player[i] = instance_create_layer(left_up_x,left_up_y,"Characters",obj_players);	
			player[i].sprite_id_="yellow";	
			player[i].pad_num=-1;//uslovno keyboard
			player[i].active=true;
			
			
		}else if i==1{
			player[i] = instance_create_layer(left_down_x,left_down_y,"Characters",obj_players);	//100,895,
			player[i].sprite_id_="red";	
			player[i].pad_num=noone;
			player[i].active=true;
			
			
		}else if i==2{
			player[i] = instance_create_layer(right_up_x,right_up_y,"Characters",obj_players);	//1880,256
			player[i].sprite_id_="blue";	
			player[i].image_xscale=-1;
			player[i].pad_num=noone;
			player[i].active=true;
		}else if i==3{
			player[i] = instance_create_layer(right_down_x,right_down_y,"Characters",obj_players);	//1880,895,
			player[i].sprite_id_="green";	
			player[i].image_xscale=-1;
			player[i].pad_num=noone;
			player[i].active=true;
			
		}	
		show_debug_message("НЕ существует  "+string(right_up_x)+string(window_get_width()));
     }else{
		
		 if i==0{
			player[i].x=100;
			player[i].y=256;
			player[i].knife_=false;
			player[i].health_=100;
			player[i].active=true;
			player[i].image_xscale=1;	
			
		}else if i==1{
			player[i].x=100;
			player[i].y=895;
			player[i].knife_=false;
			player[i].health_=100;			
			player[i].active=true;
			player[i].image_xscale=1;	
		}else if i==2{
			player[i].x=1792;
			player[i].y=256;
			player[i].knife_=false;
			player[i].health_=100;				
			player[i].image_xscale=-1;			
			player[i].active=true;
		}else if i==3{
			player[i].x=1792;
			player[i].y=895;
			player[i].knife_=false;
			player[i].health_=100;				
			player[i].image_xscale=-1;			
			player[i].active=true;
		}	
		show_debug_message("exist   "+string(player[i]));
	 }
}	


obj_knife.Knife_find=false;

for(var i=0;i<gamepad_get_device_count();i++){
	if(gamepad_is_connected(i)){
		for(var j=0;j<4;j++){
			if(player[j].pad_num==noone){
				player[j].pad_num=i;
				//show_debug_message(string(i)+"player__!_!_!_!_!_!__!_!_!_")
				player[j].pad_type=gamepad_get_description(i);						
						
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