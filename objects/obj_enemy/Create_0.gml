/// @description Initialize enemy

cooldown = 0.5;
spr_idle = noone;
spr_running = noone;
path = path_add();
alarm[0] = room_speed*cooldown;