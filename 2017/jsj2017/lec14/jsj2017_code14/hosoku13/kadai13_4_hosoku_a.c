/***********************************************************
 * kadai13_3b.cと同じ場所にmultiRowData.txtがあることが前提 *
 ***********************************************************/

#include <stdio.h>

int main() {
   FILE *fpr, *fpw ;
   int v[5], i, c ;
   char fr[] = "multiRowData.txt", fw[] = "result.txt" ;
   int avg = 0 ;

   /* 読み込みモードでファイルオープン&エラー処理 */
   fpr = fopen(fr, "r") ;
   if (fpr == NULL) {
      printf("%sをオープンできません\n", fr) ;
      return 1 ;
   }

   /* 書込みモードでファイルオープン&エラー処理 */
   fpw = fopen(fw, "w") ;
   if (fpw == NULL) {
      printf("%sをオープンできません\n", fw) ;
      return 1 ;
   }

   for (i = 0 ; fscanf(fpr, "%d", &v[i]) != EOF ; i++) {
      /* 平均を計算 */
      avg += v[i] ;
      c = fgetc(fpr) ;
      if (c == '\n') {
         /* result.txtに結果を書き込み */
         fprintf(fpw, "%.2f\n", avg / (double)(i + 1)) ;
         i = -1 ;
         avg = 0 ;
      }
   }

   /* ファイルクローズ */
   fclose(fpr) ;
   fclose(fpw) ;

   return 0 ;
}
