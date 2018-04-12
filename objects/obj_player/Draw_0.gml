/// @description Draw the gun
var draw_rot = gun_rot;
var xscale = 1;
if (gun_rot > 90 + 15*image_xscale) && (gun_rot < 280 - 15*image_xscale)
{
	xscale = -1;
	draw_rot += 180;
}


if (gun_rot > 60) && (gun_rot < 120)
{
	draw_sprite_ext(spr_gun,0,gun_x,gun_y,xscale,1,draw_rot,c_white,1);
	if (hit)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_red,1);
		hit = false;
	}
	else
	{
		draw_self();//draw_sprite_ext(sprite_index,image_index,round_n(x,1),round_n(y,1),image_xscale,1,0,c_white,1); // Draw self
	}
}
else
{
	if (hit)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_red,1);
		hit = false;
	}
	else
	{
		draw_self();//draw_sprite_ext(sprite_index,image_index,round_n(x,1),round_n(y,1),image_xscale,1,0,c_white,1); // Draw self
	}
	draw_sprite_ext(spr_gun,0,gun_x,gun_y,xscale,1,draw_rot,c_white,1);
}