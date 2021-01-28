#include <stdio.h>

#define N 3 /* N >= 3 */

void bubbleSort(int a[], int n) {
   int i, j, tmp ;

   for (i = 0 ; i < n - 1 ; i++)
      for (j = n - 1 ; j > i ; j--)
         if (a[j - 1] > a[j]) {
            tmp = a[j] ; a[j] = a[j - 1] ; a[j - 1] = tmp ;
         }
}

int main() {
   FILE *fpr, *fpw ;
   int v[N] = { 0 } ; /* the initialization is optional */
   double median ;
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
      bubbleSort(v, N) ;
      if (N % 2) median = v[N / 2] ;
      else median = (v[N / 2 - 1] + v[N / 2]) / 2.0 ; /* suppose N >= 3 */
      fprintf(fpw, "% -4d % -4d % -4d: % -5.1f\n", v[0], v[1], v[2], median) ;
   }

   fclose(fpr) ;
   fclose(fpw) ;

   return 0 ;
}
