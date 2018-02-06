var displayWidht=global.display_width;
var displayHeight=global.display_height;

display_set_gui_size(displayWidht,displayHeight);

window_set_size(displayWidht,displayHeight);

var baseWidth=1920;
var baseHeight=1080;

var aspect_ratio=baseWidth/baseHeight;

var height=min(baseHeight,displayHeight);
var width=height*aspect_ratio;

if(displayWidht>=displayHeight){

	 height=min(baseHeight,displayHeight);
	 width=height*aspect_ratio;
}

surface_resize(application_surface,width,height);
window_set_fullscreen(true);