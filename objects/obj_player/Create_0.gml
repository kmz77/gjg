/// @description Initialize variables

spd = 2;

enum states
{
	idle,
	running
}
state = states.idle;
hsp = 0;
vsp = 0;
acc = 0.5;


instance_create_layer(x, y, "Instances", o_camera);

