#include <stdio.h>

/* both a <= b and a >= b are possible */
int gcd(int a, int b) {
   int c ;

   while (b != 0) {
      c = a % b ;
      a = b ;
      b = c ;
   }

   return a ;
}

int main() {
   int a, b ;

   printf("1つ目の整数を入力してください\n") ;
   scanf("%d", &a) ;
   printf("2つ目の整数を入力してください\n") ;
   scanf("%d", &b) ;
   printf("%dと%dの最大公約数は", a, b) ;
   printf("%dです\n", gcd(a, b)) ;

   return 0 ;
}
