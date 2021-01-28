#include <stdio.h>

void drawPT() {
   int a[5], i, j ;

   for (i = 0 ; i < 5 ; i++) {
      a[i] = 1 ;
      for (j = i - 1 ; j > 0 ; j--) {
         a[j] += a[j - 1] ;
      }
      /* insert the appropriate number of spaces in the each line */
      for (j = 0 ; j < 5 - i ; j++) {
         printf(" ") ;
      }
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
