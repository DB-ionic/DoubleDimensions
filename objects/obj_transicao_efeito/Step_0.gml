if(image_xscale > 40 and suficiente = false){
suficiente = true

if(instance_exists(obj_cria_caixas) and sprite_index == spr_transicao_preto){
obj_cria_caixas.devo_criar_amarela = true
obj_cria_caixas.devo_criar_verde = true
}

room_goto(rm_destino)
obj_player.x = x_dest_p;
obj_player.y = y_dest_p;
audio_play_sound(snd_portal_preto,1,0,1,0,random_range(.5,1))
global.shake =+ 10;
}


if(suficiente = false){
image_xscale+=1
image_yscale = image_xscale
}
else{
	x = x_dest_p;
	y = y_dest_p;
	image_xscale -=1
	image_yscale = image_xscale
	if(image_xscale < 0)
	instance_destroy()

}
