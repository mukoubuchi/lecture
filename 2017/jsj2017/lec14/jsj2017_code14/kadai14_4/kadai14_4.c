#include <stdio.h>

void pas(int n) {
   int a[5], i, j ;

   for (i = 0 ; i < n ; i++) {
      a[i] = 1 ;
      for (j = i - 1 ; j > 0 ; j--) {
         a[j] += a[j - 1] ;
      }
      for (j = 0 ; j < n - i ; j++) {
         printf(" ") ;
      }
      for (j = 0 ; j <= i ; j++) {
         printf("%2d", a[j]) ;
      }
      printf("\n") ;
   }
}

int main() {
   int n ;

   printf("1以上5以下の整数を入力してください\n") ;
   scanf("%d", &n) ;
   pas(n) ;

   return 0 ;
}
