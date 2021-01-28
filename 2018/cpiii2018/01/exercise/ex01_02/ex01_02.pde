float diam = 500 ; // diameter

void setup() {
  size(600, 600) ;
  rectMode(CENTER) ;
  for (int i = 0 ; i < 10 ; i++) {
    drawShape(width / 2, height / 2) ;
  }
}

void drawShape(float x, float y) {
  ellipse(x, y, diam, diam) ;
  diam /= sqrt(2) ;
  rect(x, y, diam, diam) ;
}