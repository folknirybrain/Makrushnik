var array_resault=0;
var array_resault2=0;
var distance_return=0;
var distance_max1=0;
var distance_max2=0;
for(var i=0;i<11;i++){
	distance_max1=point_distance(obj_main.array_point_knife[i,0],obj_main.array_point_knife[i,1],obj_main.player[0].x,obj_main.player[0].y)+
		point_distance(obj_main.array_point_knife[i,0],obj_main.array_point_knife[i,1],obj_main.player[1].x,obj_main.player[1].y)+
		point_distance(obj_main.array_point_knife[i,0],obj_main.array_point_knife[i,1],obj_main.player[2].x,obj_main.player[2].y)+
		point_distance(obj_main.array_point_knife[i,0],obj_main.array_point_knife[i,1],obj_main.player[3].x,obj_main.player[3].y)	
	if(distance_return<distance_max1){
		distance_return=distance_max1;
		array_resault=i		
	}else if(distance_return>distance_max1){
		if(distance_max1>distance_max2){
			distance_max2=distance_max1;
			array_resault2=i	
		}
	}
}
array_resault=random_range(array_resault,array_resault2);
//show_debug_message(string(distance_return)+"   "+string(i));
return array_resault
