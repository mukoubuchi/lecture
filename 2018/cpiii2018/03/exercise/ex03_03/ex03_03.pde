float r = 0 ; // radius
float i = 10 ; // interval

void setup() {
  size(600, 600) ;
  ellipseMode(RADIUS) ;
  noStroke() ;
  mouseX = width / 2 ;
  mouseY = height / 2 ;
}

void draw() {
  background(255) ;
  drawCircleTile() ;
}

void drawCircleTile() {
  for (float y = i ; y < height ; y += 2 * i) {
    for (float x = i ; x < width ; x += 2 * i) {
      float d = dist(mouseX, mouseY, x, y) ;
      if (d < 100) {
        r = lerp(17, 1, d / 100) ;
        fill(#40E0D0) ;
      } else {
        r = 5 ;
        fill(#052C03) ;
      }
      ellipse(x, y, r, r) ;
    }
  }
}