if(global.pause){
	index++;
	audio_play_sound(sdMenumove,1,0);
	if(index >= posicao){
		index = 0;
	}
}