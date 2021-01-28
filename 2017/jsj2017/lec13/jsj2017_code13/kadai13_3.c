/***********************************************************
 * kadai13_3.cと同じ場所にmultiRowData.txtがあることが前提 *
 ***********************************************************/

#include <stdio.h>

int main() {
   FILE *fpr, *fpw ;
   int v[5], i ;
   char fr[] = "multiRowData.txt", fw[] = "result.txt" ;
   double avg ;

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

   for (i = 0 ; i < 5 ; i++) {
      /* multiRowData.txtの内容をvへ1行読み込み */
      fscanf(fpr, "%d %d %d %d %d", &v[0], &v[1], &v[2], &v[3], &v[4]) ;
      /* 平均を計算 */
      avg = (double)(v[0] + v[1] + v[2] + v[3] + v[4]) / 5 ;
      /* result.txtに結果を書き込み */
      fprintf(fpw, "%.2f\n", avg) ;
   }

   /* ファイルクローズ */
   fclose(fpr) ;
   fclose(fpw) ;

   return 0 ;
}
