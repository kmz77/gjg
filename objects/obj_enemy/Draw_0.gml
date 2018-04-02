/// @description Flash if hit
if (hit)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_blue,1);
	hit = false;
}
else
{
	draw_self();//draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,1,0,c_white,1);
}