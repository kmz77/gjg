<<<<<<< HEAD
/// @description Draw the weapon

draw_self();

var offset = 0;
if (sprite_index == spr_player_idle)
{
	if (floor(image_index) == 0) || (floor(image_index) == 3)
	{
		offset = 1;
	}
}
else if (sprite_index == spr_player_running)
{
	if (floor(image_index) == 1) || (floor(image_index) == 3)
	{
		offset = 1;
	}
}

gun_rot = point_direction(x,y-7-offset,mouse_x,mouse_y);
var draw_rot = gun_rot;
var xscale = 1;
if (gun_rot > 90 + 15*image_xscale) && (gun_rot < 280 - 15*image_xscale)
{
	xscale = -1;
	draw_rot += 180;
}


if (gun_rot > 60) && (gun_rot < 120)
{
	draw_sprite_ext(spr_gun,0,x+image_xscale*7,y-6-offset,xscale,1,draw_rot,c_white,1);
	draw_self();
}
else
{
	draw_self();
	draw_sprite_ext(spr_gun,0,x+image_xscale*7,y-6-offset,xscale,1,draw_rot,c_white,1);
}
=======
/// @description Draw the weapon

draw_self();

var offset = 0;
if (sprite_index == spr_player_idle)
{
	if (floor(image_index) == 0) || (floor(image_index) == 3)
	{
		offset = 1;
	}
}
else if (sprite_index == spr_player_running)
{
	if (floor(image_index) == 1) || (floor(image_index) == 3)
	{
		offset = 1;
	}
}

gun_rot = point_direction(x,y-7-offset,mouse_x,mouse_y);
var draw_rot = gun_rot;
var xscale = 1;
if (gun_rot > 90 + 15*image_xscale) && (gun_rot < 280 - 15*image_xscale)
{
	xscale = -1;
	draw_rot += 180;
}


if (gun_rot > 60) && (gun_rot < 120)
{
	draw_sprite_ext(spr_gun,0,x+image_xscale*7,y-6-offset,xscale,1,draw_rot,c_white,1);
	draw_self();
}
else
{
	draw_self();
	draw_sprite_ext(spr_gun,0,x+image_xscale*7,y-6-offset,xscale,1,draw_rot,c_white,1);
}
>>>>>>> parent of a3d9d06... started on shooting mechanics
