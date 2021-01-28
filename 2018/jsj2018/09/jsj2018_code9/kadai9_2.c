#include <stdio.h>

int main() {
   char c ;

   printf("1文字入力してください\n") ;
   scanf("%c", &c) ;
   if ((char)48 <= c && c <= (char)57) { /* compare characters */
      printf("%d\n", (int)c - 48) ;
   }

   return 0 ;
}
