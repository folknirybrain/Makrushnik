//if(instance_exists(per1) && instance_exists(per2) ){
	scr_move(per1,per2,per3,per4);
//}
h1.image_xscale=per1.health_/100;
h2.image_xscale=per2.health_/100;
h3.image_xscale=per3.health_/100;
h4.image_xscale=per4.health_/100;
var end_=sign(h1.image_xscale)+sign(h2.image_xscale)+sign(h3.image_xscale)+sign(h4.image_xscale)
if(end_==1){
	game_restart();
}