// Gravidade


if (!place_meeting(x, y + 2, colisoes))
{
    y += 2;
}
else
{
    while (!place_meeting(x, y + 1, colisoes))
    {
        y += 1;
		
    }
}
//if(place_meeting(x,y,obj_caixa))
//x+=1

if(sou_verde)
sprite_index = spr_caixa_verde
else
sprite_index = spr_caixa_amarela

if(pode_teleportar){
image_alpha = 1
}
else{
image_alpha = 0.5 + abs((0.5 * sin(current_time / 100)));
}
if(ajustou == false){
	var _cax = instance_place(x,y+1,obj_caixa)
	if(_cax){
		var _pos = abs(_cax.x - x)
		if(_pos <=2)
		x = _cax.x
		ajustou = true
	}
}