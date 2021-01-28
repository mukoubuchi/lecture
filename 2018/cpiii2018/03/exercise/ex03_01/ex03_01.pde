float r = 250 ;
int n = 5 ;
float iAngle = TWO_PI / n ;
float angle = iAngle ;

void setup() {
  size(600, 600) ;
  noFill() ;
  strokeWeight(10) ;
}

void draw() {
  background(204) ;
  drawPolygon(width / 2, height / 2) ;
  angle = (angle + 0.01) % (2 * iAngle) ;
  if (angle > iAngle) {
    drawLine(width/2,height/2, iAngle) ;
  } else {
    drawLine(width/2,height/2, angle) ;
  }
}

void drawPolygon(float cX, float cY) {
  beginShape() ;
  for (float theta = 0 ; theta < TWO_PI ; theta += iAngle) {
    float x = cX + r * cos(theta) ;
    float y = cY + r * sin(theta) ;
    vertex(x, y) ;
  }
  endShape(CLOSE) ;
}

void drawLine(float cX, float cY, float angle) {
  for (int i = 0 ; i < n ; i++) {
    float thetaMIN = i * iAngle ;
    float thetaMAX = (i + 1) * iAngle ;
    float x = lerp(cX + r * cos(thetaMIN) , cX + r * cos(thetaMAX), angle / (iAngle)) ;
    float y = lerp(cY + r * sin(thetaMIN), cY + r * sin(thetaMAX) , angle / (iAngle)) ;
    line(cX, cY, x, y) ;
  }
}