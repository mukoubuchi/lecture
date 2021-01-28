#include <stdio.h>

int main() {
   int c ;

   c = getchar() ; /* for the 1st loop */
   do {
      if ('a' <= c && c <= 'z' || 'A' <= c && c <= 'Z'
                               || c == ' '
                               || c == '\n') {
         putchar(c) ;
      } else {
         putchar('#') ;
      }
   } while ((c = getchar()) != EOF) ;

   return 0 ;
}
