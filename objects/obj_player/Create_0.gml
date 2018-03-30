/// @description Initialize variables
spd = 2;
dmg = 1;
max_speed = 2;
cooldown = 10;

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