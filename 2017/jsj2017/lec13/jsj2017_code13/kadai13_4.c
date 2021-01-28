#include <stdio.h>

int main() {
   FILE *fpr, *fpw ;
   char str[256], fr[] = "kadai13_4.c", fw[] = "copy13_4.txt" ;
   int i ; /* used as the line number as well as the loop variable */

   if ((fpr = fopen(fr, "r")) == NULL) {
      printf("%sをオープンできません\n", fr) ;
      return 1 ;
   }
   if ((fpw = fopen(fw, "w")) == NULL) {
      printf("%sをオープンできません\n", fw) ;
      return 1 ;
   }

   /* the initial value of i should start from 1 to match the line numbers */
   for (i = 1 ; fgets(str, 256, fpr) != NULL ; i++) {
      /* display on the monitor */
      fprintf(stdout, "%s", str) ; /* fputs(str, stdout) ; or printf(str) ; */
      /* write in the output file */
      fprintf(fpw, "%2d: ", i) ;
      fprintf(fpw, "%s", str) ; /* fputs(str, fpw) ; */
   }

   fclose(fpr) ;
   fclose(fpw) ;

   return 0 ;
}
