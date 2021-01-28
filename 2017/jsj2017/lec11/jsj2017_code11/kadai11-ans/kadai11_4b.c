#include <stdio.h>

int main() {
   char c ;
   int i ;

   printf("1文字入力してください\n") ;
   scanf("%c", &c) ;
   printf("文字%cのビットパタンは", c) ;
   for (i = 7 ; i >= 0 ; i--) {
      printf("%d", c >> i & 1) ;
   }
   printf("です\n") ;

   return 0 ;
}
