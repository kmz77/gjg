/// @description Animate
// You can write your code in this editor

sprite_index = spr_running;
if (x == xprevious) && (y == yprevious)
{
	sprite_index = spr_idle;
}

if (x > xprevious) || (x == xprevious)
{
	image_xscale = 1;
}
if (x < xprevious)
{
	image_xscale = -1;
}