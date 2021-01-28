void setup() {
  size(800, 800) ;
  drawOutline() ;
}

void drawOutline() {
  drawCurve(width / 2, height / 2, 300, 30, 330) ;
  drawLine(width / 2, height / 2, 300, 30, 50) ;
  drawLine(width / 2, height / 2, 300, 330, 50) ;
}

void drawCurve(float x, float y, float r, int s, int e) {
  for (float i = s ; i < e ; i++) {
    float theta = radians(i) ;
    float sX = x + r * cos(theta) ; // satellite X
    float sY = y + r * sin(theta) ; // satellite Y
    for (int j = 0 ; j < 3 ; j++) {
      drawSatellite(sX, sY) ;
    }
  }
}

void drawLine(float x, float y, float r, float a, int n) {
  for (float i = 0 ; i < n ; i++) {
    float theta = radians(a) ;
    float sR = lerp(0, r, i / n) ; // satellite Radius
    float sX = x + sR * cos(theta) ;
    float sY = y + sR * sin(theta) ;
    for (int j = 0 ; j < 3 ; j++) {
      drawSatellite(sX, sY) ;
    }
  }
}

void drawSatellite(float x, float y) {
  x += random(-20.0, 21.0) ;
  y += random(-20.0, 21.0) ;
  float r = random(10.0, 21.0) ;
  float s = random(361) ;
  float e = s + 300 ;
  drawPackman(x, y, r, r, s, e) ;
}

void drawPackman(float x, float y, float w, float h, float s, float e) {
  arc(x, y, w, h, radians(s), radians(e), PIE) ;
}
