//move layer
layer_x("EndSprites", min(layer_get_x("EndSprites")+1,RES_W*0.5-32,));

//progress text
letters += spd;
text = string_copy(endtext[currentline],1,floor(letters));
if(letters >= length) && (keyboard_check(vk_anykey)){
	if(currentline+1 == array_length_1d(endtext)){
		SlideTransition(TRANS_MODE.RESTART);
	} else {
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);
	}
}