#include <stdio.h>

#define N 100

void bubbleSortWithStartingIndex(int a[], int n, int s) {
   int i, j, tmp ;

   for (i = s ; i < n - 1 ; i++)
      for (j = n - 1 ; j > i ; j--)
         if (a[j - 1] > a[j]) {
            tmp = a[j] ; a[j] = a[j - 1] ; a[j - 1] = tmp ;
         }
}

int main() {
   FILE *fpr, *fpw ;
   int v[N] = { 0 }, i, j ; /* the zero initialization must be done */
   double median ;
   char fr[] = "variable-lengthMultiRowData.csv", fw[] = "result.txt", c ;

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

   for (i = 1 ; fscanf(fpr, "%d%c", &v[i], &c) != EOF ; i++) {
      if (c == '\n') {
         bubbleSortWithStartingIndex(v, i + 1, 1) ;
         if (i % 2) median = v[(i + 1) / 2] ;
         else median = (v[i / 2] + v[i / 2 + 1]) / 2.0 ;
         for (j = 1 ; j <= i ; j++) {
            fprintf(fpw, "%+-7d", v[j]) ;
            v[j] = 0 ;
         }
         fprintf(fpw, "=====> %+-5.1f\n", median) ;
         i = 0 ;
      }
   }

   fclose(fpr) ;
   fclose(fpw) ;

   return 0 ;
}
