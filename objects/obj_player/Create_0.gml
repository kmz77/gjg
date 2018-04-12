/// @description Initialize variables
spd = 2//2.25;//3; 
dmg = 1;
max_speed = 2;
cooldown = 7;
hp = 20;
scraps = 0;

enum states
{
	idle,
	running
}

hit = false;
immune_timer = 0;
state = states.idle;
hsp = 0;
vsp = 0;
acc = 0.5;
shoot_timer = 0;
gun_x = x + image_xscale*7
gun_y = y - 9;
gun_rot = 0;