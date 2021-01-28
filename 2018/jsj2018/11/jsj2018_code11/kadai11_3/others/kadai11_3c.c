#include <stdio.h>
#include <stdlib.h>

int main() {
   FILE *fpr, *fpw ;
   int *v, *tmp, sz, i, j, avg = 0, maxElementNum = 0 ;
   char fr[] = "multiRowData.txt", fw[] = "result.txt", c ;

   sz = sizeof(int) ;
   if ((v = malloc(sz)) == NULL) {
      puts("メモリが確保できません") ;
      return 1 ;
   }
   printf("デフォルト要素数 == %d\n", sz / sizeof(int)) ;

   fpr = fopen(fr, "r") ;
   if (fpr == NULL) {
      printf("%sをオープンできません\n", fr) ;
      return 1 ;
   }

   fpw = fopen(fw, "w") ;
   if (fpw == NULL) {
      printf("%sをオープンできません\n", fw) ;
      return 1 ;
   }

   j = 0 ;
   for (i = 0 ; fscanf(fpr, "%d%c", &v[i], &c) != EOF ; i++) {
      /* 配列の要素数を拡張 */
      if (i + 1 >= sz / sizeof(int)) {
         if ((tmp = realloc(v, sz += sizeof(int))) == NULL) {
            puts("メモリが確保出来ません") ;
            free(v) ;
            return 1 ;
         }
         v = tmp ;
         printf("要素数拡張実行:(行, 番) == (%d, %d), 拡張後要素数 == %d\n", j, i, sz / sizeof(int)) ;
         if (sz > maxElementNum) {
            maxElementNum = sz ;
         }
      }
      /* 平均を計算 */
      avg += v[i] ;
      if (c == '\n') {
         /* 要素数切詰 */
         if (sz >= maxElementNum) {
            if ((tmp = realloc(v, sz -= sizeof(int))) == NULL) {
               puts("メモリが確保出来ません") ;
               free(v) ;
               return 1 ;
            }
            v = tmp ;
            printf("要素数切詰実行:(行, 番) == (%d, %d), 切詰後要素数 == %d\n", j, i, sz / sizeof(int)) ;
         }
         /* result.txtに結果を書き込み */
         fprintf(fpw, "%.2f\n", avg / (double)(i + 1)) ;
         avg = 0 ;
         i = -1 ;
         j++ ;
      }
   }

   fclose(fpr) ;
   fclose(fpw) ;

   free(v) ;

   return 0 ;
}
