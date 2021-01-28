#include <stdio.h>
#include <string.h>

int main() {
   char cStr[101] = "" ; /* for the concatenated string */
   char iStr[21] ; /* for each of the input string */

   while (gets(iStr) != NULL) {
      strcat(cStr, iStr) ;
      puts(cStr) ;
      /* puts(strcat(cStr, iStr)) ; */
   }

   return 0 ;
}
