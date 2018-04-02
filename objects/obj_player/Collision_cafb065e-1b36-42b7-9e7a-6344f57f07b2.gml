/// @description Take damage
// You can write your code in this editor

with (other) mask_index = msk_idle;
//var obj = collision_line(xprevious,yprevious,x,y,obj_player,false,false);

if place_meeting(x,y,other)
{
	if (immune_timer <= 0)
	{
		hp -= 1;
		hit = true;
		immune_timer = 10;
	}
}