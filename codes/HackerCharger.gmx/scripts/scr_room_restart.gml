///restart room

room_restart()
with(obj_player)
    {
    instance_destroy()
    }

var inst = instance_create(obj_player_checkpoint.x,obj_player_checkpoint.y,obj_player)
with(inst)
    {
    direction = obj_player_checkpoint.target_dir
    }

