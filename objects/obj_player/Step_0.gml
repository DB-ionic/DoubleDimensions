if(room != RoomFinal){
pega_input()


switch(estado){
	case states.movendo:
	
		if(toquei_caminhada and velh != 0 and chao){
		audio_play_sound(snd_andando,1,0,1,0,random_range(1.8,2.2))
		toquei_caminhada = false
		alarm[1] = room_speed*.3
		}
	
	
		image_blend = c_white
	sprite_index = spr_personagem
	velh = (right - left)*max_vel
	
	if(right-left !=0){
		image_xscale =right-left
	}

	if(!chao){
		velv += grav
	}
	else{
		if(toquei){
			audio_play_sound(snd_andando,1,0,1,0,random_range(1.2,1.5))
			toquei = false
		}
		velv = 0
		if(pulo){
			velv = -max_pulo
			audio_play_sound(snd_jump,1,0,1,0,random_range(.9,1.2))
			toquei = true
		}

	}
	
	if(velv == 0 and velh == 0 and chao){
		estado = states.parado
	}
	
	if(empurra){
		estado = states.empurrando
	}
	
	
	break;
	
	case states.parado:
	sprite_index = spr_personagem_parado
	if((right xor left)){
		estado = states.movendo
	}
	
	
	if(!chao){
		estado = states.movendo
	}
	else{
	
		if(toquei){
			audio_play_sound(snd_andando,1,0,1,0,random_range(1.2,1.5))
			toquei = false
			
			}
		if(pulo){
			
			audio_play_sound(snd_jump,1,0,1,0,random_range(.9,1.2))
			velv = -max_pulo
			toquei = true
			estado = states.movendo
		}
		
	
	}
	
	if(empurra){
		estado = states.empurrando
	}
	
	
	break
	
	case states.empurrando:
	
	if(toquei_caminhada and velh != 0){
	audio_play_sound(snd_andando,1,0,1,0,random_range(1.8,2.2))
	toquei_caminhada = false
	alarm[1] = room_speed*.5
	}
	
	sprite = spr_personagem_empurrando_parado	
	if(right-left !=0){
		image_xscale =right-left
		sprite = spr_personagem_empurrando
	}
	sprite_index = sprite	
		velh = (right - left)
	
	if(!chao){
		velv += grav
	}
	else{
		velv = 0
		//if(pulo){
		//	velv = -max_pulo*.5
		//	audio_play_sound(snd_jump,1,0,1,0,random_range(.7,.8))
		//}

	}
	

	var dir = sign(velh); 
	var _caixa = instance_place(x + dir, y, obj_caixa);
	if (_caixa != noone) { 
		if (!place_meeting(_caixa.x + dir, _caixa.y, obj_chao)){
			_caixa.x += dir;
		}
		}

	
	if(empurra){
		estado = states.parado
		x-=image_xscale
		//if(_caixa!=noone){
		//_caixa.x+=velh}
	}
	
	
	break;
	
	
	
	//futura transicao
	case states.diminuindo:
	if(abs(image_xscale)>0)
	image_xscale -=sign(image_xscale)*.05
	break;
	
	case states.aumentando:
	if(abs(image_xscale) <1)
	image_xscale += sign(image_xscale)*+.05
	else{
	estado = states.parado
	}
	
	break;
}


if(keyboard_check_pressed(ord("P")) and instance_exists(obj_cria_caixas)){
	obj_cria_caixas.devo_criar_amarela = true;
	obj_cria_caixas.devo_criar_verde = true;
	global.caixas_transferidas = []
	global.estado_caixas_altenardas = []
	global.estado_caixas_padrao = []
	room_restart()
	x = global.xstartplayer;
	y = global.ystartplayer;

}


movimento2()


}