size(500, 500) ;
int centerX = width / 2, centerY = height / 2 ;
float r1 = 100, r2 = 250 ;
beginShape(QUAD_STRIP) ;
for (int i = 0 ; i <= 360 ; i += 10) {
  float theta = radians(i) ;
  float x1 = centerX + r1 * cos(theta) ;
  float y1 = centerY + r1 * sin(theta) ;
  float x2 = centerX + r2 * cos(theta) ;
  float y2 = centerY + r2 * sin(theta) ;
  vertex(x1, y1) ;
  vertex(x2, y2) ;
}
endShape() ;
