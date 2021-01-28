float unitLength ;
int n = 5 ;
float theta ;
float[] y = new float[n] ;

void setup() {
  size(800, 200) ;
  unitLength = width / n ;
  noStroke() ;
}

void draw() {
  background(51) ;
  for(int i = 1 ; i < n ; i++) {
    float x = i * unitLength ;
    y[i] = constrain(height / 2 - 15 * cos(theta - i),
                     height / 2 - 15, height / 2) ;
    ellipse(x, y[i], 100, 100) ;
  }
  theta = (theta + 0.1) % TWO_PI ;
}
