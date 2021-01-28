float x, y ;
float sign = 1 ;
float theta = 0 ;
float diameter = 100 ;
boolean canAccelerate = false ;
float defaultSpeed = 1 ;
float speed = defaultSpeed ;
float pressTime = 0 ;
float maxPressTime = 100 ;
float minSpeed = 1 ;
float maxSpeed = 10 ;

void setup() {
  size(150, 150) ;
  x = width / 2 ;
  y = height / 2 ;
  noStroke() ;
  colorMode(HSB, 360, 100, 100) ;
}

void draw() {
  background(0) ;
  updatePackman() ;
  drawPackman(x, y) ;
}

void updatePackman() {
  setColor() ;
  setMouthAngle() ;
  setSpeed() ;
}

void setColor() {
  float c = lerp(60, 0, (speed - defaultSpeed) / (maxSpeed - defaultSpeed)) ;
  fill(c, 100, 100) ;
}

void setMouthAngle() {
  theta += sign * 0.02 * speed / defaultSpeed ;
  if (theta > PI / 6) {
    sign = -sign ;
    theta = PI / 6 ;
  } else if (theta < 0) {
    sign = -sign ;
    theta = 0 ;
  }
}

void setSpeed() {
  if (canAccelerate) {
    pressTime = min(pressTime + 1, maxPressTime) ;
    speed = lerp(minSpeed, maxSpeed, pressTime / maxPressTime) ;
  } else {
    pressTime = max(0, pressTime - 0.5) ;
    speed = lerp(minSpeed, maxSpeed, pressTime / maxPressTime) ;
  }
}

void drawPackman(float x, float y) {
  arc(x, y, diameter, diameter, theta, TWO_PI - theta) ;
}

void keyPressed() {
  if (key == ' ') {
    canAccelerate = true ;
  }
}

void keyReleased() {
  canAccelerate = false ; // deceleration
}
