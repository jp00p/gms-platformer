if(tick == move_range){
	// limit hit, turn around
	dir = -1;
} else if(tick == -move_range || tick == 0){
	dir = 1;
}

if((tick < move_range && tick != -move_range)||(tick > -move_range && tick != move_range)){
	
} 

tick = tick + dir;

if(move_horz){
	x += dir;
} else {
	y += dir;
}