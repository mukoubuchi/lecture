#include <stdio.h>
#include <stdlib.h>

void rev(const char *s1, char *s2) {
   const char *p = s1 ;

   /* find the terminal of the string */
   while (*p++)
      ;
   /* back to the '\0' */
   --p ;
   /* copy in reverse order */
   while (p > s1)
      *s2++ = *--p ;
   *s2 = '\0' ;
}

int main() {
   char *s, *r, *tmp ;
   int size, i ;

   /* input the string of variable length */
   size = sizeof(char) ;
   s = malloc(size) ;
   if (s == NULL) exit(EXIT_FAILURE) ;
   for (i = 0 ; (*(s + i) = getchar()) != '\n' ; i++) {
      if ((tmp = realloc(s, size += sizeof(char))) == NULL) {
         free(s) ;
         exit(EXIT_FAILURE) ;
      }
      s = tmp ;
   }
   *(s + i) = '\0' ;

   /* make another string the element of which is in reverse order of the input string */
   r = malloc(size) ;
   if (r == NULL) exit(EXIT_FAILURE) ;
   rev(s, r) ;
   puts(r) ;

   /* release the allocated memories */
   free(s) ;
   free(r) ;

   return EXIT_SUCCESS ;
}
