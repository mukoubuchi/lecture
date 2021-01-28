#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
   int no ; /* 推測値 */
   int ans ; /* 正解値 */
   int cnt = 0 ; /* 入力回数 */

   srand((unsigned) time(NULL)) ; /* 乱数の種を初期化 */
   ans = rand() % 100 + 1 ; /* [1, 100] */
   printf("1〜100の整数を当ててください\n") ;
   do {
      cnt++ ; /* 入力回数を1増やす */
      scanf("%d", &no) ;
      if (no > ans) {
         puts("もっと小さいよ!") ;
      } else if (no < ans) {
         puts("もっと大きいよ!") ;
      }
   } while (no != ans) ; /* 当たるまで繰り返す */

   puts("正解!") ;
   printf("%d回で当たりました\n", cnt) ;

   return 0 ;
}
