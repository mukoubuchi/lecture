#include <stdio.h>

int main() {
   char c, d = '0' ; /* if using getchar(), declare as 'int c' */

   printf("1文字入力してください\n") ;
   scanf("%c", c) ; /* c = getchar() ; */
   if ('0' <= c && c <= '9') {
      printf("%d\n", c - d) ;
   }

   return 0 ;
}
