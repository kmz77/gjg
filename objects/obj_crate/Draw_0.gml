/// @description Flash if hit
if (hit)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_black,1);
	hit = false;
}
else
{
	draw_self();
}