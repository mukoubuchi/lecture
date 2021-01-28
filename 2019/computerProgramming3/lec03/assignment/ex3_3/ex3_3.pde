float centerX, centerY ;
float sign = 1 ;
float theta = 0 ;
float diameter = 100 ;

void setup() {
  size(150, 150) ;
  noStroke() ;
  fill(255, 255, 0) ;
}

void draw() {
  background(0) ;
  setMouthAngle() ;
  drawPackman() ;
}

void setMouthAngle() {
  theta += sign * radians(1) ; // 1[rad / frame]
  if (theta > PI / 6) {
    sign = -sign ; // sign *= -1;
    theta = PI / 6 ;
  } else if (theta < 0) {
    sign = -sign ; // sign *= -1;
    theta = 0 ;
  }
}

void drawPackman() {
  arc(width/2, height/2, diameter, diameter, theta, TWO_PI - theta) ;
}
