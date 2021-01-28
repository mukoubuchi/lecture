#include <stdio.h>
#include <math.h>

double length(int h, int w) {
   return sqrt(h * h + w * w) ;
}

int main() {
   int h, w ; /* h: height, w: width */

   printf("長方形の高さを入力してください\n") ;
   scanf("%d", &h) ;
   printf("長方形の幅を入力してください\n") ;
   scanf("%d", &w) ;
   printf("対角線の長さは%.2fです\n", length(h, w)) ;

   return 0 ;
}
