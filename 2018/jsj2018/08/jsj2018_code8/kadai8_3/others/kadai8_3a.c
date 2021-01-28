#include <stdio.h>

int gcdA(int a, int b) {
   int c ;

   while (a && b) {
      c = a % b ;
      a = b ;
      b = c ;
   }

   return a + b ;
}

int gcdB(int a, int b) {
   return a == 0 || b == 0 ? a + b : gcdB(b, a % b) ;
}

int main() {
   int a, b ;

   printf("1つ目の整数を入力してください\n") ;
   scanf("%d", &a) ;
   printf("2つ目の整数を入力してください\n") ;
   scanf("%d", &b) ;
   printf("%dと%dの最大公約数は", a, b) ;
   printf("%dです\n", gcdB(a, b)) ; /* gcdA(a, b) */

   return 0 ;
}
