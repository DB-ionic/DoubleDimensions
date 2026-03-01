if(instance_exists(obj_caixa)){
apareco = true

}
if(place_meeting(x,y,obj_player) and apareco){
ativo = true;
}
else{
ativo = false;
texto_index = 0;
texto_atual = "";
texto_timer = 0;
}

if(ativo){
    if(texto_index < string_length(texto)){
        texto_timer += 1;
        if(texto_timer >= texto_velocidade){
            texto_index += 1;
            texto_timer = 0;
            texto_atual = string_copy(texto, 1, texto_index);
        }
    }
}
