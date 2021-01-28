size(400, 400) ;
float diameter = width / 2 ;
translate(width / 2, height / 2) ;
noFill() ;
for (float i = 0 ; i < 360 ; i += 1) {
  float theta = radians(i) ;
  float x = diameter / 2 * cos(theta) ;
  float y = diameter / 2 * sin(theta) ;
  arc(x, y, diameter, diameter, theta, theta + PI, OPEN) ;
}
