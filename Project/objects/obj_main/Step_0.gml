
h1.image_xscale=player[0].health_/100;
h2.image_xscale=player[1].health_/100;
h3.image_xscale=player[2].health_/100;
h4.image_xscale=player[3].health_/100;
var end_=sign(h1.image_xscale)+sign(h2.image_xscale)+sign(h3.image_xscale)+sign(h4.image_xscale)
if(end_==1){
	game_restart();
}