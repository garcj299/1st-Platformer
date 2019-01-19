///@desc Hit Flash
draw_self();
if (flash > 0)
{
 flash--;
 draw_sprite_ext(spr_enemy, 0, spr_enemy, spr_enemy, 1, 1, 0, c_white, 1);
 gpu_set_fog(true, c_white, -100, 100);
 draw_self();
 gpu_set_fog(false, c_white, -100, 100);


}