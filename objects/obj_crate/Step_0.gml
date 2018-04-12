/// @description Spawn scrap when destroyed
if (hp <= 0)
{
	repeat(choose(2,2,3))
	{
		with (instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-8,4),"Instances",obj_scrap))
		{
			image_angle = random(359);
		}
	}
	instance_destroy();
}