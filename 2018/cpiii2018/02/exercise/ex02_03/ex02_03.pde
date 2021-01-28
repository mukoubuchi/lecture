int n = 3 ; // number of sides of a polygon
int iAngle = 360 / n ; // interior angle
float r = 200 ; // radius
float adj = 40 ; // adjustment
boolean hasPackmans = false ;

void setup() {
  size(600, 600) ;
  background(0) ;
  /*
   * draw lines
   */
  stroke(255) ;
  fill(0) ;
  drawTriangle(width / 2, adj + height / 2, HALF_PI) ;
  /*
   * draw packmans
   */
  hasPackmans = true ;
  noStroke() ;
  drawTriangle(width / 2, adj + height / 2, - HALF_PI) ;
}

void drawTriangle(float cX, float cY, float angle) {
  beginShape() ;
  for (int i = 0; i < n; i++) {
    float theta = radians(float(iAngle * i)) + angle ;
    float x = cX + r * cos(theta) ;
    float y = cY + r * sin(theta) ;
    if (hasPackmans == true) {
      switch(i) {
      case 0: 
        fill(255, 255, 0) ; 
        break ;
      case 1: 
        fill(0, 255, 255) ; 
        break ;
      case 2: 
        fill(255, 0, 255) ; 
        break ;
      }
      ellipse(x, y, r / sqrt(2), r / sqrt(2)) ;
      fill(0) ;
    }
    vertex(x, y) ;
  }
  endShape(CLOSE) ;
}