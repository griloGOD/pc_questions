if(global.pause){
	index--;
	audio_play_sound(sdMenumove,1,0);
	if(index < 0){
		index = posicao-1;
	}
}