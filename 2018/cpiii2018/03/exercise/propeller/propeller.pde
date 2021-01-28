float radius = 250 ;
float theta = 0 ;
int num = 0 ;
PFont font ;

void setup() {
  size(600, 600) ;
  strokeWeight(10) ;
  font = loadFont("YuGo-Medium-15.vlw") ;
  textFont(font, 15) ;
}

void draw() {
  background(255) ;
  displayMessage() ;
  translate(width / 2, height / 2) ;
  rotate(theta) ;
  drawPropeller(radius) ;
  updateTheta() ;
}

void updateTheta() {
  if (keyPressed == true) {
    if (key == 'k') num++ ;
  } else {
    num-- ;
  }
  num = constrain(num, 0, 500) ;
  theta += lerp(0, 0.3, float(num) / 500) ;
  theta %= TWO_PI ; // do not infinitely increment
  // println("[num] " + num + "\t" + "[theta] " + degrees(theta)) ;
}

void drawPropeller(float r) {
  beginShape(LINES) ;
  vertex(-r, 0) ;
  vertex(r, 0) ;
  vertex(0, -r) ;
  vertex(0, r) ;
  endShape() ;
  fill(255) ;
  ellipse(0, 0, radius / 8, radius / 8) ;
}

void displayMessage() {
  String s = "keep pressing the 'k' button on your keyboard to rotate" ;
  fill(0) ;
  text(s, width / 2 - textWidth(s) / 2, height - 10) ;
}

/*
 * the below code may be needed to utilize 'keyPressed'
 */
void keyReleased() {
  keyPressed = false ;
}