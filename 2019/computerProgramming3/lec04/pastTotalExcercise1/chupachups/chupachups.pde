PImage img;
PFont font;
void setup() {
  size(596, 600);
  img =loadImage("chupachups.jpg");
  font = loadFont("CourierNewPSMT-16.vlw");
  textFont(font);
}
void draw() {
  image(img, 0, 0);
  fill(255, 200);
  noStroke();
  rect(0, 0, width, height);
  noFill();
  translate(width/2, height/2);
  ring(77, 189, 218, 175, 151, 28);
  ring(-187, 78, 190, 255, 0, 0);
  ring(-175, 74, 186, 255, 255, 255);
  ring(-165, 68, 181, 246, 255, 0);
  ellipse(0, 0, 270, 270);
  translate(-width/2, -height/2);
  stroke(255, 0, 0);
  noFill() ;
  strokeWeight(20);
  Chup(0,0);
   strokeWeight(20);
  Chup(0,150);
 strokeWeight(20);
     stroke(255,0,0);
  a(0,0);
  strokeWeight(20);
  hige(0,0);
  strokeWeight(20);  
  s(0,0);
    noFill();
    stroke(255,0,0);
  strokeWeight(3);
  ellipse(335,501,19,19);
    stroke(0);
  noStroke();  
  fill(0,100);
    ellipse(mouseX, mouseY, r,r) ;
  fill(255,0,0);
  strokeWeight(5);
   text("R",330,504);
}
int r = 10 ;
void keyPressed() {
  switch(key) {
  case '+': 
    r++ ; 
    break ;
  case '-': 
    r = max(1, r-1) ; 
    break ;
  case 'p': 
    print(mouseX + "," + mouseY +"," +r) ;
  }
}
void ring(int x, int y, int r, int R, int G, int B) {
  pushMatrix() ;
  for (int i=0;i<9;i++) {
    fill(R, G, B);
    rotate(radians(45));
    ellipse(x, y, r, r);
  }
  popMatrix() ;
}
