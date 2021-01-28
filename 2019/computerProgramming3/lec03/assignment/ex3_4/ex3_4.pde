int n = 5 ;
float unitAngle = TWO_PI / n ;
float[] vertexX = new float[n] ;
float[] vertexY = new float[n] ;
int index = 0 ;
float diameter = 30 ;
int count = 0 ;
int maxCount = 300 / n ;

void setup() {
  size(500, 500) ;
  background(255) ;
  noStroke() ;
  for (int i = 0 ; i < n ; i++) {
    vertexX[i] = width / 2 + 200 * cos(i * unitAngle) ;
    vertexY[i] = height / 2 + 200 * sin(i * unitAngle) ;
  }
  colorMode(HSB) ;
}

void draw() {
  float x = map(count, 0, maxCount - 1, vertexX[index], vertexX[(index + 3) % n]) ;
  float y = map(count, 0, maxCount - 1, vertexY[index], vertexY[(index + 3) % n]) ;
  fill(map(index, 0, n - 1, 0, 200), 255, 255) ;
  ellipse(x, y, diameter, diameter) ;
  fill(0) ;
  ellipse(x, y, diameter / 2, diameter / 2) ;
  count = (count + 1) % maxCount ;
  if (count == 0) index = (index + 3) % n ;
  if (frameCount == 300) noLoop() ;
}
