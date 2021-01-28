/***************************************************
 * kadai13_1.cと同じ場所にdata.txtがあることが前提 *
 ***************************************************/

#include <stdio.h>

int main() {
   FILE *fp ;
   char f[] = "data.txt" ;

   /* 書き込みモードでファイルオープン&エラー処理 */
   fp = fopen(f, "w") ;
   if (fp == NULL) {
      printf("%sをオープンできません\n", f) ;
      return 1 ;
   }

   /* ファイルクローズ */
   fclose(fp) ;

   return 0 ;
}
