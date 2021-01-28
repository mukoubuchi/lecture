#include <stdio.h>
#include <string.h>

int main() {
   char lst[10][20] = { "Hawaii", "Egypt", "France", "Russia", "Australia",
                         "Austria", "Germany", "Denmark", "Italy", "Dubai" } ;
   char str[10] ;
   int i ;

   printf("行きたい旅行先は?\n") ;
   scanf("%s", str) ; /* gets(str) ; */
   for (i = 0 ; i < 10 ; i++) {
      if (strcmp(lst[i], str) == 0) {
         printf("%sはリストの%d番目です\n", str, i + 1) ;
         break ;
      }
   }

   if (i == 10) {
      printf("%sはリストにありません\n", str) ;
   }

   return 0 ;
}
