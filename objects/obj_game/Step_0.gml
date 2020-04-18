key_pause = keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape);

if(key_pause){
	paused = !paused;
}

if(paused){
	audio_pause_all();
    instance_deactivate_all(1);
}else{
	audio_resume_all();	
    instance_activate_all();
}