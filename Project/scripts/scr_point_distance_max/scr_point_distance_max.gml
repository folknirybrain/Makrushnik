var array_resault=0;
var distance_return=0;
var distance_max=0;
for(var i=0;i<11;i++){
	distance_max=point_distance(obj_main.array_point_knife[i,0],obj_main.array_point_knife[i,1],obj_main.player[0].x,obj_main.player[0].y)+
		point_distance(obj_main.array_point_knife[i,0],obj_main.array_point_knife[i,1],obj_main.player[1].x,obj_main.player[1].y)+
		point_distance(obj_main.array_point_knife[i,0],obj_main.array_point_knife[i,1],obj_main.player[2].x,obj_main.player[2].y)+
		point_distance(obj_main.array_point_knife[i,0],obj_main.array_point_knife[i,1],obj_main.player[3].x,obj_main.player[3].y)	
	if(distance_return<distance_max){
		distance_return=distance_max;
		array_resault=i		
	}
}
//show_debug_message(string(distance_return)+"   "+string(i));
return array_resault