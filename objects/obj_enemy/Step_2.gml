/// @description Animate
// You can write your code in this editor
if (distance_to_object(obj_player) < 256) && (alarm[0] == -1) alarm[0] = 1;

sprite_index = spr_running;
if (x == xprevious) && (y == yprevious)
{
	sprite_index = spr_idle;
}
else
{
	if (x > xprevious) || (x == xprevious)
	{
		image_xscale = 1;
	}
	if (x < xprevious)
	{
		image_xscale = -1;
	}
}