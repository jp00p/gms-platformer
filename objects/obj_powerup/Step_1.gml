//sprite_index = powerup_spr;
switch(powerup){
	case "shield":
		sprite_index = spr_powerup_shield;
	break;
	
	case "doublejump":
		sprite_index = spr_powerup_doublejump;
	break;
	
	case "power_gun":
		sprite_index = spr_powerup_glowbook;
	break;
	
	case "hp":
		sprite_index = spr_powerup_hp;
	break;
	
	case "max_hp":
		sprite_index = spr_powerup_maxhp;
	break;
	
	case "fast_gun":
		sprite_index = spr_powerup_book;
	break;
	
	default:
		sprite_index = spr_powerup_shield;
	break;
}