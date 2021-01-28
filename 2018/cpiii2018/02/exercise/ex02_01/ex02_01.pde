void setup() {
  size(600, 600) ;
  background(255) ; // before changing colorMode()
  colorMode(HSB) ;
  rectMode(CENTER) ;
  noStroke() ;
  float diam = 600 ; // diameter
  for (int i = 0 ; i < diam ; i++) {
    fill(i / diam * 255, 255, 255) ; // associativity: (i / diam) * 255
    rect(width / 2, height / 2, diam - i, diam - i) ;
  }
}