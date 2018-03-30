/// @description Move

jump_in_direction(spd,dir);

with (obj_enemy) mask_index = msk_hit;
var obj = collision_line(xprevious,yprevious,x,y,obj_enemy,false,false);

if obj != noone
{
	with(obj)
	{
		if (!hit)
		{
			hp -= other.dmg;
			hit = true;
		}
	}
with (obj_enemy) mask_index = msk_idle;
instance_destroy();
}

with (obj_enemy) mask_index = msk_idle;

if (instance_exists(self))
{
	if (grid_place_meeting(self,obj_level.grid))
	{
		var _x = x;
		var _y = y;
		x = xprevious;
		y = yprevious;
		if (grid_place_meeting(self,obj_level.grid))
		{
			instance_destroy();
		}
		x = _x;
		y = _y;
	}
}