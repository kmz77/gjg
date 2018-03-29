/// @description Animate
// You can write your code in this editor

sprite_index = spr_running;
if xprevious == x
{
	//sprite_index = spr_idle;
}

if xprevious > x
{
	image_xscale = 1;
}
if xprevious < x
{
	image_xscale = -1;
}