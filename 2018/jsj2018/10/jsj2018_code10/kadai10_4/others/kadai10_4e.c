#include <stdio.h>
#include <string.h>

void rev(char s[]) {
   int i, j ;
   char w ;

   for (i = 0, j = strlen(s) ; i < --j ; i++) {
      w = s[i] ; s[i] = s[j] ; s[j] = w ;
   }
}

int main() {
   char s[sizeof("Aoyama")] ;

   gets(s) ;
   rev(s) ;
   puts(s) ;

   return 0 ;
}
