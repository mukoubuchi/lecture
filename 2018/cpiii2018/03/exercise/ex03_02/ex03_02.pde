float r = 80 ;
float dX = 3 * r ;
float dY = sqrt(3) * r / 2 ;
int n = 6 ;
float iAngle = TWO_PI / n ;
float angle = iAngle ; // default: stop
boolean flag = true ;

void setup() {
  size(600, 600) ;
  noFill() ;
  strokeWeight(10) ;
}

void draw() {
  background(204) ;
  for (float y = 0 ; y < r + height ; y += dY) {
    for (float x = flag == true ? 0 : dX / 2 ; x < r + width ; x += dX) {
      drawPolygon(x, y) ;
      if (angle > iAngle) {
        drawLine(x, y, iAngle) ; // stop
      } else {
        drawLine(x, y, angle) ; // move
      }
    }
    flag = !flag ;
  }
  angle = (angle + 0.05) % (2 * iAngle) ;
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
    float x = lerp(cX + r * cos(thetaMIN), cX + r * cos(thetaMAX), angle / (iAngle)) ;
    float y = lerp(cY + r * sin(thetaMIN), cY + r * sin(thetaMAX), angle / (iAngle)) ;
    line(cX, cY, x, y) ;
  }
}