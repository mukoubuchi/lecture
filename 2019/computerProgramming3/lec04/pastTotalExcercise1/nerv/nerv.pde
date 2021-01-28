PImage img;
PFont font;
PFont font2;
int x1=100;
int y1=100;
int x2=200;
int y2=100;
int x3=300;
int y3=100;
int x4=400;
int y4=100;


void setup() {
  size(800, 800);
  smooth();
  font = loadFont("junjun.vlw");
  font2 = loadFont("BodoniMTPosterCompressed-30.vlw");
  img = loadImage("nene2.jpg");
  background(255);
}
String a[]= {
  "G", "O", "D", "`", "S", " ", "I", "N", " ", "H", "I", "S", " ", "H", "E", "A", "V", "E", "N", ".", "A", "L", "L", "`", "S", " ", "R", "I", "G", "H", "T", " ", "W", " ", "I", "T", "H", " ", "T", "H", "E", " ", "W", "O", "R", "L", "D", "."
};
void draw() {
  background(255);
// image(img, 0, 0, 800, 800);
  textFont(font);
  fill(255, 200);
  rect(0, 0, width, height);
  textSize(290);
  fill(240, 20, 20);
  text("NE", 110, 415);
  text("R", 300, 580);
  text("V", 450, 580);
  pushMatrix();
  translate(390, 380);
  rotate(radians(55));
  textSize(45);

  for (int i=0;i<a.length;i++) {
    textFont(font2);
    textSize(40);
    text(a[i], 0, 322, 50, 50);
    rotate(radians(-2.2));
  }
  popMatrix();
  //noStroke();
  
  //red zone
  noStroke();
  beginShape();
  vertex(216, 151);
  vertex(236, 126);
  vertex(237, 145);
  
  
  vertex(313, 220);
  
  vertex(429, 82);
 
 // vertex(458, 75);
 // vertex(490, 75);
  vertex(504, 65);
  vertex(537.0, 68.0) ;
  vertex(560.0, 77.0) ;
  vertex(557.0, 97.0) ;
  vertex(541.0, 116.0) ;
  vertex(583.0, 126.0) ;
  vertex(599.0, 135.0) ;
  vertex(620.0, 141.0) ;
  vertex(640.0, 160.0) ;
  vertex(657.0, 180.0) ;
  vertex(683.0, 218.0) ;
  vertex(670.0, 233.0) ;
  vertex(645.0, 251.0) ;
  vertex(622.0, 263.0) ;
  vertex(595.0, 266.0) ;
  vertex(578.0, 269.0) ;
  vertex(556.0, 265.0) ;
  vertex(543.0, 257.0) ;
  vertex(531.0, 266.0) ;
  vertex(547.0, 271.0) ;
  vertex(565.0, 281.0) ;
  vertex(598.0, 296.0) ;
  vertex(613.0, 321.0) ;
  vertex(618.0, 343.0) ;
  vertex(628.0, 363.0) ;
  vertex(634.0, 385.0) ;
  vertex(647.0, 421.0) ;
  vertex(652.0, 475.0) ;
  vertex(652.0, 498.0) ;
  vertex(648.0, 530.0) ;
  vertex(651.0, 570.0) ;
  vertex(652.0, 603.0) ;
  vertex(650.0, 604.0) ;




  endShape(CLOSE);
  bezier( 355,172,362,84,366,84,429,82);
  bezier(429,82,426,92,434,56,456,75);
  bezier(478,71,476,65,474,63,456,75);  
  bezier(464,76,415,74,446,71,430,86);
bezier(478,71,415,74,446,71,430,86);
 
  
  //white zone
  fill(255);
  bezier(237, 145,281,208,300,225,313,220);
  bezier(313,220,334,213,346,210,356,170);
  bezier(482,72,489,73,496,73,500,65);
bezier(530,68,523,70,523,70,500,65);
bezier(533,68,552,84,553,70,558,77);
bezier(559,96,564,91,550,90,560,77);
bezier(558,96,553,109,534,106,544,115);
bezier(544,117,565,135,564,123,586,125);
bezier(587,128,588,135,589,134,595,134);
bezier(599,131,601,143,612,145,625,141);
bezier(639,159,646,162,625,161,625,141);
bezier(658,180,643,175,655,181,641,162);
bezier(671,233,659,237,657,234,652,246);
bezier(623,262,634,251,628,255,641,253);
bezier(687,218,659,198,654,188,660,180);
bezier(600,267,616,257,619,274,621,266);
bezier(579,269,590,260,588,267,596,268);
bezier(559,268,558,263,569,265,572,269);
bezier(550,272,556,283,563,287,569,280);
bezier(576,284,587,303,583,294,596,294);
bezier(616,321,608,331,613,336,620,337);
bezier(627,365,624,377,624,381,633,381);
bezier(666,421,620,412,637,409,640,373);
bezier(655,456,638,447,643,442,652,421);
 bezier(658,481,645,471,640,454,657,456);
 
bezier(654,498,644,513,644,507,652,527);
bezier(654,498,644,513,644,507,652,527);
bezier(654,498,644,513,644,507,652,527);
 
bezier(654,528,656,538,635,533,652,563);
bezier(239,148,303,228,314,225,324,214);
bezier(239,148,303,228,314,225,324,214);
bezier(504,59,487,73,489,79,478,64);
 
bezier(565,77,546,75,531,78,535,59);
bezier(565,77,546,75,531,78,535,59);
bezier(306,218,341,205,360,181,356,153);
bezier(576,121,560,126,547,124,542,114);
bezier(620,119,593,135,572,152,603,103);
bezier(682,243,654,222,652,241,656,263);
 
 
 







  


//  fill(255, 0, 0);
//  ellipse(x1, y1, 5, 3);
//  fill(0, 255, 0);
//  ellipse(x2, y2, 5, 3);
//  fill(0, 0, 255);
//  ellipse(x3, y3, 5, 3);
//  fill(255, 255, 0);
//  ellipse(x4, y4, 5, 3);
//  point(x1,y1);
//   point(x2,y2);
//    point(x3,y3);
//     point(x4,y4);
//     
//  
//  
//  fill(255,0,0);
//  //noFill();
//  bezier(x1, y1, x2, y2, x3, y3, x4, y4);
//}
//void keyPressed() {
//  if (key=='1') {
//    x1=mouseX;
//    y1=mouseY;
//  }
//  if (key=='2') {
//    x2=mouseX;
//    y2=mouseY;
//  }
//  if (key=='3') {
//    x3=mouseX;
//    y3=mouseY;
//  }
//  if (key=='4') {
//    x4=mouseX;
//    y4=mouseY;
//  }
//  if (key==' ') {
//    println("bezier("+x1+","+y1+","+x2+","+y2+","+x3+","+y3+","+x4+","+y4+");");
//   
//    println(" ");
//  }
}










