randomize();
global.kills_this_room = 0;

audio_stop_all();
switch(room){
	case room_title:
		audio_play_sound(snd_intro_music, 1, true);
	break;
	
	case room_introduction:
		audio_play_sound(snd_intro_music2, 1, true);
	break;
	
	case room_1:
		audio_play_sound(snd_level1_music, 1, true);
	break;
	
	case room_2:
		audio_play_sound(snd_level2_music, 1, true);
	break;
	
	case room_3:
		audio_play_sound(snd_level3_music, 1, true);
	break;
	
	case room_boss:
		audio_play_sound(snd_boss_music, 1, true);
	break;
	
	case room_game_over:
		audio_play_sound(snd_game_over_music, 1, true);
	break;
	
}