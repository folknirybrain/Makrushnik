/// @description Move
// You can write your code in this edito



if(AI=="idle"){
	if (hinput_!=0){	
		hspeed_+=hinput_*acceleration_;
		hspeed_=clamp(hspeed_,-max_speed,max_speed);	
	}else{
		hspeed_=lerp(hspeed_,0,0.5);
	}	
}

//Animation
	if(hinput_==0&&vspeed_==0){
		sprite_index=asset_get_index("spr_"+sprite_id_+"_general_idle");
		image_speed=1;
	}else if(hinput_!=0&&vspeed_==0){
		sprite_index=asset_get_index("spr_"+sprite_id_+"_general_run");
		image_speed=1;
	}


	if(hspeed_>0){		
		image_xscale=1;
		direction_=1;
	}else if(hspeed_<0){		
		image_xscale=-1;
		direction_=-1;
	}
	

if(place_meeting(x+hspeed_,y,obj_wall)){
	while !place_meeting(x+sign(hspeed_),y,obj_wall){
		x+=sign(hspeed_);		
	}
		if(vspeed_==0){
			sprite_index=asset_get_index("spr_"+sprite_id_+"_general_idle");
			image_speed=1;
		}	
	hspeed_=0;
	kick_power=0;
	hspeed_push=0;
}

x+=hspeed_;

if(!place_meeting(x,y+1,obj_wall)){
	vspeed_+=gravity_;
}else{
	if(vinput_!=0){		
		vspeed_=-jump_power_;
		sprite_index=asset_get_index("spr_"+sprite_id_+"_general_jump");
		image_index=0;
		image_speed=1;		
	}
}
if (sprite_index==asset_get_index("spr_"+sprite_id_+"_general_jump")&&image_index == 28){
	image_speed = 0;
}
if(place_meeting(x,y+vspeed_,obj_wall)){
	while !place_meeting(x,y+sign(vspeed_),obj_wall){
		y+=sign(vspeed_);		
	}
	vspeed_=0;
}

y+=vspeed_

if(kick&&AI!="panch"&&AI!="down"){
	AI="panch";	
	kick_power=kick_power_max;
	alarm[3]=100;	
	//var time_diff=date_current_datetime()-obj_main.creation_time;
	//show_debug_message(string_format(time_diff,10,10));
	
}

if(AI=="panch"){	
	sprite_index=asset_get_index("spr_"+sprite_id_+"_general_run");
	image_speed=0;
	image_index=10;
	
	if(kick_power!=0){
		hspeed_+=direction_*3*acceleration_;
		hspeed_=clamp(hspeed_,-kick_power,kick_power);	
	}else{		
		hspeed_=lerp(hspeed_,0,0.8);	
	}
	if(hspeed_<=-kick_power||hspeed_>=kick_power){
		kick_power=0;
	}
	if(hspeed_==0){
		AI="idle";
		alarm[3]=0;
	}
}
if(AI=="down"){
	sprite_index=asset_get_index("spr_"+sprite_id_+"_general_run");
	image_speed=0;
	image_index=10;
	//show_debug_message(string(hspeed_push));	
	if(hspeed_push!=0){
		hspeed_+=hspeed_push*kick_power_max;
		hspeed_=clamp(hspeed_,-max_speed*7,max_speed*7);	
		vspeed_=-jump_power_/2;
	}else{
		hspeed_=lerp(hspeed_,0,0.3);	
	}
	if(hspeed_<=-max_speed*7||hspeed_>=max_speed*7){
		hspeed_push=0;	
	}
	if(hspeed_==0){
		AI="idle";
	}
		
}
