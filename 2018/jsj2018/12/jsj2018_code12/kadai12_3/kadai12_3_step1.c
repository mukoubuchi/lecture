#include <stdio.h>

void drawPT() {
   int l1[1], l2[2], l3[3], l4[4], l5[5] ; /* the lines */
   int i ;

   /* set values of the each line in order */
   l1[0] = 1 ;
   l2[0] = l2[1] = 1 ;
   l3[0] = l3[2] = 1 ;
   for (i = 1 ; i > 0 ; i--) {
      l3[i] = l2[i] + l2[i - 1] ;
   }
   l4[0] = l4[3] = 1 ;
   for (i = 2 ; i > 0 ; i--) {
      l4[i] = l3[i] + l3[i - 1] ;
   }
   l5[0] = l5[4] = 1 ;
   for (i = 3 ; i > 0 ; i--) {
      l5[i] = l4[i] + l4[i - 1] ;
   }
   /* display values of the each line in order */
   for (i = 0 ; i < 1 ; i++) {
      printf("%2d", l1[i]) ;
   }
   printf("\n") ;
   for (i = 0 ; i < 2 ; i++) {
      printf("%2d", l2[i]) ;
   }
   printf("\n") ;
   for (i = 0 ; i < 3 ; i++) {
      printf("%2d", l3[i]) ;
   }
   printf("\n") ;
   for (i = 0 ; i < 4 ; i++) {
      printf("%2d", l4[i]) ;
   }
   printf("\n") ;
   for (i = 0 ; i < 5 ; i++) {
      printf("%2d", l5[i]) ;
   }
   printf("\n") ;
}

int main() {
   drawPT() ;

   return 0 ;
}
