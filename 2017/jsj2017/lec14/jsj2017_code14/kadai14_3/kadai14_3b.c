#include <stdio.h>

int main() {
   char c, str[100] ;
   int i, j ;

   printf("文字列を入力してください\n") ;
   gets(str) ;
   i = j = 0 ;
   do {
      c = str[i++] ;
      if (c != ' ') {
         str[j++] = c ;
      }
   } while (c) ;
   puts(str) ;

   return 0 ;
}
