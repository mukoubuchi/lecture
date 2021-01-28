PImage logo ;
float w, h ;

void setup() {
  size(600, 600) ; // reset to your own size
  imageMode(CENTER) ;
  logo = loadImage("img.png") ; // reset to your own image
  noLoop() ;
}

void draw() {
  background(255) ;
  w = 500 ; // reset to your own size
  h = 400 ; // reset to your own size
  image(logo, width / 2, height / 2, w, h) ;
  noStroke() ;
  fill(255, 200) ;
  rect(0, 0, width, height) ;
}

void mousePressed() {
  println("(" + mouseX + ", " + mouseY + ")") ;
}
