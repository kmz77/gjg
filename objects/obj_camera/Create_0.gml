/// @description Set up the camera
camera = camera_create();
cam_spd = 0.4;
cam_dist = 56;

camera_set_view_size(camera,view_w,view_h);

depth = 1000;
/*camera_set_view_target(camera,obj_player);
camera_set_view_border(camera,0.5*ideal_width-32,0.5*ideal_height-32);
camera_set_view_speed(camera,-1,-1);*/