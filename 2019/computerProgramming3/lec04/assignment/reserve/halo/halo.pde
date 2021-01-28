float r = 200 ;
float theta = 0 ;

void setup() {
  size(500, 500) ;
  noStroke() ;
}

void draw() {
  background(51) ;
  translate(width / 2, height / 2) ;
  rotate(-HALF_PI) ;
  for (int i = 0 ; i < 3 ; i++) {
    pushMatrix() ;
    float angle = i * PI / 3 ;
    rotate(angle) ;
    float x = r * cos(theta + angle) ;
    float y = r * sin(theta + angle) * 0.25 ;
    drawEllipse(0, 0) ;
    drawBall(x, y) ;
    popMatrix() ;
  }
  updateTheta() ;
}

void updateTheta() {
  theta = (theta + 0.02) % TWO_PI ;
}

void drawEllipse(float x, float y) {
  pushStyle() ;
  strokeWeight(10) ;
  stroke(255) ;
  noFill() ;
  ellipse(x, y, 2 * r, 2 * r * 0.25) ;
  popStyle() ;
}

void drawBall(float x, float y) {
  fill(255) ;
  ellipse(x, y, 20, 20) ;
}
