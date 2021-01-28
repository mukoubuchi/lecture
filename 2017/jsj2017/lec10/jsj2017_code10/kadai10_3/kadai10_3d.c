#include <stdio.h>

typedef enum { Normal, Recursive, Invalid } Gcd ;

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

Gcd select() {
   int tmp ;

   do {
      printf("[0] Normal [1] Recursive [2] 終了: ") ;
      scanf("%d", &tmp) ;
   } while (tmp < Normal || tmp > Invalid) ;

   return tmp ;
}

void gcd(Gcd selected) {
   typedef int(*Fp)(int, int) ;
   Fp afp[] = { f, g } ; /* array of the function pointers */
   int a, b ;

   printf("1つ目の整数を入力してください\n") ;
   scanf("%d", &a) ;
   printf("2つ目の整数を入力してください\n") ;
   scanf("%d", &b) ;
   printf("%dと%dの最大公約数は", a, b) ;
   printf("%d\nです\n", afp[selected](a, b)) ;
}

int main() {
   Gcd selected ;

   do {
      selected = select() ;
      if (selected >= Normal && selected < Invalid)
         gcd(selected) ;
   } while (selected != Invalid) ;

   return 0 ;
}
