#include <stdio.h>

double avg(int a, int b, int c) {
   return (a + b + c) / 3.0 ;
}

int main() {
   int a, b, c ;

   printf("1つ目の整数を入力してください\n") ;
   scanf("%d", &a) ;
   printf("2つ目の整数を入力してください\n") ;
   scanf("%d", &b) ;
   printf("3つ目の整数を入力してください\n") ;
   scanf("%d", &c) ;
   printf("平均値は%.2fです\n", avg(a, b, c)) ;

   return 0 ;
}
