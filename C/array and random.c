#include <stdio.h>
#include <time.h>
#include <math.h>
#include <stdlib.h>
int main(void)
{
int N=100;
int i;
int a[N];//создали массив из 100 элементов
srand(time(0));//включаем генератор случайных чисел
for (i=0; i <=N; i++) {
a[i] = 0+ rand() %100;//заполняем его  случайными числами
printf("a[%d]=%d\n", i, a[i]);
}
return 0;
}

