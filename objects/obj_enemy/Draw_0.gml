/// @description Insert description here
// You can write your code in this editor
if (hit)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,1,0,c_blue,1);
	hit = false;
}
else
{
	draw_self();
}