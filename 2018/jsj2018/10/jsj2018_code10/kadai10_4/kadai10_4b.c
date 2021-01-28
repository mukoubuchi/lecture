#include <stdio.h>
#include <string.h>

int main() {
   char str[128], tmp ;
   int i, j ;

   puts("文字列を入力してください") ;
   gets(str) ;
   for (i = 0, j = strlen(str) ; i < --j ; i++) {
      tmp = str[i] ;
      str[i] = str[j] ;
      str[j] = tmp ;
   }
   puts(str) ;

   return 0 ;
}
