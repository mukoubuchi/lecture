ArrayList<PVector> vertices = new ArrayList<PVector>() ;
float theta = 0 ;
PVector velocity = new PVector() ;
PVector acceleration = new PVector(0, 0.001) ;

void setup() {
  size(500, 500) ;
  translate(width / 2, height / 2) ;
  for (int i = 0 ; i < 8 ; i++) {
    PVector vertex = PVector.fromAngle(0) ;
    vertex.mult(200) ;
    if (i % 2 != 0) vertex.div(sqrt(2)) ;
    vertex.rotate(i * QUARTER_PI) ;
    vertices.add(vertex) ;
  }
  noStroke() ;
}

void draw() {
  background(255) ;
  translate(width / 2, height / 2) ;
  rotate(theta) ;
  drawWindmill() ;
  if (keyPressed) {
    if (key == 'k')
      velocity.add(acceleration) ;
      velocity.limit(0.3) ;
  } else {
    PVector inverse = PVector.mult(acceleration, -1) ;
    if (velocity.mag() > 0.001) velocity.add(inverse) ;
    else velocity.setMag(0) ;
  }
  theta += velocity.mag() ;
}

void drawWindmill() {
  beginShape(TRIANGLE_FAN) ;
  vertex(0, 0) ; // the center point of the window
  for (int i = 0 ; i < vertices.size() ; i++) {
    PVector v = vertices.get(i) ;
    if (i % 2 != 0) fill(0) ;
    else noFill() ;
    vertex(v.x, v.y) ;
  }
  endShape(CLOSE) ;
}