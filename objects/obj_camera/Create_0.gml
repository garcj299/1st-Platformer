cam = view_camera[0];
follow  = obj_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xto = xstart;
yto = ystart;

//shake
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 10;