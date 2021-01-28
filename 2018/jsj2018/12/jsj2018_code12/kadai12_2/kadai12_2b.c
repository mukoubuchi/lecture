#include <stdio.h>

int main() {
   const double EPS = 1e-6 ;
   double x1, x2 = 1.0, alpha ;

   scanf("%lf", &alpha) ;
   while (1) {
      x1 = x2 ;
      x2 = (x1 + alpha / x1) / 2 ;
      if (x1 < x2) {
         if (x2 - x1 < EPS) break ;
      } else {
         if (x1 - x2 < EPS) break ;
      }
   }
   printf("%gの平方根は%f\n", alpha, x2) ;

   return 0 ;
}
