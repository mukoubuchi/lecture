#include <stdio.h>
#include <math.h>
#include <float.h>

#define MAX 99
#define EPS FLT_EPSILON

double alpha ;

double f(double x) {
   return x * x - alpha ;
}

double df(double x) {
   return (f(x + EPS) - f(x)) / EPS ;
}

int main() {
   int i ;
   double x, x_prev ;

   printf("epsilon = %.10g\n", EPS) ;
   printf("x00 = ") ; scanf("%lf", &x) ;
   for (; ;) {
      printf("alpha = ") ; scanf("%lf", &alpha) ;
      if (alpha < 0) continue ;
      else break ;
   }

   for (i = 1 ; i <= MAX ; i++) {
      x_prev = x ;
      x = x - f(x) / df(x) ;

      printf("%02d: x%02d = %#.16g\t", i, i, x) ;
      printf(" | x%02d - x%02d | = %#.16g", i, i - 1, fabs(x - x_prev)) ;

      if (fabs(x - x_prev) < EPS) {
         printf(" < epsilon\n") ;
         printf("%#.16g, %#.16g\n", fabs(x), -fabs(x)) ;
         return 0 ;
      }
      putchar('\n') ;
   }

   printf("x00 was not converged in %d times iteration\n", MAX) ;

   return 0 ;
}
