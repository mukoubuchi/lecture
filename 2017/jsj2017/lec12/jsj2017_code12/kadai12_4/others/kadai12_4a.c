#include <stdio.h>
#include <string.h>

int main()
{
   char s[] = "Aoyama" ;

   int i ;
   char tmp ;

   for (i = 0 ; i < strlen(s) / 2 ; i++) {
      tmp = s[i] ;
      s[i] = s[strlen(s) - 1 - i] ; /* s[i] = s[sizeof(s) - 2 - i] ; */
      s[strlen(s) - 1 - i] = tmp ; /* s[sizeof(s) - 2 - i] = tmp ; */
   }

   puts(s) ;

   return 0 ;
}
