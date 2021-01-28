void setup() {
  size(300, 300) ;
  background(255) ;
  noFill() ;
  rectMode(CENTER) ;
  strokeWeight(2) ;
  for (int x = 0 ; x < width + 40 ; x += 80) {
    for (int y = 0 ; y < height + 70 ; y += 140) {
      hexBar(x, y) ;
      hexBar(x + 40, y + 70) ;
    }
  }
}

void hexBar(float x, float y) {
  pushMatrix() ;
  translate(x, y) ;
  for (int i = 0 ; i < 3 ; i++) {
    rotate(PI / 3) ;
    rect(0, 0, 30, 100) ;
  }
  popMatrix() ;
}
