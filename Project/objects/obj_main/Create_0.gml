creation_time=date_current_datetime();
for(var i=0;i<4;i++){
	player[i]=noone;
}
for(var i=0;i<4;i++){	
	if !(instance_exists(player[i])){   
		if i==0{
			player[i] = instance_create_layer(100,256,"Characters",obj_players);	
			player[i].sprite_id_="yellow";	
			player[i].pad_num=20;//uslovno keyboard
		}else if i==1{
			player[i] = instance_create_layer(100,895,"Characters",obj_players);	
			player[i].sprite_id_="red";	
			player[i].pad_num=20;
		}else if i==2{
			player[i] = instance_create_layer(1880,256,"Characters",obj_players);	
			player[i].sprite_id_="blue";	
			player[i].image_xscale=-1;
			player[i].pad_num=20;
		}else if i==3{
			player[i] = instance_create_layer(1880,895,"Characters",obj_players);	
			player[i].sprite_id_="green";	
			player[i].image_xscale=-1;
			player[i].pad_num=20;
		}	
     }
}	

h1=instance_create_layer(150,980,"Characters",obj_health);
h2=instance_create_layer(150,1020,"Characters",obj_health);
h3=instance_create_layer(1650,980,"Characters",obj_health);
h4=instance_create_layer(1650,1020,"Characters",obj_health);


instance_create_layer(110,980,"Characters",obj_icon_yellow);
instance_create_layer(110,1020,"Characters",obj_icon_red);
instance_create_layer(1610,980,"Characters",obj_icon_blue);
instance_create_layer(1610,1020,"Characters",obj_icon_green);

