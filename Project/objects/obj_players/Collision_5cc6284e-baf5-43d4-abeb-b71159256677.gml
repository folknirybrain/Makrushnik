/// @description collision_with_knife
// You can write your code in this editor
if((AI=="idle"||AI=="panch")&&!knife_&&!other.Knife_find){
	knife_=true;
	other.Knife_find=true;
}
//instance_destroy(obj_knife);