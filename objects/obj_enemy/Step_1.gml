//death animation
if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,obj_enemyDeath))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(5,direction);
		vsp = lengthdir_y(5,direction)+2;
		if (sign(hsp) != 0) image_xscale = sign (hsp);
	
	}
	instance_destroy();
	
	
}