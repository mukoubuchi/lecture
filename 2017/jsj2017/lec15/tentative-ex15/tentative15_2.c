#include <stdio.h>

void rev(char *str) {
   char tmp ;
   int i ;

   for (i = 0 ; i < 7 / 2 ; i++) {
      tmp = *(str + i) ;
      *(str + i) = *(str + 5 - i) ;
      *(str + 5 - i) = tmp ;
   }
}

int main() {
   char str[7] ;

   printf("文字列を入力してください\n") ;
   gets(str) ;
   rev(str) ;
   puts(str) ;

   return 0 ;
}
