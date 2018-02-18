

if mouse_left_released or slowtime = 0
    {
    slow = false
    slowtime = -1
    
    global.all_var = 1// time at normal speed
    spd += acc
    
    direction = point_direction (x,y, mouse_x, mouse_y)
    
    cursor.visible = false
    
    
    
    state = states.normal
    }
    
slowtime--
image_angle = point_direction(x,y,mouse_x, mouse_y)
image_speed = speed / 288

if coll_with_death = true then
    {
    cursor.visible = false
    global.all_var = 1
    state = states.destroy
    }
scr_coll_with_changer()



