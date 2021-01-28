PImage img;
PFont font;
color white = color(255,255,255);
color brown = color(105,47,0);
color orange = color(238,119,0);

void setup(){
  img = loadImage("images.jpg");
  
  size(452,446);
  smooth();
  background(205,205,205);
  font = loadFont("Arial-Black-48.vlw");
  textFont(font);
  //width=452,height=446
}

void draw(){
  image(img,0,0,width,height);  
  draw_circles();
  draw_croissant();
  draw_lines();
  draw_letters();
  draw_text();
  draw_clover();
  
  println(mouseX);
  println(mouseY);
}

void draw_circles(){
  //preparation for drawing circles
  translate(width/2,height/2);
  noFill();
  fill(orange);
  ellipse(0,0,415,415);
  fill(brown);
  ellipse(0,0,249,249);
  //c mark
  fill(white);
  ellipse(106,-15,12,12);
  noFill();
  stroke(brown);
  strokeWeight(2);
  arc(106,-15,5,5,QUARTER_PI,PI+HALF_PI+QUARTER_PI);
  strokeWeight(6);
  //outside brown circle
  circle(418,brown);
  //outside white circle
  circle(432,white);
  //inside brown circle
  circle(265,brown);
  //inside white circle
  circle(252,white);
}

void circle(int diameter,color c){
  stroke(c);
  ellipse(0,0,diameter,diameter);
}

void draw_croissant(){
  noStroke();
  fill(255,255,255);
  //central triangle
  triangle(0,0,-35,-98,35,-98);
  //side triangles
  triangle(-40,-78,-67,-54,-12,-12);
  triangle(40,-78,67,-54,12,-12);
  triangle(70,-45,30,-16,100,3);
  triangle(-70,-45,-30,-16,-100,3);
}

void draw_lines(){
  stroke(255,255,255);
  strokeWeight(4);
  line(-110,48,110,48);
  line(-105,65,105,65);
}

void draw_letters(){
  int w=width/2;
  int h=height/2;
  
  //letter C
  letterc(0.64);  
  letterc(4.94);
  letterc(6.1);
  
  //letter o
  lettero(0.2);
  lettero(1.38);
  lettero(5.7);
  
  //letter r
  noStroke();
  rectMode(CENTER);
  pushMatrix();
  fill(white);
  rotate(0.92);  
  rect(0,-170,18,50);
  translate(8,0);
  rotate(0.1);  
  rect(0,-170,27,50);
  popMatrix();
  fill(orange);
  ellipse(374-w,128-h,10,10);
  triangle(357-w,136-h,343-w,146-h,352-w,156-h);
  beginShape();
  vertex(362-w,168-h);
  vertex(370-w,147-h);
  
  vertex(377-w,148-h);
  vertex(385-w,145-h);
  vertex(393-w,137-h);
  
  
  vertex(399-w,118-h);
  vertex(417-w,151-h);
  endShape(CLOSE);
  
  //letter h
  fill(white);
  pushMatrix();
  translate(0,5);
  rotate(5.24);
  rect(0,-170,18,50);
  translate(12,0);
  rotate(0.10);
  rect(0,-170,18,50);
  rect(-10,-170,15,15);
  popMatrix();
}

void letterc(float angle){
  pushMatrix();
  noStroke();
  fill(white);
  rotate(angle) ;
  arc(0,-170,50,50,radians(30),TWO_PI-radians(30));
  stroke(orange);
  line(0,-195,0,-145);
  line(0-25*cos(radians(30)),-195+25*sin(radians(30)),0+25*cos(radians(30)),-145-25*sin(radians(30)));
  line(0+25*cos(radians(30)),-195+25*sin(radians(30)),0-25*cos(radians(30)),-145-25*sin(radians(30)));
  popMatrix() ;
}

void lettero(float angle){
  pushMatrix();
  noStroke();
  fill(white);
  rotate(angle) ;
  ellipse(0,-170,50,50);
  stroke(orange);
  line(0,-195,0,-145);
  star(0,0,3.3,7.7,5);
  popMatrix() ;
}

//examples/Basics/Form/Star
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  fill(orange);
  beginShape();
  pushMatrix();
  translate(0,-170);
  rotate(50);
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
  popMatrix();
}

void draw_text(){
  int w=width/2;
  int h=height/2;
  font = loadFont("Arial-Black-48.vlw");
  textFont(font);
  fill(white);
  pushMatrix();
  rotate(1.12);
  text("S", 0, 190);
  rotate(-0.23);
  text("T", 0, 190);
  rotate(-0.15);
  text(".", 0, 190);
  rotate(-0.09);
  text("M", 0, 190);
  rotate(-0.25);
  text("A", 0, 190);
  rotate(-0.21);
  text("R", 0, 190);
  rotate(-0.21);
  text("C", 0, 190);
  rotate(-0.28);
  text("C", 0, 190);
  rotate(-0.2);
  text("A", 0, 190);
  rotate(-0.21);
  text("F", 0, 190);
  rotate(-0.22);
  text("E", 0, 190);
  popMatrix();
  font = loadFont("Arial-Black-9.vlw");
  textFont(font);
  fill(white);
  text("CHOCOCRO, BREAD, SWEETS & COFFEE",-105,61);
  font = loadFont("Arial-Black-20.vlw");
  textFont(font);
  text("SINCE 1987", -60,95);
  font = createFont("HGSSoeiKakupoptai", 20);
  textFont(font);
  text("サンマルクカフェ",-83,30);
  fill(white);
  quad(293-w,239-h,299-w,237-h,296-w,241-h,293-w,241-h);
  quad(355-w,289-h,350-w,298-h,352-w,307-h,358-w,299-h);
}

void draw_clover(){
  int w=width/2;
  int h=height/2;
  ellipse(380-w,255-h,9,9);
  ellipse(386-w,251-h,9,9);
  
  ellipse(381-w,268-h,9,9);
  ellipse(385-w,272-h,9,9);
  
  ellipse(397-w,271-h,9,9);
  ellipse(402-w,268-h,9,9);
  
  ellipse(402-w,255-h,9,9);
  ellipse(398-w,251-h,9,9);
  
  ellipse(391-w,261-h,19,19);
  
  int dif=332;
  ellipse(380-w-dif,257-w,9,9);
  ellipse(386-w-dif,251-h,9,9);
  
  ellipse(381-w-dif,268-h,9,9);
  ellipse(385-w-dif,272-h,9,9);
  
  ellipse(397-w-dif,271-h,9,9);
  ellipse(402-w-dif,268-h,9,9);
  
  ellipse(402-w-dif,255-h,9,9);
  ellipse(398-w-dif,251-h,9,9);
  
  ellipse(391-w-dif,261-h,19,19);
  
  strokeWeight(8);
  beginShape();
  vertex(410-w,259-h);
  vertex(407-w,262-h);
  vertex(398-w,263-h);
  vertex(413-w,254-h);
  endShape();
  
  beginShape();
  vertex(39-w,260-h);
  vertex(44-w,262-h);
  vertex(55-w,263-h);
  vertex(36-w,256-h);
  endShape();
}
