x = owner.x;
y = owner.y+10; // in their arms

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if(instance_exists(obj_player)){
	if(obj_player.x < x){
		// player to the left
		image_yscale = -image_yscale;
	}
	if(point_distance(obj_player.x, obj_player.y, x, y) < range){
		image_angle = point_direction(x, y, obj_player.x, obj_player.y);
		countdown--;
		if(countdown <= 0){
			countdown = countdown_rate;
			if(!collision_line(x,y, obj_player.x, obj_player.y, obj_wall, false, false)){
				audio_sound_pitch(snd_shoot, choose(0.5, 0.6, 0.4));
				audio_play_sound(snd_shoot, 5, false);
				with(instance_create_layer(x,y,"Projectiles",obj_enemy_bullet)){
					spd = 25;
					direction = other.image_angle + random_range(-3, 3);
					image_angle = direction;
				}
			}
		}
	}
}