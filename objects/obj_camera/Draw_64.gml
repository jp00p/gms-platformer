//DRAW SHADER =======================================================================
//if global.isShaderEnabled == true

if(blur){
	
	var shader    = shader_radialBlur;
		var u_vRatio = shader_get_uniform(shader, "u_vRatio");
		var u_amplitude = shader_get_uniform(shader, "u_amplitude");
            
		var amplitude = 0.1;
            
		shader_set(shader);
		    shader_set_uniform_f(u_vRatio, vRatio);
		    shader_set_uniform_f(u_amplitude, amplitude);
		    draw_surface(application_surface,0,0);
		shader_reset();
}


if(lightning_tick <= 0 && room == room_2 && y < 1000){
	
	lightning_chance = choose(0,1);
	if(lightning_chance != 0){
		shader_set(shd_white);
		draw_surface(application_surface,0,0);
		with(instance_create_layer(random_range(0, RES_W), obj_camera.bbox_top, "Lightning", obj_lightning)){
			image_yscale = 4;
			image_xscale = choose(1,2,3);
		}
		shader_reset();
		
	}
	lightning_tick = choose(0,1,2,3,4) * room_speed;
	
}
