///grid_place_meeting(x,y)
var xx = argument[0];
var yy = argument[1];

/// remember our position
var xp = x;
var yp = y;

// update the position for the bbox calculations

x = xx;
y = yy;
//check for a x meeting

var x_meeting = (level.grid[# bbox_right div Cell_Width, bbox_top div Cell_Height] != Floor ) or 
                (level.grid[# bbox_left div Cell_Width, bbox_top div Cell_Height] != Floor );
               
                
//check for y meeting

var y_meeting = (level.grid[# bbox_right div Cell_Width, bbox_bottom div Cell_Height] != Floor) or 
                (level.grid[# bbox_left div Cell_Width, bbox_bottom div Cell_Height] != Floor);
               
//move back

x = xp;
y = yp;

//return either true or false
return x_meeting or y_meeting;
