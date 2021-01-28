size(400, 400) ;
for (int y = 0 ; y < height ; y += 10) {
  line(0, y, width, y) ;
}
translate(width / 2, height / 2) ;
float r = 200 ;
PVector v1 = new PVector(r * cos(0 * TWO_PI / 3), r * sin(0 * TWO_PI / 3)) ;
PVector v2 = new PVector(r * cos(1 * TWO_PI / 3), r * sin(1 * TWO_PI / 3)) ;
PVector v3 = new PVector(r * cos(2 * TWO_PI / 3), r * sin(2 * TWO_PI / 3)) ;
for (int i = 0 ; i < 3 ; i++) {
  beginShape() ;
  // clockwise order
  vertex(v1.x, v1.y) ;
  vertex(v2.x, v2.y) ;
  vertex(v3.x, v3.y) ;
  PVector tmp = v1 ;
  v1 = PVector.add(v1, v2).div(2) ;
  v2 = PVector.add(v2, v3).div(2) ;
  v3 = PVector.add(v3, tmp).div(2) ;
  beginContour() ;
  // counter clockwise order
  vertex(v1.x, v1.y) ;
  vertex(v3.x, v3.y) ;
  vertex(v2.x, v2.y) ;
  endContour() ;
  tmp = v1 ;
  v1 = PVector.add(v1, v2).div(2) ;
  v2 = PVector.add(v2, v3).div(2) ;
  v3 = PVector.add(v3, tmp).div(2) ;
  endShape(CLOSE) ;
}
