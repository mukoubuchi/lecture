#include <stdio.h>
#include <string.h>

int main() {
   char cStr[100] = "" ; /* concatenated string */
   char iStr[20] ; /* for each input string */

   while (gets(iStr) != NULL) {
      strcat(cStr, iStr) ;
      puts(cStr) ;
      /* puts(strcat(cStr, iStr)) ; */
   }

   return 0 ;
}
