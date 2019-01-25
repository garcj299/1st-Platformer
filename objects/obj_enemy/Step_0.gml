//Gravity
vsp = vsp+grv;

//Don't walk off ledges
if (grounded) and (afraidOfHeights) and (!place_meeting(x+hsp,y+1,obj_wall))
{
	hsp = -hsp;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x+sign(hsp);
	} 
	hsp = -hsp;
}
x = x + hsp; //speed of enemy

//Vertical Collision
if (place_meeting(x,y+vsp,obj_wall))
{
	while (!place_meeting(x,y+sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
} 
y = y + vsp;

//Animations

if (!place_meeting(x, y+1, obj_wall))
{
	grounded = false;
	sprite_index = spr_enemyJump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	grounded = true;
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_enemy;
	}
	else
	{
		sprite_index = spr_enemyRun;
		
	}
	
}

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;










