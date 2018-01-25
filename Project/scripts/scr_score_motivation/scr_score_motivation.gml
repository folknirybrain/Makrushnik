var motivation=argument0;
var score_motivation=0;
for(var i=0;i<4;i++){
	
	if(obj_main.player[i].motivation==motivation){	
			score_motivation+=1;			
	}
}
score_motivation=4-score_motivation;
return score_motivation;