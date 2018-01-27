/// @description Insert description here
// You can write your code in this editor
// You can write your code in this editor
draw_set_colour(c_black);
draw_set_font(AAA);
draw_text(window_get_width()/2,window_get_height()/2-window_get_height()/3," ширина "+string(global.display_width)+" высота "+string(global.display_height));
draw_text(window_get_width()/2,window_get_height()/2-window_get_height()/4," aspect ratio "+string(global.display_width/global.display_height));