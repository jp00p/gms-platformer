ScreenShake(60,120);
game_set_speed(30, gamespeed_fps);
audio_play_sound(snd_boss_death,10,false);
obj_player.alarm[1] = 240;
instance_destroy(obj_boss_bullet);
instance_destroy(obj_enemy);