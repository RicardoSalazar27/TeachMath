/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 59E9710C
/// @DnDApplyTo : {Obj_controller_lives}
/// @DnDArgument : "lives" "-1"
/// @DnDArgument : "lives_relative" "1"
with(Obj_controller_lives) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 55586C44
/// @DnDArgument : "objind" "Obj_player_hurt"
/// @DnDSaveInfo : "objind" "Obj_player_hurt"
instance_change(Obj_player_hurt, true);