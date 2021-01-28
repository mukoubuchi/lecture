#include <stdio.h>
#include <stdlib.h>

void rev(const char *s1, char *s2)
{
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

int main()
{
   const char s[] = "Aoyama" ;
   char *r = malloc(sizeof(s)) ; /* (char *)malloc(sizeof(s)) ; */

   if (r == NULL) exit(EXIT_FAILURE) ;
   else {
      rev(s, r) ;
      puts(r) ;
      free(r) ;
   }

   return EXIT_SUCCESS ;
}
