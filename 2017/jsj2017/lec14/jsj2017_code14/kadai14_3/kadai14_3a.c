#include <stdio.h>

int main() {
   char c, str1[100], str2[100] ;
   int i = 0, j = 0 ;

   printf("文字列を入力してください\n") ;
   gets(str1) ; /* scanf("%s", str1) ; は空白文字を読み込めない */
   for (i = 0, j = 0 ; ; i++) {
      c = str1[i] ;
      if (c != ' ') {
         str2[j] = c ;
         j++ ;
      }
      if (c == '\0') {
         break ;
      }
   }
   printf("%s\n", str2) ;

   return 0 ;
}
