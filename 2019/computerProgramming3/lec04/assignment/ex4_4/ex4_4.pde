PVector[] vertices = new PVector[8] ;

void setup() {
  size(500, 500) ;
  translate(width / 2, height / 2) ;
  for (int i = 0 ; i < vertices.length ; i++) {
    PVector vertex = PVector.fromAngle(radians(0)) ;
    vertex.mult(200) ;
    if (i % 2 != 0) vertex.div(sqrt(2)) ;
    vertex.rotate(i * QUARTER_PI) ;
    vertices[i] = vertex ;
  }
  noStroke() ;
  noLoop() ;
}

void draw() {
  background(255) ;
  translate(width / 2, height / 2) ;
  drawWindmill() ;
}

void drawWindmill() {
  beginShape(TRIANGLE_FAN) ;
  vertex(0, 0) ; // the center point
  for (int i = 0 ; i < vertices.length ; i++) {
    PVector v = vertices[i] ;
    if (i % 2 != 0) fill(0) ;
    else noFill() ;
    vertex(v.x, v.y) ;
  }
  endShape(CLOSE) ;
}
