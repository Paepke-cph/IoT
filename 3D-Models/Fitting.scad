
hole_thickness = 3;
$fn = 64;
model_center = true;

// Transformer mount
transformer_thickness = 5;
transformer_width = 60 + transformer_thickness*2;
transformer_depth = 40;
transformer_hole_spacing = 25;
transformer_hole_offset = 20;

// Wall mount
wall_mount_width = 50;
wall_mount_depth = transformer_depth;
wall_mount_thickness = transformer_thickness;

// Tab
tab_width = 20;
tab_depth = transformer_depth;
tab_thickness = transformer_thickness;

magic_value = transformer_thickness / 2;

// Transformer
difference() {
    cube([transformer_width,transformer_depth,transformer_thickness], center=model_center);
    translate([-(transformer_width/2)+transformer_hole_offset,0,0])
        cylinder(r=hole_thickness,h=transformer_thickness, center=model_center);
    translate([-(transformer_width/2)+transformer_hole_offset+transformer_hole_spacing,0,0])
        cylinder(r=hole_thickness,h=transformer_thickness, center=model_center);    
 }

// Wall
translate([(-transformer_width/2)+wall_mount_thickness/2,0,(wall_mount_width/2)-magic_value])
    rotate(90, [0,1,0])
        difference() {    
            cube([wall_mount_width,wall_mount_depth,wall_mount_thickness], center=model_center);
            cylinder(r=hole_thickness,h=transformer_thickness, center=model_center);
        }
        
// Tab
translate([-((-transformer_width/2)+tab_thickness/2),0,-(tab_width/2)+transformer_thickness-magic_value])
    rotate(90, [0,1,0])
        cube([tab_width,tab_depth,tab_thickness], center=model_center);