float cX = 0, cY = 0 ;
float diam = 400 ;
float w = 90 ;
int[] angle = {-10, 45, 150, 210, 315 } ;

void setup() {
  size(600, 600) ;
  cX = width/2 ;
  cY = height/2 ;
  noFill() ;
  strokeWeight(w) ;
  strokeCap(SQUARE) ;
  colorMode(HSB, 360, 100, 100) ;
  /*
   * the straignt line
   */
  stroke(angle[3], 100, 100) ;
  line(cX, cY, cX + diam/2 + w/2 - 5, cY) ;
  /*
   * the curve line
   */
  for (int i = angle.length - 1; i >= 1; i--) {
    stroke(angle[4-i], 100, 100) ;
    arc(cX, cY, diam, diam, radians(angle[i-1]), radians(angle[i])) ;
  }
}