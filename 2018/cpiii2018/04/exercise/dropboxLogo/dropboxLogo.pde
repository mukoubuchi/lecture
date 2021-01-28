float hDiam = 220 ; // horizontal diameter
float vDiam = hDiam / 1.5 ; // verticl diameter
float adj = vDiam / 6 ;
float radius = 600 ;

void setup() {
  size(600, 600) ;
  background(255) ;
  noStroke() ;
  translate(width / 2, height / 2) ;
  fill(#0060FF) ;
  ellipse(0, 0, radius, radius) ;
  translate(0, vDiam / 4) ;
  fill(255) ;
  diamond(-hDiam / 2, 0, hDiam / 2, vDiam / 2) ; // below left
  diamond(hDiam / 2, 0, hDiam / 2, vDiam / 2) ; // below right
  diamond(-hDiam / 2, -vDiam, hDiam / 2, vDiam / 2) ; // above left
  diamond(hDiam / 2, -vDiam, hDiam / 2, vDiam / 2) ; // above right
  diamond(0, vDiam / 2 + adj, hDiam / 2, vDiam / 2) ; // below center
}

void diamond(float cX, float cY, float hRad, float vRad) {
  pushMatrix() ;
  translate(cX, cY) ;
  beginShape() ;
  vertex(hRad, 0) ;
  vertex(0, vRad) ;
  vertex(-hRad, 0) ;
  vertex(0, -vRad) ;
  endShape(CLOSE) ;
  popMatrix() ;
}
