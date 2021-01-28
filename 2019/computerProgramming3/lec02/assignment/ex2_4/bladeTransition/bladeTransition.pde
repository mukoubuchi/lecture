int n = 12 ;
float unitAngle = 360 / n ;
float unitGray = 255 / n ;
float unitWeight = 5 ;
float diameter = 400 ;

size(500, 500) ;
background(255) ;
noStroke() ;
for (int i = 0; i < n; i++) {
  float grayScale = (n - i) * unitGray ;
  float weight = i * unitWeight ;
  float startAngle = i * unitAngle ;
  float endAngle = (i + 1) * unitAngle ;
  fill(grayScale) ;
  beginShape(QUAD_STRIP) ;
  for (float angle = startAngle; angle <= endAngle; angle += 5) {
    float w = map(angle, startAngle, endAngle, 0, i * unitWeight) ;
    vertex(250 + diameter / 2 * cos(radians(angle)), 
      250 + diameter / 2 * sin(radians(angle))) ;
    vertex(250 + (diameter / 2 - w) * cos(radians(angle)), 
      250 + (diameter / 2 - w) * sin(radians(angle))) ;
  }
  endShape() ;
}