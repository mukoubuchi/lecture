#include <stdio.h>

int main() {
   int c ;

   printf("1文字入力してください\n") ;
   c = getchar() ;
   if (97 <= c && c <= 122 || 65 <= c && c <= 90) { /* compare character codes */
      printf("%d", c) ;
   } else {
      printf("アルファベットではない文字が入力されました") ;
   }
   putchar('\n') ; /* printf("\n") ; or putchar(10) ; */

   return 0 ;
}
