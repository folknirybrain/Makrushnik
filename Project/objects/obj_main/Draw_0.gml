/// @description Insert description here
// You can write your code in this editorfon

draw_set_colour(c_blue);
draw_set_font(AAA);
draw_text(140,30,string(player[0].score_));
draw_text(690,30,string(player[1].score_));
draw_text(1220,30,string(player[2].score_));
draw_text(1700,30,string(player[3].score_));
draw_text(1000,500,string(global.mode_type));
draw_text(1000,600,string(view_xport[0]));
//draw_text(1000,700,string(player[0].x));
/*
var j=0;
for (var i = 0; i < 12; i++;)
{

if gamepad_is_connected(i)
    {
	
	j+=1;
	var xx = 32;
	var yy = 32 + (200 * j);
    draw_text(xx, yy, "Gamepad Slot - " + string(i));
    draw_text(xx, yy + 20, "Gamepad Type - " + string(gamepad_get_description(i)));
    draw_text(xx, yy + 40, "Left H Axis - " + string(gamepad_axis_value(i, gp_axislh)));
    draw_text(xx, yy + 60, "Left V Axis - " + string(gamepad_axis_value(i, gp_axislv)));
    draw_text(xx, yy + 80, "Right H Axis - " + string(gamepad_axis_value(i, gp_axisrh)));
    draw_text(xx, yy + 100, "Right V Axis - " + string(gamepad_axis_value(i, gp_axisrv)));   
    draw_text(xx, yy + 120, "Fire Rate - " + string(gamepad_button_value(i, gp_shoulderrb)));
	for (var r = 0; r < 4; r++;)
	{
		if(player[r].pad_num==i){
			draw_text(xx, yy + 140, "Player - " + string(r));	
			draw_text(xx, yy + 160, "Padtype_ -                   " + string(player[r].pad_type));	
		}else{
			//draw_text(xx, yy + 180, "padtype_ - " + string(player[r].pad_type));	
		}
		
	}
	

    }
else
    {
   // draw_text(xx, yy, "Gamepad Slot - " + string(i));
   // draw_text(xx, yy + 20, "Gamepad not connected" + string(gamepad_get_description(i)));
    }
}

 */
 
 