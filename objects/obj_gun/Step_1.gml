x = obj_player.x+6;
y = obj_player.y+9;

image_angle = point_direction(x, y, mouse_x, mouse_y);

//firing
firingdelay = firingdelay - 1;

recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) and (firingdelay < 0)
{
	firingdelay = 8;
	recoil = 2;
	screen_shake(1.5,10);
	audio_sound_pitch(bullet_sound,random_range(1.1,1));
	audio_play_sound(bullet_sound, 5, false);
	
	with (instance_create_layer(x, y, "bullet_layer", obj_bullet))
	{
		//acuracy, bullet speed and amimig
		speed = 45;
		direction = other.image_angle + random_range(-2,2);
		image_angle = direction;
		//"other" means the property (in this case the image_angle) from the original object
		// you are in, in this case obj_gun, so it is taking the gun's angle and  using it for the bullet's angle.
		with (obj_player) 
		{
			vsp = vsp - 7;//actually move with the gun
			if (vsp < -20) vsp = vsp + 2; //don't speed up too much
			if (vsp >= 0) vsp = -4;//stop when you start
		}
	}
}
//recoil
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

if (image_angle > 90) and (image_angle < 270)
{
	image_yscale = -2;
}
else
{
	image_yscale = 2;
}





