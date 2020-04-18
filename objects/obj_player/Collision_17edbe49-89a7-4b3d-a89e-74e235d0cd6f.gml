other.flash = 5;
with(other.teleport_to){
	if(sign(other.h_spd) > 0){
		var to_x = bbox_right+36;
	} else {
		var to_x = bbox_left-36;
	}
	var to_y = bbox_top;
}
audio_play_sound(snd_teleport, 10, false);
x = to_x;
y = to_y;