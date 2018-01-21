/// @description Insert description here
// You can write your code in this editor
Knife_find=false;
if(global.mode_type==1){
	Knife_type="weapon";
	sprite_index=asset_get_index("spr_knife");
}else{
	Knife_type="mutogen";
	sprite_index=asset_get_index("spr_mutogen");
}