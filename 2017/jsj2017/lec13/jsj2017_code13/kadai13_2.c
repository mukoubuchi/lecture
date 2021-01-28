#include <stdio.h>

int main() {
   FILE *fp ;
   int v[3] ;
   char f[] = "data.txt" ;

   /* 読み込みモードでファイルオープン&エラー処理*/
   fp = fopen(f, "r") ;
   if (fp == NULL) {
      printf("%sをオープンできません¥n", f) ;
      return 1 ;
   }

   /* data.txtからvに1行読み込み*/
   fscanf(fp, "%d %d %d", &v[0], &v[1], &v[2]) ;
   printf("%d %d %d\n", v[0], v[1], v[2]) ;

   /* ファイルクローズ*/
   fclose(fp) ;

   return 0 ;
}
