$fn=36;
//$cable and $hood are radii
$cable=5.9/2;
$hood=9.4/2;
$hooddepth=3.6;


module plug()
{
	difference()
	{
		plugsolid();
		cylinder(h=25, r=$cable,center=true);
	}
}

module plugsolid()
{
	cylinder(h=6, r1=$cable,r2=$hood+2,center=true);
	translate([0,0,3+$hooddepth/2])
		cylinder(h=$hooddepth, r=$hood,center=true);
	translate([0,0,3+$hooddepth+1.2/2])
		cylinder(h=1.2, r=$hood+1,center=true);
}

module plughalved()
{
	difference()
	{
		plug();
		translate([-15,0,-10])
			cube([30,10,30]);
	}
}

plughalved();
