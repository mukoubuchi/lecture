int n = 12 ;
float unitAngle = radians(360 / n) ;
float unitGray = 255 / n ;
float unitWeight = 60 / n ;

size(500, 500) ;
background(255) ;
noFill() ;
strokeCap(SQUARE) ;
for (int i = 0 ; i < n ; i++) {
  float grayScale = (n - i) * unitGray ;
  float weight = i * unitWeight ;
  float diameter = 400 - weight ;
  float startAngle = i * unitAngle ;
  float endAngle = (i + 1) * unitAngle ;
  stroke(grayScale) ;
  strokeWeight(weight) ;
  arc(250, 250, diameter, diameter, startAngle, endAngle) ;
}
