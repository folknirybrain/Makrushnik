/// @description Insert description here
// You can write your code in this edito
//var hinput_=keyboard_check(vk_right)-keyboard_check(vk_left);
if(AI=="idle"){
	if (hinput_!=0){	
		hspeed_+=hinput_*acceleration_;
		hspeed_=clamp(hspeed_,-max_speed,max_speed);	
	}else{
		hspeed_=lerp(hspeed_,0,0.5);
	}	
}


if(hspeed_>0){
		image_xscale=1;
		direction_=1;
	}else if(hspeed_<0){
		direction_=-1;
		image_xscale=-1;
}

if(place_meeting(x+hspeed_,y,obj_wall)){
	while !place_meeting(x+sign(hspeed_),y,obj_wall){
		x+=sign(hspeed_);		
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
	}
}
if(place_meeting(x,y+vspeed_,obj_wall)){
	while !place_meeting(x,y+sign(vspeed_),obj_wall){
		y+=sign(vspeed_);		
	}
	vspeed_=0;
}

y+=vspeed_

if(kick&&AI!="panch"){
	AI="panch";	
	kick_power=kick_power_max;
}

if(AI=="panch"){	
	//show_debug_message(string(hspeed_)+string(id));	
	if(kick_power!=0){
		hspeed_+=direction_*kick_power;
		hspeed_=clamp(hspeed_,-max_speed*5,max_speed*5);	
	}else{		
		hspeed_=lerp(hspeed_,0,0.8);	
	}
	if(hspeed_<=-max_speed*5||hspeed_>=max_speed*5){
		kick_power=0;
		//hspeed_=lerp(hspeed_,0,2);		
	}
	//show_debug_message(string(hspeed_)+string(id)+"   "+string(direction_));	
	
	
		
//		instance_create_layer(1009,175,"Instances",obj_knife);
	
	
	
	
//	hspeed_push=lerp(hspeed_push,0,0.3);
//	vspeed_push=lerp(vspeed_push,0,0.5);
	if(hspeed_==0){
		AI="idle";
	}
}
if(AI=="down"){
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



//scr_push();