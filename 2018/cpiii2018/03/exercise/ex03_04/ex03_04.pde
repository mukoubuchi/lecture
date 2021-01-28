float cX ;
float cY ;
float theta = HALF_PI ;
float phi = 0 ;
float r = 200 ;
color[] c = { color(255, 0, 0, 204),
              color(255, 255, 0, 204),
              color(0, 0, 255, 204) } ;
int colorNum = 0 ;

void setup() {
  size(600, 400) ;
  cX = width / 2 ;
  cY = height / 2 ;
  noStroke() ;
}

void draw() {
  background(0) ;
  fill(110) ;
  drawTie(cX, cY) ;
  float x = cX + r * cos(theta) ;
  float y = cY + r / 2 * sin(phi) ;
  fill(c[colorNum]) ;
  ellipse(x, y, 15, 15) ;
  theta = (theta + 0.02) ;
  if (theta > HALF_PI + TWO_PI) {
    theta = HALF_PI ;
    colorNum = (colorNum + 1) % 3 ;
  }
  phi = (2 * theta) ;
}

void drawTie(float cX, float cY) {
  float x = 0 ;
  float y = 0 ;
  beginShape() ;
  curveVertex(cX, cY) ;
  for (float theta = HALF_PI ; theta < HALF_PI + TWO_PI ; theta += 0.01) {
    x = cX + r * cos(theta) ;
    y = cY + r / 2 * sin(2 * theta) ;
    curveVertex(x, y) ;
  }
  curveVertex(x, y) ;
  endShape() ;
}
