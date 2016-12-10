//move (hspd, vspd)
var hspd = argument[0];
var vspd = argument[1];

//horizontal collisions
if (grid_place_meeting(x+hspd, y)) {
    while (!grid_place_meeting(x+sign(hspd), y)){
        x+=sign(hspd);
    }
    hspd = 0;
}
//move horizontally
x+=hspd;
//vertical collisions
if (grid_place_meeting(x, y+vspd)) {
    while (!grid_place_meeting(x, y+sign(vspd))){
        y+=sign(vspd);
    }
    vspd = 0;
}
//Move verticlaly
y+=vspd;

