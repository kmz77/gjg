/// @description Dynamic camera movement
var mx = mouse_x;
var my = mouse_y;

var xt, yt;
direction = point_direction(x,y,mx,my);
xt = obj_player.x + lengthdir_x(min(cam_dist,distance_to_point(mx,my)),direction);
yt = obj_player.y + lengthdir_y(min(cam_dist,distance_to_point(mx,my)),direction);

x += (xt - x)/20;
y += (yt - y)/20;

// Set the new position
view_x = lerp(view_x, x - view_w/2, cam_spd);
view_y = lerp(view_y, y - view_h/2, cam_spd)

// Clamp inside room
view_x = clamp(view_x,32,room_width-view_w-32);
view_y = clamp(view_y,32,room_height-view_h-32);

// Set the camera
camera_set_view_size(camera,view_w,view_h);

var _round = view_w/surface_get_width(application_surface);
camera_set_view_pos(camera,round_n(view_x,_round),round_n(view_y,_round));