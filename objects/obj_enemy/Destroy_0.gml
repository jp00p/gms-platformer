var loot_chance = irandom_range(0,100);
if(loot_chance >= 66){ // 33% chance for drop
	
	with(instance_create_layer(x,y,"Instances",obj_powerup)){
		var loot_roll = irandom_range(0,100);
		var loot_type;

		if(loot_roll <= 40){
			loot_type = "hp";
		}else if(loot_roll > 35 && loot_roll <= 60){
			loot_type = "shield";
		}else if(loot_roll > 60 && loot_roll <= 80){
			loot_type = "max_hp";
		}else if(loot_roll > 80 && loot_roll <= 95){
			loot_type = "1up";
		}else{
			loot_type = "fast_gun";
		}
		powerup = loot_type;
	}
	
}