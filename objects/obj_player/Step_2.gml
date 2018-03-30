/// @description Set gun position
gun_x = x + image_xscale*7
gun_y = y - 9;

if (sprite_index == spr_player_idle)
{
	if (floor(image_index) == 0) || (floor(image_index) == 3)
	{
		gun_y --;
	}
}
else if (sprite_index == spr_player_running)
{
	if (floor(image_index) == 1) || (floor(image_index) == 3)
	{
		gun_y --;
	}
}

gun_rot = point_direction(gun_x,gun_y,mouse_x,mouse_y);