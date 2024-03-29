




/*
var mid_coll = collision_line(x, y, x + 64 * cos(direction*pi/180) + hspeed, y + 64 * sin(direction*pi/180) + vspeed,obj_block,true,true) 
var up_coll = collision_line(x + 64 * sin(direction*pi/180), y + 64 * cos(direction*pi/180), x + 64 * sin(direction*pi/180) + hspeed, y + 64 * cos(direction*pi/180) + vspeed, obj_block,true,true)
var down_coll = collision_line(x - 64 * sin(direction*pi/180), y - 64 * cos(direction*pi/180), x - 64 * sin(direction*pi/180) + hspeed, y - 64 * cos(direction*pi/180) + vspeed, obj_block,true,true) 

*/


var r = x - bbox_left
var deg = direction*pi/180

var mid_coll = collision_circle(x + hspeed, y + vspeed, r, obj_block, true, true)

if mid_coll != noone//checks if the mid_coll kills the player.
    {
    var inst = mid_coll.object_index
    if object_is_ancestor( inst, obj_blockdeath) then coll_with_death = true
    }
else//think as if dir = 15. these are to check if there are some corners missed by mid_coll
    {
    var up_coll = collision_line(x - r * sin(deg), y - r * cos(deg), x - r * sin(deg) + hspeed, y - r * cos(deg) + vspeed, obj_block,true,true)
    var down_coll = collision_line(x + r * sin(deg), y + r * cos(deg), x + r * sin(deg) + hspeed, y + r * cos(deg) + vspeed, obj_block,true,true)
        
    
    if up_coll != noone
        {
        var inst = up_coll.object_index
        if object_is_ancestor( inst, obj_death) or object_is_ancestor( inst, obj_blockdeath) then coll_with_death = true
        }
    if down_coll != noone
        {
        var inst = down_coll.object_index
        if object_is_ancestor( inst, obj_death) or object_is_ancestor( inst, obj_blockdeath) then coll_with_death = true
        }
    }
    


 





