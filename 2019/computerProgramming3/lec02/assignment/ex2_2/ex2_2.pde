size(720, 300) ;
background(255) ;
colorMode(HSB) ;
beginShape(QUAD_STRIP) ;
for (float x = 0 ; x <= width ; x += 5) {
  fill(255 * x / 360, 255, 255) ;
  float y = 100 * sin(radians(x)) ;
  vertex(2 * x, height / 2 + y) ;
  vertex(2 * x, height / 2 - y) ;
}
endShape() ;
