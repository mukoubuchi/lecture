#include <stdio.h>
#include <math.h>
#include <float.h>

#define MAX 99
#define EPS FLT_EPSILON
#define ABS_ERROR

#if defined(ABS_ERROR)
   #define REFERENCE_VALUE(x, y) fabs(x - y)
#elif defined(REL_ERROR)
   #define REFERENCE_VALUE(x, y) fabs(x / y - 1)
#elif defined(RESIDUAL)
   #define REFERENCE_VALUE(x, y) fabs(f(x))
#elif defined(REL_RESIDUAL)
   #define REFERENCE_VALUE(x, y) fabs(f(x) / fabs(x))
#endif

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
   do {
      printf("alpha = ") ; scanf("%lf", &alpha) ;
   } while (alpha < 0) ;

   for (i = 1 ; i <= MAX ; i++) {
      x_prev = x ;
      x = x - f(x) / df(x) ;

      printf("%02d: x%02d = %#.16g\t", i, i, x) ;
      printf(" the reference value = %#.16g", REFERENCE_VALUE(x, x_prev)) ;

      if (REFERENCE_VALUE(x, x_prev) < EPS) {
         printf(" < epsilon\n") ;
         printf("%#.16g, %#.16g\n", fabs(x), -fabs(x)) ;
         return 0 ;
      }
      putchar('\n') ;
   }

   printf("x00 was not converged in %d times iteration\n", MAX) ;

   return 0 ;
}
