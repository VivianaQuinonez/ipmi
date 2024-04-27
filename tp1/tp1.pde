//tp1
// VIVIANA QUIÑONEZ LUGONES
// COMISION 5

PImage uva;
//HICE LO QUE PUDE

void tallo() {
  stroke(49, 98, 57);
  strokeWeight(20);
  line (642,63,576,217);
  noStroke ();
}

void circuloUva(int x, int y) {
  stroke(0);
  strokeWeight(4);
  fill (139,71,149);
  circle(x,y,52);
  fill (169,79,183);
  noStroke ();
  circle(x-5,y-3,33);
  noStroke ();
  fill (255);
  ellipse (x-5,y-15,12,5);
  noStroke (); 
} 

void setup () {
  size (800,400);
  background (255);
  uva = loadImage ("uva.jpg");
  uva.resize (400,400);
}

void draw () {
  image (uva,0,0);
  fill (51,180,71);
  bezier(537.0,93.0,533.0,200.0,643.0,102.0,537.0,93.0);
  fill (51,180,71);
  bezier(508.0,132.0,543.0,234.0,613.0,109.0,510.0,129.0);
  fill (51,180,71);
  noStroke ();
  bezier(589.0,96.0,552.0,162.0,626.0,153.0,589.0,96.0);
  fill (51,180,71);
  noStroke ();
  bezier(675.0,87.0,552.0,143.0,715.0,214.0,676.0,87.0);
  fill (51,180,71);
  noStroke ();
  bezier(602.0,103.0,537.0,214.0,707.0,171.0,603.0,102.0);
  fill (51,180,71);
  noStroke ();
  fill (51,180,71);
  bezier(706.0,133.0,611.0,107.0,652.0,220.0,706.0,137.0);
  noStroke ();
  tallo();
  circuloUva (575,165); 
  circuloUva (674,165);
  circuloUva (625,165);
  circuloUva (543,204);  
  circuloUva (590,204);  
  circuloUva (640,204); 
  circuloUva (685,204); 
  circuloUva (570,245); 
  circuloUva (615,245); 
  circuloUva (659,245);
  circuloUva (593,289);
  circuloUva (639,289);
  circuloUva (614,329); 
  println ("X:");
  println (mouseX);
  println (mouseY);
  println ("Y:");  
}
