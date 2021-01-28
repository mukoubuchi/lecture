size(500, 500) ;
strokeWeight(2) ;
translate(width / 2, height / 2) ;
for (int length = 10 ; length < width ; length += 10) {
  line(0, 0, length, 0) ;
  translate(length, 0) ;
  rotate(HALF_PI) ;
  line(0, 0, length, 0) ;
  translate(length, 0) ;
  rotate(HALF_PI) ;
}
