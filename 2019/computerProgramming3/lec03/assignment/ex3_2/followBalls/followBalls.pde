int n = 8 ;
PVector[] location = new PVector[n] ;

void setup() {
  size(500, 500) ;
  noStroke() ;
  translate(width / 2, height / 2) ;
  for (int i = 0 ; i < n ; i++) {
    float r = 180 ;
    location[i] = new PVector(r * cos(radians(i * 30)),
                              r * sin(radians(i * 30))) ;
  }
  frameRate(180) ;
}

void draw() {
  background(51) ;
  translate(width / 2, height /2) ;
  int count = frameCount % 360 ;
  if (0 <= count && count < 120) location[7].rotate(radians(1)) ;
  if (30 <= count && count < 150) location[6].rotate(radians(1)) ;
  if (60 <= count && count < 180) location[5].rotate(radians(1)) ;
  if (90 <= count && count < 210) location[4].rotate(radians(1)) ;
  if (120 <= count && count < 240) location[3].rotate(radians(1)) ;
  if (150 <= count && count < 270) location[2].rotate(radians(1)) ;
  if (180 <= count && count < 300) location[1].rotate(radians(1)) ;
  if (210 <= count && count < 330) location[0].rotate(radians(1)) ;
  for (int i = 0 ; i < n ; i++) {
    float diameter = lerp(5, 80, float(i) / n);
    ellipse(location[i].x, location[i].y, diameter, diameter) ;
  }
}
