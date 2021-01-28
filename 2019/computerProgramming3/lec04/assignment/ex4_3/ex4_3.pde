float diameter = 180 ;
float angle = 0 ;
boolean isStop = false ;

void setup() {
  size(400, 400) ;
  noFill() ;
  strokeWeight(3) ;
  colorMode(HSB) ;
}

void draw() {
  background(255) ;
  translate(width / 2, height / 2) ;
  rotate(angle) ;
  for (int i = 0 ; i < 360 ; i++) {
    float theta = radians(i) ;
    float x = diameter / 2 * cos(theta) ;
    float y = diameter / 2 * sin(theta) ;
    stroke(float(i) / 360 * 255, 255, 255) ;
    arc(x, y, diameter, diameter, theta, theta + PI, OPEN) ;
  }
  angle = (angle + 0.2) % TWO_PI ;
}

void mousePressed() {
  if (isStop == false) noLoop() ;
  else loop() ;
  isStop = !isStop ;
}
