/*
 * 127より大きいint型オブジェクトをchar型オブジェクト
 * として受け取る関数へ渡す場合，暗黙の型変換が行われる
 * ため，明示的型変換(キャスト)した場合と同様の結果になる
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
   int c = 305 ; /* 0...100110001(2) */

   showBit(c) ;  /* 0...001100100(2) */

   return 0 ;
}
