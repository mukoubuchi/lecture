#include <stdio.h>

void power(int a, int *aa, int *aaa)
{
   *aa = a * a ;
   *aaa = a * a * a ;
}

int main()
{
   int a, aa, aaa ;

   scanf("%d", &a) ;
   power(a, &aa, &aaa) ;
   printf("入力値: %d, 2乗値: %d, 3乗値: %d\n", a, aa, aaa) ;

   return 0 ;
}
