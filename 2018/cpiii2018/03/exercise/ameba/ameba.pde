int n = 12 ;
float uAngle = TWO_PI / n ;
float[] radius = new float[n] ;
float x = 0, y = 0 ;
float cX = 0, cY = 0 ;
int[] sign = new int[n] ;
float rMax = 250 ;
float rMin = 100 ;

void setup() {
  size(600, 600) ;
  cX = width / 2 ;
  cY = height / 2 ;
  noStroke() ;
  for (int i = 0 ; i < n ; i++) {
    //float r = random(-1, 1) ;
    //sign[i] = r >= 0 ? 1: -1 ;
    sign[i] = 1 ;
    radius[i] = random(rMin, rMax + 1) ;
  }
}

void draw() {
  background(255) ;
  beginShape() ;
  for (int i = 0 ; i < n ; i++) {
    if (radius[i] < rMin ^ radius[i] > rMax) {
      sign[i] *= -1 ;
    }
    radius[i] += sign[i] * 3 ;
    x = cX + radius[i] * cos(i * uAngle) ;
    y = cY + radius[i] * sin(i * uAngle) ;
    curveVertex(x, y) ;
  }
  // repeat first 3 vertices
  for (int i = 0 ; i < 3 ; i++) {
    x = cX + radius[i] * cos(i * uAngle) ;
    y = cY + radius[i] * sin(i * uAngle) ;
    curveVertex(x, y) ;
  }
  fill(0, 255, 0) ;
  endShape() ;
}
