//acho que esse if é desnecessario
if(room != RoomFinal){
if(global.sala_padrao){
	audio_sound_gain(snd_musica_verde, 1, 10)
	audio_sound_gain(snd_musica_amarela, 0, 10)
	if(devo_criar_verde){
		if(room == Room02_verde){
				devo_criar_verde = false
		instance_create_layer(56,143,"Caixas",obj_caixa)
		}
		if(room == Room05_verde){
				devo_criar_verde = false
		instance_create_layer(216,62,"Caixas",obj_caixa)
		}
		if(room == Room06_verde){
				devo_criar_verde = false
		instance_create_layer(136,96,"Caixas",obj_caixa)
		instance_create_layer(216,80,"Caixas",obj_caixa)
		}
	}
}
else{
	audio_sound_gain(snd_musica_amarela, 1, 10)
	audio_sound_gain(snd_musica_verde, 0, 10)
	if(devo_criar_amarela){
		if(room == Room04_amarela){
				devo_criar_amarela = false
		instance_create_layer(160,128,"Caixas",obj_caixa)
		}
		if(room == Room06_amarela){
				devo_criar_amarela = false
		instance_create_layer(104,128,"Caixas",obj_caixa)
		}
	}
}
}
else{
	audio_sound_gain(snd_musica_espacial, 1, 10)
	audio_sound_gain(snd_musica_verde, 0, 10)
	audio_sound_gain(snd_musica_amarela, 0, 10)
}
