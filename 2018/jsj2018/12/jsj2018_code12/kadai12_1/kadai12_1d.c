#include <stdio.h>
/* #include <assert.h> */

int main() {
   FILE *fpr, *fpw ;
   int v[3] = { 0 }, median, tmp ; /* the initialization is optional */
   char fr[] = "multiRowData.csv", fw[] = "result.txt" ;

   fpr = fopen(fr, "r") ;
   if (fpr == NULL) {
      printf("%sをオープンできません\n", fr) ;
      return 1 ;
   }

   fpw = fopen(fw, "w") ;
   if (fpw == NULL) {
      printf("%sをオープンできません\n", fw) ;
      return 1 ;
   }

   while (fscanf(fpr, "%d,%d,%d", &v[0], &v[1], &v[2]) != EOF) {
      if (v[0] < v[1]) {
         tmp = v[0] ; v[0] = v[1] ; v[1] = tmp ;
      }
      /* assert(v[0] >= v[1]) ; */
      if (v[1] > v[2]) median = v[1] ;
      else if (v[0] > v[2]) median = v[2] ;
      else median = v[0] ;
      fprintf(fpw, "%d\n", median) ;
   }

   fclose(fpr) ;
   fclose(fpw) ;

   return 0 ;
}
