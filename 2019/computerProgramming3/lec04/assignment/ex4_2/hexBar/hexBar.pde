void setup() {
  size(300, 300) ;
  background(255) ;
  noFill() ;
  rectMode(CENTER) ;
  strokeWeight(2) ;
  hexBar(width / 2, height / 2) ;
}

void hexBar(float x, float y) {
  pushMatrix() ;
  translate(x, y) ;
  for (int i = 0 ; i < 3 ; i++) {
    rotate(PI / 3) ;
    rect(0, 0, 60, 200) ;
  }
  popMatrix() ;
}
