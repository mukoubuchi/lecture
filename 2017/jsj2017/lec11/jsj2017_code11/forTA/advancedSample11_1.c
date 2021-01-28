/*
 * 入力した文字のビットパタンを表示(関数版)
 */

#include <stdio.h>
#include <limits.h>

void showBit(char c) {
   int i ;

   printf("[%cの文字コード]\n10進数:\t%d\n 2進数:\t", c, c) ;
   /* 先頭ビットから順に表示 */
   for (i = CHAR_BIT - 1 ; i >= 0 ; i--) {
      printf("%d", c >> i & 1) ;
   }
   putchar('\n') ;
}

int main() {
   char c ;

   printf("1文字入力してください．\n") ;
   scanf("%c", &c) ;
   showBit(c) ;

   return 0 ;
}
