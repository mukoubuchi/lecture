float radius = 150 ;
float packmanRadius = 200 ;
float angle = 0 ;
boolean hasOptIll = true ;

void setup() {
  size(600, 600) ;
  background(255) ;
  fill(0) ;
}

void draw() {
  background(255) ;
  translate(width / 2, height / 2) ;
  rotate(QUARTER_PI) ;
  if (hasOptIll == true) rotate(-angle) ;
  else rotate(angle) ;
  for (float theta = 0 ; theta < TWO_PI ; theta += HALF_PI) {
    float x = radius * cos(theta) ;
    float y = radius * sin(theta) ;
    drawPackman(x, y,
                packmanRadius, packmanRadius,
                theta) ;
  }
  if ((angle += 0.02) > HALF_PI) {
    angle = 0 ;
    hasOptIll = !hasOptIll ;
  }
}

void drawPackman(float x, float y,
                 float w, float h,
                 float theta) {
  pushMatrix() ;
  translate(x, y) ;
  rotate(QUARTER_PI+PI) ;
  if (hasOptIll == false) rotate(lerp(0, TWO_PI, angle / HALF_PI)) ;
  arc(0, 0,
      w, h,
      theta, theta+TWO_PI-HALF_PI,
      PIE) ;
  popMatrix() ;
}