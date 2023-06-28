ram+=1;
if(global.roomname == "Room5"){
	audio_play_sound(sdCoin,0,0);
}else if(global.roomname == "Room4"){
	audio_play_sound(sdTimelost,0,0);
}


instance_destroy(other)
