int n = 5 ; // number of sides of a polygon
int iAngle = 360 / n ; // interior angle
float r = 250 ; // radius

size(600, 600) ;
beginShape(TRIANGLE_FAN) ;
vertex(width / 2, height / 2) ;
for (float i = 0 ; i < 360 ; i++) {
  float theta = radians(i * iAngle) ;
  float x = width / 2 + r * cos(theta) ;
  float y = height / 2 + r * sin(theta) ;
  vertex(x, y) ;
}
endShape() ;