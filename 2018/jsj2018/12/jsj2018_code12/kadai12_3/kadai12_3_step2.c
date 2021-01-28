#include <stdio.h>

void drawPT() {
   int a[5] ;
   int i, j ;

   for (i = 0 ; i < 5 ; i++) {
      a[i] = 1 ;
      /* set values of the each line in order */
      for (j = i - 1 ; j > 0 ; j--) {
         a[j] = a[j] + a[j - 1] ;
      }
      /* display values of the each line in order */
      for (j = 0 ; j <= i ; j++) {
         printf("%2d", a[j]) ;
      }
      printf("\n") ;
   }
}

int main() {
   drawPT() ;

   return 0 ;
}
