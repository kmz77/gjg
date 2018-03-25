/// @description Initialize variables

spd = 2;
cooldown = room_speed*0.25;

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