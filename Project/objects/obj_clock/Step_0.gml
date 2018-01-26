/// @description Insert description here
// You can write your code in this editor
if sec_<=0
{
	min_-=1
	sec_=60
}
if (min_<0)
{
	//show_debug_message("!@!@!@!@!@!@!@!@!@!@!@")
	room_goto(0);
}