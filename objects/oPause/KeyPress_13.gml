if(global.pause){
	if (index == 0){
		audio_play_sound(sdMenuselect,1,0);
		global.pause = !global.pause;

	}else if(index == 2){
		audio_play_sound(sdMenuselect,1,0);
		room_goto(0);
	}
}