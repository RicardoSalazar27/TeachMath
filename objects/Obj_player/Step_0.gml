/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 157590AB
/// @DnDArgument : "code" "$(13_10)#region//VERIFICAR SI ESTA SALTANDO O CAYENDO$(13_10)if vspeed >0 {$(13_10)fall = true$(13_10)}$(13_10)else{$(13_10)fall = false$(13_10)}$(13_10)if vspeed < 0{$(13_10)$(13_10)up = true;$(13_10)}$(13_10)else{$(13_10)up = false$(13_10)}$(13_10)#endregion$(13_10)$(13_10)#region//GRAVEDAD$(13_10)$(13_10)if place_free(x,y+1){$(13_10)$(13_10)	gravity = 1;$(13_10)}$(13_10)else{$(13_10)	gravity = 0;$(13_10)$(13_10)}$(13_10)$(13_10)if vspeed >= 20{$(13_10)	vspeed = 20 //limitar velocidad vertical$(13_10)}$(13_10)#endregion$(13_10)$(13_10)#region //MOVIMIENTO Y SALTO$(13_10)$(13_10)var Der = keyboard_check(vk_right);$(13_10)var Izq = keyboard_check(vk_left);$(13_10)var s = keyboard_check_pressed(vk_space);$(13_10)$(13_10)if s and !place_free(x,y+1){$(13_10)	sprite_index = Spr_player_jump;$(13_10)	vspeed = -Salto; //hara que se interrumpa la velocidad vertical hacia abajo$(13_10)	                 //y el personaje pueda saltar$(13_10)}$(13_10)$(13_10)if Der && place_free(x+V,y){$(13_10)	x += V;$(13_10)if fall = true{$(13_10)	$(13_10)	sprite_index= Spr_player_jump$(13_10)	}$(13_10)	else{$(13_10)		if up{$(13_10)		sprite_index = Spr_player_jump$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	sprite_index = Spr_player_walk;$(13_10)	image_speed = 1;$(13_10)	image_xscale = 1;$(13_10)}$(13_10)$(13_10)if Izq && place_empty(x-V,y) {$(13_10)	x -=V;   //mover personaje$(13_10)	$(13_10)	if fall = true{$(13_10)	$(13_10)	sprite_index= Spr_player_jump$(13_10)	}$(13_10)	else{$(13_10)		if up{$(13_10)		sprite_index = Spr_player_jump$(13_10)		}$(13_10)	}$(13_10)$(13_10)	sprite_index = Spr_player_walk;$(13_10)	image_speed = 1;$(13_10)	$(13_10)	image_xscale = -1;$(13_10)}$(13_10)#endregion$(13_10)$(13_10)if !keyboard_key$(13_10){$(13_10)	if fall == true$(13_10)		sprite_index = Spr_player_jump;$(13_10)	else$(13_10)	if up$(13_10)		sprite_index = Spr_player_jump;$(13_10)	else$(13_10)		sprite_index = Spr_player_stand;$(13_10)		$(13_10)	image_speed=0;$(13_10)	image_index=0;$(13_10)}$(13_10)$(13_10)/*$(13_10)if Der && Izq$(13_10){$(13_10)	image_speed = 0;$(13_10)	sprite_index = Spr_player_stand;$(13_10)	image_index = 0;$(13_10)}$(13_10)*/"

#region//VERIFICAR SI ESTA SALTANDO O CAYENDO
if vspeed >0 {
fall = true
}
else{
fall = false
}
if vspeed < 0{

up = true;
}
else{
up = false
}
#endregion

#region//GRAVEDAD

if place_free(x,y+1){

	gravity = 1;
}
else{
	gravity = 0;

}

if vspeed >= 20{
	vspeed = 20 //limitar velocidad vertical
}
#endregion

#region //MOVIMIENTO Y SALTO

var Der = keyboard_check(vk_right);
var Izq = keyboard_check(vk_left);
var s = keyboard_check_pressed(vk_space);

if s and !place_free(x,y+1){
	sprite_index = Spr_player_jump;
	vspeed = -Salto; //hara que se interrumpa la velocidad vertical hacia abajo
	                 //y el personaje pueda saltar
}

if Der && place_free(x+V,y){
	x += V;
if fall = true{
	
	sprite_index= Spr_player_jump
	}
	else{
		if up{
		sprite_index = Spr_player_jump
		}
	}
	
	sprite_index = Spr_player_walk;
	image_speed = 1;
	image_xscale = 1;
}

if Izq && place_empty(x-V,y) {
	x -=V;   //mover personaje
	
	if fall = true{
	
	sprite_index= Spr_player_jump
	}
	else{
		if up{
		sprite_index = Spr_player_jump
		}
	}

	sprite_index = Spr_player_walk;
	image_speed = 1;
	
	image_xscale = -1;
}
#endregion

if !keyboard_key
{
	if fall == true
		sprite_index = Spr_player_jump;
	else
	if up
		sprite_index = Spr_player_jump;
	else
		sprite_index = Spr_player_stand;
		
	image_speed=0;
	image_index=0;
}

/*
if Der && Izq
{
	image_speed = 0;
	sprite_index = Spr_player_stand;
	image_index = 0;
}
*//**/