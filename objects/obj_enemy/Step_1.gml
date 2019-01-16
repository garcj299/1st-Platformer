//death animation
if (hp <= 0)
{
	audio_play_sound(death_sound, 0, 0);
	with (instance_create_layer(x,y,layer,obj_enemyDeath))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(6,direction);
		vsp = lengthdir_y(6,direction)-2;
		if (sign(hsp) != 0) image_xscale = sign (hsp) * other.size;
		image_yscale = other.size;
	
	}
	instance_destroy();
	
}