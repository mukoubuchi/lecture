float cX, cY ;
PFont font ;
float radius = 0 ;
String string = "青 山 学 院 大 学 理 工 学 部 経 営 シ ス テ ム 工 学 科" ;
String[] token = splitTokens(string) ;
float currentFontSize = 0 ;
float previousFontSize = 0 ;

void setup() {
  size(600, 600) ;
  background(0) ;
  cX = width / 2 ;
  cY = height / 2 ;
  font = loadFont("YuGo-Bold-35.vlw") ;
  textFont(font, 35) ;
  textAlign(CENTER, CENTER) ;
  ellipseMode(RADIUS) ;

  for (int j = 0 ; j < 3 ; j++) {
    for (int i = 0 ; i < token.length ; i++) {
      float theta = 360 * i / (token.length) ;
      float x = cX + radius * cos(radians(theta)) ;
      float y = cY + radius * sin(radians(theta)) ;
      currentFontSize = ++previousFontSize ;
      textSize(currentFontSize) ;
      colorMode(HSB, 360, 100, 100, 100) ;
      fill(theta, 100, 90, 80) ;
      ellipse(x, y, currentFontSize, currentFontSize) ;
      colorMode(RGB, 255) ;
      fill(255) ;
      text(token[i], x, y) ;
      radius += 8 ;
    }
    previousFontSize = currentFontSize ;
  }
}
