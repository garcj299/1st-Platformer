hsp = 0;
vsp = 0;
grv = 0.3;
done = 0;

image_speed = 0;
image_index = 0;

screen_shake(6,60);
game_set_speed(30,gamespeed_fps);
with (obj_camera) follow = other.id;
