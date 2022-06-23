/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6B454D60
/// @DnDArgument : "expr" "(y < other.y + 8) and (vspeed >0)"
if((y < other.y + 8) and (vspeed >0))
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 5B0EE850
	/// @DnDApplyTo : other
	/// @DnDParent : 6B454D60
	with(other) {
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6323D8B1
		/// @DnDParent : 5B0EE850
		speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 72D588A1
		/// @DnDParent : 5B0EE850
		/// @DnDArgument : "objind" "Obj_slime_dead"
		/// @DnDSaveInfo : "objind" "Obj_slime_dead"
		instance_change(Obj_slime_dead, true);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5E53A579
else
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 72669D4B
	/// @DnDApplyTo : {Obj_controller_lives}
	/// @DnDParent : 5E53A579
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(Obj_controller_lives) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 76E2E20D
	/// @DnDParent : 5E53A579
	/// @DnDArgument : "objind" "Obj_player_hurt"
	/// @DnDSaveInfo : "objind" "Obj_player_hurt"
	instance_change(Obj_player_hurt, true);
}