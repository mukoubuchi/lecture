#include <stdio.h>

int main() {
   char str[11] ; /* number of elements must include the null character */

   while (gets(str) != NULL) {
      puts(str) ; /* printf("%s\n", str) ; */
   }

   return 0 ;
}
