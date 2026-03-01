
tremer = function(){

view_xport[0] = random_range(-global.shake,global.shake);

view_yport[0] = random_range(-global.shake*.5,global.shake*.5);



	global.shake = lerp(global.shake, 0, 0.1);
	
	if(global.shake <= .1){
		global.shake = 0;
	}

}
