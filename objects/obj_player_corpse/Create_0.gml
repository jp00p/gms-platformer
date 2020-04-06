h_spd = 0;
v_spd = 0;
grv = 0.2;
done = 0;

image_speed = 0.1;
image_index = -1;
ScreenShake(6,60);
audio_play_sound(snd_death, 10, false);
game_set_speed(15, gamespeed_fps);



with(obj_camera){
	follow = other.id;
}

