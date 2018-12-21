//update destination
if (instance_exists(follow))
{
	xto = follow.x;
	yto = follow.y;
}

//update object position

x += (xto - x) / 25;
y += (yto - y) / 25;
x = clamp(x, view_w_half+buff, room_width-view_w_half-buff); 
y = clamp(y, view_h_half+buff, room_height-view_h_half-buff);

//shake things
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

//"paralax" background

if (layer_exists("mountains"))
{
	layer_x("mountains", x/2)
}

if (layer_exists("trees"))
{
	layer_x("trees", x/4)
}

