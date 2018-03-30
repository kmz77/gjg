/// @description Initialize variables
spd = 3;
dmg = 1;
max_speed = 2;
cooldown = 7;

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
gun_x = x + image_xscale*7
gun_y = y - 9;