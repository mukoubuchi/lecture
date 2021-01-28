void setup() {
  size(240, 190) ;
  background(255) ;
  noFill() ;
  rectMode(CENTER) ;
  strokeWeight(2) ;
  for (int x = 60 ; x < 60 + 80 * 2 ; x += 80) {
    int y = 60 ;
    hexBar(x, 60) ;
    hexBar(x + 40, y + 70) ;
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
