include <MCAD/units.scad>
use <MCAD/bearing.scad>

rodsize = 6*mm;	    //threaded/smooth rod diameter
xaxis = 182.5*mm;	//width of base
yaxis = 266.5*mm;	//length of base

screwsize = M3;     //bearing bore/screw diameter
default_bearing = 623;
bearingsize = bearingOuterDiameter(default_bearing);
bearingwidth = bearingWidth(default_bearing);

rodpitch = rodsize / 6;
rodnutsize = 0.8 * rodsize;
rodnutdiameter = 1.9 * rodsize;
rodwashersize = 0.2 * rodsize;
rodwasherdiameter = 2 * rodsize;
screwpitch = screwsize / 6;
nutsize = 0.8 * screwsize;
nutdiameter = 1.9 * screwsize;
washersize = 0.2 * screwsize;
washerdiameter = 2 * screwsize;
partthick = 2 * rodsize;
vertexrodspace = 2 * rodsize;

c = [0.3, 0.3, 0.3];
rodendoffset = rodnutsize + rodwashersize * 2 + partthick / 2;
vertexoffset = vertexrodspace + rodendoffset;

renderrodthreads = false;
renderscrewthreads = false;
fn = 36;
