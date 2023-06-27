if (index == 0){
	audio_play_sound(sdMenuselect,1,0);
	room_goto_next();

}else if(index == 2){
	audio_play_sound(sdMenuselect,1,0);
	game_end()
}