//slowing and speeding time------------------------
global.all_var = 0

if mouse_left_pressed
    {
    slow = true
    slowtime = 90
    global.all_var = global.all_var_low//slowed time
    speed = spd
    cursor.visible = true
    state = states.slowtime
    }

image_speed = 0 //speed / 200
image_angle = direction

if coll_with_death = true then state = states.destroy;
scr_coll_with_changer();



