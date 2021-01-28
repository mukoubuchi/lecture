#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <math.h>

typedef int LIST_TYPE ;
struct cell {
   LIST_TYPE value ;
   struct cell *next ;
} ;
typedef struct cell LIST_CELL ;

LIST_CELL gFront = { - 1, NULL } ;

void error(char *msg) {
   fprintf(stderr, msg) ;
   exit(1) ;
}

void printList(int tabs) {
   LIST_CELL *p ;
   int i ;

   for (i = 0 ; i < tabs ; i++)
      printf("\t") ;
   printf("LIST[") ;
   for (p = gFront.next ; p != NULL ; p = p->next)
      printf("%3d ", p->value) ;
   printf("]\n") ;
}

LIST_CELL *insert(LIST_CELL *pre, int val) {
   LIST_CELL *new ;

   if (pre == NULL)
      error("insert: 引数 pre が NULL です\n") ;
   if ((new = (LIST_CELL *)malloc(sizeof(LIST_CELL))) == NULL)
      error("insert: メモリが足りません\n") ;

   new->value = val ;
   new->next = pre->next ;
   pre->next = new ;

   return new ;
}

LIST_TYPE delete(LIST_CELL *pre) {
   LIST_CELL *del ;
   LIST_TYPE tmp ;

   if (pre == NULL)
      error("delete: 引数 pre が NULL です\n") ;
   if (pre->next == NULL)
      error("delete: 引数 pre に末尾のセルを指定できません\n") ;

   del = pre->next ;
   tmp = del->value ;
   pre->next = del->next ;
   free(del) ;

   return tmp ;
}

int isListEmpty() {
   return gFront.next == NULL ;
}

int isPrime(int num) {
   int i ;

   if (num == 2)
      return 1 ;
   if (num < 2 || num % 2 == 0)
      return 0 ;
   for (i = 3 ; i <= sqrt((double)num) ; i += 2)
      if (num % i == 0) return 0 ;

   return 1 ;
}

int main() {
   FILE *fpr, *fpw ;
   int i, avg = 0 ;
   char fr[] = "multiRowData.txt", fw[] = "result.txt", c ;
   LIST_TYPE x ;
   LIST_CELL *p, *pre ;

   fpr = fopen(fr, "r") ;
   if (fpr == NULL) {
      printf("%sをオープンできません\n", fr) ;
      exit(1) ;
   }

   fpw = fopen(fw, "w") ;
   if (fpw == NULL) {
      printf("%sをオープンできません\n", fw) ;
      exit(1) ;
   }

   p = &gFront ;
   while (fscanf(fpr, "%d%c", &x, &c) != EOF) {
      if (isPrime(x) && isspace(c)) {
         p = insert(p, x) ;
         printf("insert(\t%p, %5d)", p, x) ;
         printList(1) ;
         if (c == '\n') {
            for (i = 0, p = gFront.next ; p->next != NULL ; p = p->next, i++)
               avg += p->value ;
            avg += p->value ;
            fprintf(fpw, "%.2f\n", avg / (double)(i + 1)) ;
            avg = 0 ;
            while (!isListEmpty()) {
               pre = &gFront ;
               for (p = gFront.next ; p->next != NULL ; p = p->next)
                  pre = p ;
               x = delete(pre) ;
               printf("delete(\t%p):%4d", pre, x) ;
               printList(1) ;
            }
            p = &gFront ;
         }
      } else {
         printf("読み込みファイルのデータフォーマットに誤りがあります\n") ;
         exit(1) ;
      }
   }

   fclose(fpr) ;
   fclose(fpw) ;

   return 0 ;
}
