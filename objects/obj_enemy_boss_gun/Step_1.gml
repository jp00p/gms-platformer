x = owner.x;
y = owner.y;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(obj_player)){

		if(obj_player.x < x){
			// player to the left
			image_yscale = -image_yscale;
		}
		image_angle = point_direction(x, y, obj_player.x, obj_player.y);
	
		countdown--;
		
		if(countdown <= 0){
			countdown = countdown_rate;
			switch(owner.boss_move){
				case 3:
					audio_sound_pitch(snd_shoot, choose(0.5, 0.6, 0.4));
					audio_play_sound(snd_shoot, 5, false);
					repeat(9){
						with(instance_create_layer(x,y,"Projectiles",obj_boss_bullet)){
							spd = 9;
							direction = other.image_angle + random_range(-40, 40);
							image_angle = direction;
						}
					}
				break;
				case 2:
					audio_sound_pitch(snd_shoot, choose(0.5, 0.6, 0.4));
					audio_play_sound(snd_shoot, 5, false);
					repeat(6){
						with(instance_create_layer(x,y,"Projectiles",obj_boss_bullet)){
							spd = 2;
							direction = random_range(0, 360);
							image_angle = direction;
						}
					}
				break;
				case 1:
				default:
					audio_sound_pitch(snd_shoot, choose(0.5, 0.6, 0.4));
					audio_play_sound(snd_shoot, 5, false);
					with(instance_create_layer(x,y,"Projectiles",obj_boss_bullet)){
						spd = 3;
						direction = other.image_angle + random_range(-3, 3);
						image_angle = direction;
					}
				break;
			}				
		}
	
}