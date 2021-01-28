int n = 15 ; // number of lines
int uAngle = 360 / n ; // unit angle
int angle ;
int r = 180 ;
int l = 50 ;

void setup() {
  size(600, 600) ;
  background(255) ;
  frameRate(10) ;
}

void draw() {
  fill(255, 40) ;
  pushStyle() ;
  noStroke() ;
  rect(0, 0, width, height) ;
  popStyle() ;
  translate(width / 2, height / 2) ;
  pushMatrix() ;
  if (angle >= 360) angle = 0 ;
  float theta = radians(float(angle)) ;
  rotate(theta) ;
  translate(0, -r) ;
  pushStyle() ;
  strokeWeight(40) ;
  strokeCap(ROUND) ;
  line(0, l, 0, -l) ;
  popStyle() ;
  popMatrix() ;
  angle += uAngle ;
}
