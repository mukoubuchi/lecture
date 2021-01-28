#include <stdio.h>

void printAvg(int a, int b, int c) {
   printf("%.1f\n", (a + b + c) / 3.0) ;
}

int main() {
   int a, b, c ;

   printf("1つ目の整数を入力してください\n") ;
   scanf("%d", &a) ;
   printf("2つ目の整数を入力してください\n") ;
   scanf("%d", &b) ;
   printf("3つ目の整数を入力してください\n") ;
   scanf("%d", &c) ;
   printAvg(a, b, c) ;

   return 0 ;
}
