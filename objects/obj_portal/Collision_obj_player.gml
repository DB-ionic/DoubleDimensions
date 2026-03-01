if (other.pode_teleportar and keyboard_check_pressed(ord("Q")) and !instance_exists(obj_transicao_efeito))
{
    other.pode_teleportar = false; // trava logo no começo

    other.velv = 0;

    if (global.sala_padrao)
    {
        global.estado_caixas_padrao = [];
    }
    else
    {
        global.estado_caixas_altenardas = [];
	
    }

    with (obj_caixa)
    {
	
        if (global.sala_padrao)
        {
            array_push(global.estado_caixas_padrao, {
                x: x,
                y: y,
                verde: sou_verde
            });
        }
        else
        {
            array_push(global.estado_caixas_altenardas, {
                x: x,
                y: y,
                verde: sou_verde
            });
        }
		
    }

    alarm[0] = 10;
}





//if(global.sala_padrao){
//global.estado_caixas_padrao = [];
//}
//else{
//global.estado_caixas_altenardas = [];
//show_message("INICIO" + string(array_length(global.estado_caixas_altenardas)))
//}

//if(global.sala_padrao){
//alarm[1] = 5

//}
//	else{
//alarm[2] = 5

//	}


////sem esse alarme nao funciona, provavelmente ele inicia a room antes
////do array terminar por alguma razâo
//alarm[0] = 10
//other.pode_teleportar = false


//}