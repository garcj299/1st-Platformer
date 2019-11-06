
//Get Player Input
if (hascontrol)
{
	key_left = keyboard_check(ord("A")) or keyboard_check (vk_left);
	key_right = keyboard_check(ord("D")) or keyboard_check (vk_right);
	key_jump = keyboard_check_pressed(ord("W")) or keyboard_check (vk_space) or keyboard_check (vk_up);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

//Calculate Movement

if (place_meeting(x,y,obj_wall))
{
	 move = key_right - key_left;
	
	hsp = move * walksp;
}

//stop moving when touching the ground

if (hsp != 0) 
{
	//right stop
	if (hsp > 0)
	{
		hsp -= 1;
	}
	if (hsp > 0) and (hsp < 1)
	{
		hsp = 0;
	}
	//left stop
	if (hsp < 0)
	{
		hsp += 1;
	}
	if (hsp < 0) and (hsp > -1)
	{
		hsp = 0;
	}
	
}

//Gravity
canjump -= 1;
vsp = vsp+grv;

//Jumping
if (canjump > 0) and (key_jump)
{
	vsp = -20;
	canjump = 0;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,obj_wall))
{
	while (!place_meeting(x+sign(hsp),y,obj_wall))
	{
		x = x+sign(hsp);
	}
	
	hsp = 0;
	
}

x = x + hsp;

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
	sprite_index = spr_playerJump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	canjump = 10;
	if (sprite_index == spr_playerJump) 
	{
		audio_sound_pitch(landing_sound,choose(0.5,1.5));
		audio_play_sound(landing_sound, 4, false);
	}
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = spr_player;
	}
	else
	{
		sprite_index = spr_playerRun;
		
	}
	
}

if (hsp > 0) image_xscale = 2;

if (hsp < 0) image_xscale = -2;