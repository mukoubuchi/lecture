#include <stdio.h>

int main() {
   char c, d = 'a' - 'A' ;

   printf("1文字入力してください\n") ;
   c = getchar() ; /* scanf("%c", &c) ; */
   if ('a' <= c && c <= 'z') {
      putchar(c - d) ; /* printf("%c", c - d) ; */
   } else if ('A' <= c && c <= 'Z') {
      putchar(c + d) ; /* printf("%c", c + d) ; */
   }
   putchar('\n') ;

   return 0 ;
}
