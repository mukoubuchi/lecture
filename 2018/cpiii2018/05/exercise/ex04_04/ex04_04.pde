float r = 120 ;
float uAngle = TWO_PI/8 ;

void setup() {
  size(600,600) ;
  background(255) ;
  colorMode(HSB, 8, 100, 100, 100) ;
  translate(width/2, height/2) ;
  // drawFrame(0,0) ;
  for(float i=1 ; i <= 8 ; i++) {
    drawRod(0, -r, i) ;
    rotate(uAngle) ;
  }
}

void drawFrame(float x, float y) {
  pushStyle() ;
  fill(0,0,100, 4) ; // white, transparent
  noStroke() ;
  rectMode(CENTER) ;
  rect(0,0,width,height) ;
  popStyle() ;
}

void drawRod(float x, float y,float i) {
  pushMatrix() ;
  pushStyle() ;
  translate(x, y) ;
  noFill() ;
  stroke(i,100,100, 50) ;
  strokeWeight(150) ;
  line(0,30,0,-30) ; // length = 60
  popStyle() ;
  popMatrix() ;
}
