/// @description Insert description here
// You can write your code in this editor
layer_set_visible("Backgrounds_2",false);
global.mode_type=0;
obj_btn_start.image_index=0;
obj_btn_start.image_speed=0;

obj_btn_mode1.image_index=0;
obj_btn_mode1.image_speed=0;

obj_btn_mode_gush.image_index=1;
obj_btn_mode_gush.image_speed=0;

obj_btn_mode2.image_index=0;
obj_btn_mode2.image_speed=0;

var x_=room_width/4;
var y_=room_height/8-50;

for(var i=0;i<8;i++){
	var btn=instance_create_layer(x_,y_,"Instances",obj_btn_resolution);
	btn.image_index=i;
	btn.image_speed=0;
	y_+=btn.sprite_height+5;
}



/*var base_w = 1920;
var base_h = 1080;
var max_w = display_get_width();
var max_h = display_get_height();
var aspect = display_get_width() / display_get_height();
if (max_w < max_h)
    {
    // portait
    var VIEW_WIDTH = min(base_w, max_w);
    var VIEW_HEIGHT = VIEW_WIDTH / aspect;
    }
else
    {
    // landscape
    var VIEW_HEIGHT = min(base_h, max_h);
    var VIEW_WIDTH = VIEW_HEIGHT * aspect;
    }

view_wview[0] = floor(VIEW_WIDTH);
view_hview[0] = floor(VIEW_HEIGHT);
view_wport[0] = max_w;
view_hport[0] = max_h;

surface_resize(application_surface, view_wview[0], view_hview[0]);
*/