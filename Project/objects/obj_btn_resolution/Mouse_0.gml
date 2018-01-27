/// @description Insert description here
// You can write your code in this editor
var width;
var height;

switch(image_index)
{
	case 0:
	width=1920;
	height=1080;
	break;
	
	case 1:
	width=1600;
	height=900;
	break;
	
	case 2:
	width=1400;
	height=1050;
	break;
	case 3:
	width=1366;
	height=768;
	break;
	
	case 4:
	width=1280;
	height=720;
	break;
	
	case 5:
	width=1024;
	height=768;
	break;
	
	case 6:
	width=800;
	height=600;
	break;
	
	case 7:
	width=800;
	height=480;
	break;
}

ini_open("game_settings.ini");
ini_write_real("settings","width",width);
ini_write_real("settings","height",height);
ini_close();

global.display_width=width;
global.display_height=height;

scr_resolution();
