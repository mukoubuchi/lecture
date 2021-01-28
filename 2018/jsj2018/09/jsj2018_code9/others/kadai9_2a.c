#include <stdio.h>

int main() {
   char c, d = '0' ;

   printf("1文字入力してください\n") ;
   scanf("%c", &c) ;
   if ('0' <= c && c <= '9') {
      printf("%d\n", c - d) ;
   }

   return 0 ;
}
