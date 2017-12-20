/*var direct=point_direction(x,y,other.x,other.y);
var direct_y=point_direction(0,100,0,0);
if(kick&&AI<>"panch"&&AI<>"knife"&&other.AI<>"panch"){
	other.hspeed_push+=lengthdir_x(50,direct);
	other.vspeed_push+=lengthdir_y(15,direct_y);
	other.AI="panch";
	instance_create_layer(1009,175,"Instances",obj_knife);
}
if(kick&&AI=="knife"){
	instance_deactivate_object(other);	
	alarm[0]=5;
}

show_debug_message(string(direct)+"   "+string(other.hspeed_push))
*/

if(AI=="panch"){
	//var direct=point_direction(x,y,other.x,other.y);	
	if(!knife_&&other.AI!="down"){
		if(other.alarm[3]>=0){
			if(alarm[3]<other.alarm[3]){
				show_debug_message(string(alarm[3])+string(sprite_id_)+" other "+string(other.alarm[3])+string(other.sprite_id_));
				other.hspeed_push=direction_;
				//show_debug_message(string(lengthdir_x(1,direct)))
				other.AI="down";
				if(!instance_exists(obj_knife)){
					instance_create_layer(1010,513,"Instances",obj_knife);
					other.knife_=false;
				}
			}			
		}else{			
			other.hspeed_push=direction_;
			//show_debug_message(string(lengthdir_x(1,direct)))
			other.AI="down";
			if(!instance_exists(obj_knife)){
				instance_create_layer(1010,513,"Instances",obj_knife);
				other.knife_=false;
			}
		}
	}else if(knife_&&other.AI!="down"){
		other.health_-=20;
		other.hspeed_push=direction_;
		other.AI="down";
		if(other.health_<=0){
			instance_deactivate_object(other);	
			alarm[0]=5;
		}
	}
	
}