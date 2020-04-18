if(buffer <= 0){
	hp--;
	flash = flash_when_hit;
	shield = false;
	audio_play_sound(snd_playerhit, 10, false);
	if(hp <= 0){
		KillPlayer();
	}
	buffer = base_buffer;
}