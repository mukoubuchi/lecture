#include <stdio.h>

int main() {
   int c, i ; /* don't declare as "char c" */

   printf("1文字入力してください\n") ;
   c = getchar() ; /* return value type of getchar() is not 'char' but 'int' */
   printf("文字%cのビットパタンは", c) ;
   for (i = 7 ; i >= 0 ; i--) {
      if (c & 1 << i) { /* if ((c & 1 << i) != 0) */
         putchar('1') ;
      } else {
         putchar('0') ;
      }
      /* putchar(c & 1 << i ? '1': '0') ; */
   }
   printf("です\n") ;

   return 0 ;
}
