size(500, 500) ;
int length = width / 2 ; // height / 2
int centerX = width / 2, centerY = height / 2 ;
for (int i = 0 ; i < 5 ; i++) {
  // diamond
  quad(centerX, centerY - length,
       centerX + length, centerY,
       centerX, centerY + length,
       centerX - length, centerY) ;
  length /= 2 ;
  // square
  quad(centerX - length, centerY - length,
       centerX + length, centerY - length,
       centerX + length, centerY + length,
       centerX - length, centerY + length) ;
}
