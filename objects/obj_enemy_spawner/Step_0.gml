if(delay <= 0){
	if(num_monsters < max_enemies){	
		image_index = 0;
		image_speed = 1;
		with(instance_create_layer(x,y, "Enemies", enemy)){
			flash = 1;
			owner = other;
			h_spd = h_spd*sign(other.spawn_dir);
			other.num_monsters++;
		}
	}
	delay = delay_in_secs * room_speed;
} else {
	delay--;
}