if(paused){
	var sprite_col = 32;
	var text_col = (sprite_col*2);
	var sprite_row = 32;
	
	draw_set_alpha(0.8);
	draw_set_color(c_black);
	draw_rectangle(0,0,RES_W,RES_H,false);
	draw_set_alpha(1);
	
	DrawSetText(c_white, fnt_menu, fa_left, fa_top);
	draw_text(RES_W-80, 16, "PAUSED");
	
	draw_text(16,16,"Help:");
	
	draw_sprite(spr_powerup_doublejump, 0, sprite_col, (sprite_row*2)+8);
	draw_text(text_col, sprite_row*2, "Double Jump Power");
	
	draw_sprite(spr_powerup_glowbook, 0, sprite_col, (sprite_row*3)+8);
	draw_text(text_col, sprite_row*3, "Power Book (breaks some walls)");
	
	draw_sprite(spr_powerup_hp, 0, sprite_col, (sprite_row*4)+8);
	draw_text(text_col, sprite_row*4, "HP Up");
	
	draw_sprite(spr_powerup_maxhp, 0, sprite_col, (sprite_row*5)+8);
	draw_text(text_col, sprite_row*5, "Max HP Up");
	
	draw_sprite(spr_powerup_shield, 0, sprite_col, (sprite_row*6)+8);
	draw_text(text_col, sprite_row*6, "Shield (prevent 1 damage)");
	
	draw_sprite(spr_powerup_book, 0, sprite_col, (sprite_row*7)+8);
	draw_text(text_col, sprite_row*7, "Super Fast Spells (temporary)");
	
	draw_sprite(spr_powerup_1up, 0, sprite_col, (sprite_row*8)+8);
	draw_text(text_col, sprite_row*8, "1up");
	
	draw_text(sprite_col-16, sprite_row*10, "Powers and HP are reset each level.");
	draw_text(sprite_col-16, sprite_row*11, "Press CTRL+F to toggle fullscreen");
	
	
	
	
	
	
	
	
	
}
if((room != room_title) && (instance_exists(obj_player))){

	// weather effects
	if(room == room_1){
		draw_SHADER_fog(true);
	}
	if(room == room_2 && obj_player.y < 1100){
		draw_SHADER_rain(true);
	} else {
		draw_SHADER_rain(false);
	}
	
	
	// score
	kill_textscale = max(kill_textscale * 0.95, 1);
	DrawSetText(c_black,fnt_menu,fa_right,fa_top);
	// shadow
	draw_text_transformed(RES_W-8,12,string(global.kills)+" Kills",kill_textscale,kill_textscale,0);
	draw_set_color(c_white);
	// actual text
	draw_text_transformed(RES_W-10,10,string(global.kills)+" Kills",kill_textscale,kill_textscale,0);
	
	DrawSetText(c_black, fnt_hp, fa_left, fa_top);
	
	// health
	hp_bar = (obj_player.hp/obj_player.max_hp)*124;
	draw_set_alpha(0.8);
	draw_rectangle_color(13, 13, 13+hp_bar, 30, c_red, c_red, c_red, c_red, false);

	draw_text(17, 15, string(obj_player.hp)+"/"+string(obj_player.max_hp));
	draw_set_color(c_white);
	draw_text(16, 14, string(obj_player.hp)+"/"+string(obj_player.max_hp));
	draw_set_alpha(1);
	draw_sprite(spr_health_frame, 0, 12, 12);

	DrawSetText(c_white, fnt_hp, fa_left, fa_top);
	
	// lives
	draw_text(150, 13, "Lives: "+string(global.num_lives));
	
	// powers
	draw_text(13, 32, "Powers:");
	draw_sprite_ext(spr_powerup_doublejump,0, 78, 48, 1, 1, 0, c_dkgray, 0.5);
	if(obj_player.jump_number == 2){
		draw_sprite_ext(spr_powerup_doublejump,0, 78, 48, 1, 1, 0, c_white, 1);
	}
	draw_sprite_ext(spr_powerup_book,0, 110, 48, 1, 1, 0, c_dkgray, 0.5);
	if(obj_player.has_power_gun){
		draw_sprite_ext(spr_powerup_book,0, 110, 48, 1, 1, 0, c_white, 1);
	}
	
}