
/// @description Collision_between_players

	if(AI=="panch"&&other.active){
		
		if(other.AI!="down"){
			if(other.alarm[3]>=0){
				if(alarm[3]<other.alarm[3]){	
					if(global.mode_type==1){
					other.hspeed_push=direction_;			
					other.AI="down";					
						if(other.knife_){					
							other.knife_=false;
							obj_knife.Knife_find=false;
						
							var i=scr_point_distance_max();
							//show_debug_message("!!!!!"+string(i));
							obj_knife.x=obj_main.array_point_knife[i,0];
							obj_knife.y=obj_main.array_point_knife[i,1];
					
						}
						if(other.goal!=noone){
							var i=scr_point_distance_max();
				
							other.goal.x=obj_main.array_point_knife[i,0];
							other.goal.y=obj_main.array_point_knife[i,1];
							other.goal=noone;
						}
					}else if(global.mode_type==2){
						if(!other.knife_){
							other.hspeed_push=direction_;			
							other.AI="down";					
							if(other.knife_){					
								other.knife_=false;
								
							
								obj_knife.Knife_find=false;
								var i=scr_point_distance_max();
								//show_debug_message("!!!!!"+string(i));
								obj_knife.x=obj_main.array_point_knife[i,0];
								obj_knife.y=obj_main.array_point_knife[i,1];
							}
							if(other.goal!=noone){
								var i=scr_point_distance_max();
				
								other.goal.x=obj_main.array_point_knife[i,0];
								other.goal.y=obj_main.array_point_knife[i,1];
								other.goal=noone;
							}
						}
						
					}else{
						other.hspeed_push=direction_;			
						other.AI="down";					
					}
				}			
			}else{			
				if(global.mode_type==1){
					other.hspeed_push=direction_;			
					other.AI="down";					
						if(other.knife_){					
							other.knife_=false;
							obj_knife.Knife_find=false;
							var i=scr_point_distance_max();
							//show_debug_message("!!!!!"+string(i));
							obj_knife.x=obj_main.array_point_knife[i,0];
							obj_knife.y=obj_main.array_point_knife[i,1];
					
						}
						if(other.goal!=noone){
							var i=scr_point_distance_max();
				
							other.goal.x=obj_main.array_point_knife[i,0];
							other.goal.y=obj_main.array_point_knife[i,1];
							other.goal=noone;
						}
					}else if (global.mode_type==2){
						if(!other.knife_){
							other.hspeed_push=direction_;			
							other.AI="down";					
							if(other.knife_){					
								other.knife_=false;
								obj_knife.Knife_find=false;
								var i=scr_point_distance_max();
								//show_debug_message("!!!!!"+string(i));
								obj_knife.x=obj_main.array_point_knife[i,0];
								obj_knife.y=obj_main.array_point_knife[i,1];
							}
							if(other.goal!=noone){
								var i=scr_point_distance_max();
				
								other.goal.x=obj_main.array_point_knife[i,0];
								other.goal.y=obj_main.array_point_knife[i,1];
								other.goal=noone;
							}
						}
						
					}else{
						other.hspeed_push=direction_;			
						other.AI="down";					
					}
			}
		}
	
	}
	if(attack&&knife_&&other.AI!="down"&&other.active){
		if(global.mode_type==1){
			other.health_-=20;
			//score_+=10;
			other.hspeed_push=direction_;
			other.AI="down";
			if(other.health_<=0){
				//instance_deactivate_object(other);
				other.active=false;
				other.motivation="";
				//other.image_alpha=50;
				//alarm[0]=5;
			}
			//attack=0;
		}else if(global.mode_type==2){
			if(!other.knife_){
				other.health_-=20;
				//score_+=10;
				other.hspeed_push=direction_;
				other.AI="down";
				if(other.health_<=0){
					//instance_deactivate_object(other);
					other.active=false;
					other.motivation="";
					//other.image_alpha=50;
					//alarm[0]=5;
				}	
			}
		}else{
			other.hspeed_push=direction_;			
			other.AI="down";					
		}
	}
