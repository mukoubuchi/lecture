#include <stdio.h>
#include <string.h>

int main()
{
   char s[] = "Aoyama" ;
   char r[sizeof(s)] ;
   int i = 0 ;

   do {
      r[i] = s[sizeof(s) - 2 - i] ; /* s[strlen(s) - 1 - i] */
      i += 1 ;
   } while (s[i] != '\0') ; /* s[i] */
   r[i] = '\0' ;

   puts(r) ;

   return 0 ;
}
