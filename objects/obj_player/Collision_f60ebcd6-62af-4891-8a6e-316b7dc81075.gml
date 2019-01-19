/// @desc Die
with (obj_gun) instance_destroy();
instance_change(obj_playerDeath, true);

//direction the player dies
direction = point_direction(other.x,other.y,x,y);
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction)-2;
if (sign(hsp) != 0) image_xscale = sign(hsp);

