/// @description Insert description here
// You can write your code in this editor
if(goal!=noone){
	
	
	
	var i=scr_point_distance_max();
				
		goal.x=obj_main.array_point_knife[i,0];
		goal.y=obj_main.array_point_knife[i,1];
		goal=noone;
		motivation="bad";
		score_-=scr_score_motivation(motivation);		
}