#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double myRand() {
   return rand() / ((double) RAND_MAX + 1) ;
}

int main()
{
   int n, m = 0, i ;
   double x, y ;

   srand((unsigned) time(NULL)) ;
   printf("n = ") ;
   scanf("%d", &n) ;
   for (i = 0 ; i < n ; i++) {
      x = myRand() ;
      y = myRand() ;
      if (x * x + y * y <= 1.0) {
         m++ ;
      }
   }
   printf("pi = %.5f\n", 4.0 * m / n) ;

   return 0 ;
}
