#include <stdio.h>

int main() {
   char str[7] ;
   char tmp ;
   int i ;

   printf("文字列を入力してください\n") ;
   scanf("%s", str) ; /* gets(str) ; */
   for (i = 0 ; i < 7 / 2 ; i++) {
      tmp = str[i] ;
      str[i] = str[5 - i] ;
      str[5 - i] = tmp ;
   }
   printf("%s\n", str) ; /* puts(str) */

   return 0 ;
}
