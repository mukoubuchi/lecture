size(500, 350) ;
background(255) ;
noStroke() ;
fill(0, 50) ;
for (float diameter = 100 ; diameter <= 2 * height ; diameter += 100) {
  float startAngle = radians(225) ;
  float endAngle = radians(315) ;
  arc(width / 2, height, diameter, diameter, startAngle, endAngle) ;
}
