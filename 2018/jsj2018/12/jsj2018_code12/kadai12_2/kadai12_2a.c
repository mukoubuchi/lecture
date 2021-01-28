#include <stdio.h>
#include <math.h>

double alpha ;

double f(double x) {
   return x * x - alpha ;
}

double df(double x) {
   return 2 * x - 1 ;
}

int main() {
   double EPS = pow(10, -6) ;
   double x1, x2 = 1.0 ;

   scanf("%lf", &alpha) ;
   while (1) {
      x1 = x2 ;
      x2 = x1 - f(x1) / df(x1) ;
      if (fabs(x2 - x1) < EPS) break ;
   }
   printf("%fの平方根は%f\n", alpha, x2) ;

   return 0 ;
}
