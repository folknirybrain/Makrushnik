creation_time=date_current_datetime();
per1=instance_create_layer(100,256,"Characters",obj_players);
per1.sprite_id_="yellow";
per2=instance_create_layer(100,895,"Characters",obj_players);
per2.sprite_id_="red";
per3=instance_create_layer(1880,256,"Characters",obj_players);
per3.sprite_id_="blue";
per3.image_xscale=-1;
per4=instance_create_layer(1880,895,"Characters",obj_players);
per4.sprite_id_="green";
per4.image_xscale=-1;



h1=instance_create_layer(150,980,"Characters",obj_health);
h2=instance_create_layer(150,1020,"Characters",obj_health);
h3=instance_create_layer(1650,980,"Characters",obj_health);
h4=instance_create_layer(1650,1020,"Characters",obj_health);
//h2.image_angle=point_direction(0,0,180,0);

instance_create_layer(110,980,"Characters",obj_icon_yellow);
instance_create_layer(110,1020,"Characters",obj_icon_red);
instance_create_layer(1610,980,"Characters",obj_icon_blue);
instance_create_layer(1610,1020,"Characters",obj_icon_green);


/*var gpcount=gamepad_get_device_count();
var pad=0;
for (var i=0;i<gpcount;i++){
	var true_pad=gamepad_is_connected(i)
	if true_pad{
		global.pad[pad]=i;	
		pad+=1;
	}
}
show_debug_message(global.pad[pad])
*/