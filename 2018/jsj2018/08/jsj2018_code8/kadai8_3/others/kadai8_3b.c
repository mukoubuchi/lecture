#include <stdio.h>

int f(int a, int b) {
   int c ;

   while (a && b) {
      c = a % b ;
      a = b ;
      b = c ;
   }

   return a + b ;
}

int g(int a, int b) {
   return a == 0 || b == 0 ? a + b: g(b, a % b) ;
}

void gcd(int fp(int, int)) { /* int (*fp)(int, int) */
   int a, b ;

   printf("1つ目の整数を入力してください\n") ;
   scanf("%d", &a) ;
   printf("2つ目の整数を入力してください\n") ;
   scanf("%d", &b) ;
   printf("%dと%dの最大公約数は", a, b) ;
   printf("%d\nです\n", fp(a, b)) ; /* (*fp)(a, b) */
}

int main() {
   printf("--- 通常版 ---\n") ; gcd(f) ;
   printf("--- 再帰版 ---\n") ; gcd(g) ;

   return 0 ;
}
