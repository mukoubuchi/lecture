// boolean onSave = false ;
// int savedFrameNums = 0 ;

float rectSize = 50 ;
void setup() {
  size(500, 500) ;
  background(255) ;
  colorMode(HSB) ;
  noStroke() ;
}
void draw() {
  float rectX = int(mouseX / rectSize) * rectSize ;
  float rectY = int(mouseY / rectSize) * rectSize ;
  fill(255, 40) ;
  rect(0, 0, width, height) ;
  fill(frameCount % 256, 255, 255) ;
  rect(rectX, rectY, rectSize, rectSize) ;
  // if (onSave == true && ++savedFrameNums <= 300) saveFrames() ;
  // if (savedFrameNums == 300) println("saving the frames ended") ;
}

// void keyPressed() {
//   if (key == 's') {
//     onSave = true ; // start
//     println("saving the frames are started") ;
//     frameCount = 0 ;
//   } else if (key == 'e') {
//     onSave = false ; // ends
//     println("saving the frames ended") ;
//   }
// }

// void saveFrames() {
//   String home = System.getProperty("user.home") ;
//   String sep = File.separator ;
//   String sketchName = getClass().getName() ;
//   String ext = ".png" ;
//   String path = home + sep
//     + "Desktop" + sep
//     + "frames" + sep
//     + sketchName + sep
//     + "###" + ".png" ;
//   saveFrame(path) ;
// }
