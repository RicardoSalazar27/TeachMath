/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 1DA98C43
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives == 0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 26DB5680
	/// @DnDParent : 1DA98C43
	/// @DnDArgument : "obj" "Obj_GameOver"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "Obj_GameOver"
	var l26DB5680_0 = false;
	l26DB5680_0 = instance_exists(Obj_GameOver);
	if(!l26DB5680_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 588C6F35
		/// @DnDParent : 26DB5680
		/// @DnDArgument : "objectid" "Obj_GameOver"
		/// @DnDSaveInfo : "objectid" "Obj_GameOver"
		instance_create_layer(0, 0, "Instances", Obj_GameOver);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5EA3888A
		/// @DnDApplyTo : {Obj_player_hurt}
		/// @DnDParent : 26DB5680
		with(Obj_player_hurt) instance_destroy();
	}
}