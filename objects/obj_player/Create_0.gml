/// @description Initialize variables
spd = 2;
max_speed = 2;
cooldown = 20;

enum states
{
	idle,
	running
}

state = states.idle;
hsp = 0;
vsp = 0;
acc = 0.5;
shoot_timer = 0;