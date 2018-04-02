/// @description Take damage
if (!hit)
{
	hp --;
	hit = true;
}
with (other) instance_destroy();