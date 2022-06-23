/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 3C4F670D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "Spr_lives"
/// @DnDSaveInfo : "sprite" "Spr_lives"
var l3C4F670D_0 = sprite_get_width(Spr_lives);
var l3C4F670D_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l3C4F670D_2 = __dnd_lives; l3C4F670D_2 > 0; --l3C4F670D_2) {
	draw_sprite(Spr_lives, 0, x + 0 + l3C4F670D_1, y + 0);
	l3C4F670D_1 += l3C4F670D_0;
}