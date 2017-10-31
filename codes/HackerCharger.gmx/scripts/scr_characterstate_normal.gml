




//slowing and speeding time------------------------
if mouse_left_pressed
    {
    slow = true
    slowtime = 90
    global.all_var = global.all_var_low//slowed time

    
    cursor.visible = true
    
    
    state = states.slowtime
    
    
    }


    
image_speed = speed / 200

image_angle = direction



if coll_with_death = true then state = states.destroy


