/// @description Move to next level
with(obj_player){

	if(has_control){
		has_control = false;
		SlideTransition( TRANS_MODE.GOTO, other.target ); 
	}

}
