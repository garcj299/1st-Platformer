x = obj_player.x+6;
y = obj_player.y+9;

image_angle = point_direction(x, y, mouse_x, mouse_y);

//firing
firingdelay = firingdelay - 1;
if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	firingdelay = 7;
	with (instance_create_layer(x, y, "bullet_layer", obj_bullet))
	{
		recoil = 4;
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
		//"other" means the property (in this case the image_angle) from the original object
		// you are in, in this case obj_gun, so it is taking the gun's angle and  using it for the bullet's angle.
	}
}



