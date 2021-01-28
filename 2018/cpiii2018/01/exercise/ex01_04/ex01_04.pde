size(800, 600) ;
for (float i = 0 ; i < 360 ; i += 5) {
  float theta = radians(i) ;
  float x = map(cos(theta), -1, 1, 0, width) ;
  float y = map(sin(theta), -1, 1, 0, height) ;
  line(width >> 1, y, x, height >> 1) ;
}