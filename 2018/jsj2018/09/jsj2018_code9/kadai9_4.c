#include <stdio.h>

int main() {
   int i, j ;

   printf("   |") ;
   for (i = 0 ; i <= 9 ; i++) {
      printf("%3d|", i) ;
   }
   printf("\n") ;
   for (i = 0 ; i <= 10 ; i++) {
      printf("----") ;
   }
   printf("\n") ;
   for (i = 0 ; i <= 127 ; i++) {
      if (i == 0) {
         printf("%3d|", i) ;
      } else if (i % 10 == 0) {
         printf("\n%3d|", i) ;
      }
      if (33 <= i && i <= 126) {
         printf("  %c ", (char)i) ; /* (char) is optional */
      } else {
         printf("    ") ;
      }
   }
   printf("\n") ;

   return 0 ;
}
