//update destination
if (instance_exists(follow))
{
	xto = follow.x;
	yto = follow.y;
}

//update object position

x += (xto - x) / 25;
y += (yto - y) / 25;

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
