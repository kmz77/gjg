/// @description Initialize enemy

ab_to_shoot = false;
cooldown = 0.5;
shoot_cooldown = room_speed*2;

shoot_timer = irandom(shoot_cooldown);
hit = false;
spr_idle = noone;
spr_running = noone;
path = path_add();
alarm[0] = room_speed*cooldown;