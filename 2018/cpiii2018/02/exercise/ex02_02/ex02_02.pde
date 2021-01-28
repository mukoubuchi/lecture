float radius = 70 ;
float weight = 40 ;
float startAngle = PI + PI / 4 ;
float endAngle = TWO_PI - PI / 4 ;

void setup() {
  background(0) ;
  size(600, 500) ;
  strokeCap(SQUARE) ;
  ellipseMode(RADIUS) ;
  noFill() ;
  strokeWeight(weight) ;
  float x = width / 2 ;
  float y = height - (height - (5 * radius + weight / 2)) / 2 ;
  for (int i = 5 ; i >= 1 ; i--) {
    if (i == 1) {
      fill(255, 255 - 40 * i) ;
      noStroke() ;
      radius += weight / 2 ;
    }
    else stroke(255, 255 - 40 * i) ;
    arc(x, y, i * radius, i * radius, startAngle, endAngle) ;
  }
}
