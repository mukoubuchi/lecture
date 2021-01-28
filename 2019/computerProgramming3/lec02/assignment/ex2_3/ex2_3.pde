PFont font ;
int centerX, centerY ;

void setup() {
  size(500, 500) ;
  background(255) ;
  centerX = width / 2 ;
  centerY = height / 2 ;
  drawCircle() ;
  drawName() ;
  // drawBand() ;
}

void drawCircle() {
  pushStyle() ;
  noStroke() ;
  fill(255, 0, 0) ;
  ellipse(centerX, centerY, 400, 400) ;
  fill(0, 150) ;
  arc(centerX, centerY, 400, 400, radians(30), radians(150), CHORD) ;
  popStyle() ;
}

void drawName() {
  pushStyle() ;
  font = loadFont("YuGo-Bold-35.vlw") ;
  textFont(font) ;
  textSize(180) ;
  textAlign(CENTER, CENTER) ;
  fill(255) ;
  text("青学", width / 2, height / 2) ;
  popStyle() ;
}

// void drawBand() {
//   pushStyle() ;
//   strokeWeight(10) ;
//   strokeCap(SQUARE) ;
//   float r = 430 ;
//   noFill() ;
//   stroke(0, 0, 255) ;
//   arc(centerX, centerY, r, r, radians(-45), radians(45)) ;
//   stroke(0, 255, 0) ;
//   arc(centerX, centerY, r, r, radians(45), radians(150)) ;
//   stroke(255, 255, 0) ;
//   arc(centerX, centerY, r, r, radians(150), radians(210)) ;
//   stroke(255, 0, 0) ;
//   arc(centerX, centerY, r, r, radians(210), radians(315)) ;
//   popStyle() ;
// }
