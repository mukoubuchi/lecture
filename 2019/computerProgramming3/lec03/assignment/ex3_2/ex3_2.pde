void setup() {
  size(500, 500) ;
  noStroke() ;
  fill(0) ;
  // mouseX = width / 2;
  // mouseY = height / 2;
}

void draw() {
  background(255) ;
  for (int i = 0 ; i < 10 ; i++) {
    int diameter = 5 * (i + 1) ;
    float theta = radians(frameCount % 360 + i * 30) ;
    ellipse(100 * cos(theta) + mouseX,
            100 * sin(theta) + mouseY,
            diameter, diameter) ;
  }
}
