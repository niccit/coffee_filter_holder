// A simple holder for coffee filters
// Defualt size is for filter size #1

$fa = 1;
$fs = 0.4;

module holder() {
	union() {
		difference() {
			cube([165, 55, 70], center=true);
			translate([0, 0, 3])
				cube([170, 50, 70], center=true); 
			translate([-92, 0, -20])
				rotate([0, -30, 0])
	 				cube([70, 60, 95], center=true);
			translate([92, 0, -20])
				rotate([0, 30, 0])
	 				cube([70, 60, 95], center=true);
			translate([0, 27, 3])
				rotate([90, 0, 180])
					add_text(text="Coffee", height=4, size=18);
		}
		translate([-59.67, 0, -1])
			rotate([0, -30, 0])
				cube([5, 50, 70], center=true);
		translate([59.67, 0, -1])
			rotate([0, 30, 0])
				cube([5, 50, 70], center=true);
	}
}

module base() {
	difference() {
		minkowski() {
			cube([75, 60, 10], center=true);
				cylinder(r=10, h=10);
		}
		translate([0, 33, 9])
			rotate([90, 0, 180])
				add_text(text="Because adulting", height=8, size=7);
		translate([0, 33, 2])
			rotate([90, 0, 180])
				add_text(text="is hard", height=8, size=7);
	}
}

default_font="Roboto:style=Bold";
default_font_size=24;
default_font_direction="ltr";
default_font_spacing=1;

module add_text(text="TEST", font=default_font, size=default_font_size, height=6, direction=default_font_direction, spacing=default_font_spacing) {

	linear_extrude(height = height) {
	text(text, font=font, size=size, direction=direction, spacing=spacing, halign="center", valign="center");
	}
}


union() {
	holder();
	translate([0, 0, -50])
		base();
}



