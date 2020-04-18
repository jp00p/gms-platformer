///@desc what happens when player dies (game over handle)
game_set_speed(60, gamespeed_fps);
if(global.num_lives == 0 ){
	SlideTransition(TRANS_MODE.GOTO, room_game_over);
} else {
	SlideTransition(TRANS_MODE.GOTO, room);
}